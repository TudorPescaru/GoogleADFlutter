import 'package:photo_finder/src/actions/index.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:redux/redux.dart';

class AppMiddleware {
  const AppMiddleware();

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, SetSelectedPhoto>(_setSelectedPhoto),
      TypedMiddleware<AppState, SearchPhotos>(_searchPhotos),
    ];
  }

  Future<void> _setSelectedPhoto(Store<AppState> store, SetSelectedPhoto action, NextDispatcher next) async {
    next(action);
  }

  Future<void> _searchPhotos(Store<AppState> store, SearchPhotos action, NextDispatcher next) async {
    next(action);
  }
}
