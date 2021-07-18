import 'package:yts_movies/src/actions/index.dart';
import 'package:yts_movies/src/models/index.dart';
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
