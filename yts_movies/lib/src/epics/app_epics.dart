import 'package:redux_epics/redux_epics.dart';
import 'package:yts_movies/src/actions/get_movies.dart';
import 'package:yts_movies/src/data/movies_api.dart';
import 'package:yts_movies/src/models/app_state.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yts_movies/src/models/movie.dart';

class AppEpics {
  const AppEpics({required MoviesApi moviesApi}) : _moviesApi = moviesApi;

  final MoviesApi _moviesApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetMovies>(_getMovies),
    ]);
  }

  Stream<Object> _getMovies(Stream<GetMovies> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetMovies action) => _moviesApi.getMovies(store.state.page))
        .map<Object>((List<Movie> movies) => GetMoviesSuccessful(movies))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetMoviesError(error));
  }
}
