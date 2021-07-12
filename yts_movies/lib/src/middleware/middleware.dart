import 'package:yts_movies/src/actions/set_selected_movie.dart';
import 'package:yts_movies/src/models/app_state.dart';
import 'package:redux/redux.dart';

class AppMiddleware {
  const AppMiddleware();

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, SetSelectedMovie>(_setSelectedMovie),
    ];
  }

  Future<void> _setSelectedMovie(Store<AppState> store, SetSelectedMovie action, NextDispatcher next) async {
    next(action);
  }
}
