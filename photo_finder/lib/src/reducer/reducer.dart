import 'package:photo_finder/src/actions/index.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  (AppState state, dynamic action) {
    print(action);
    return state;
  },
  TypedReducer<AppState, InitializeAppSuccessful>(_initializeAppSuccessful),
  TypedReducer<AppState, GetPhotosStart>(_getPhotos),
  TypedReducer<AppState, GetPhotosSuccessful>(_getPhotosSuccessful),
  TypedReducer<AppState, GetPhotosError>(_getPhotosError),
  TypedReducer<AppState, SetSelectedPhoto>(_setSelectedPhoto),
  TypedReducer<AppState, SearchPhotos>(_searchPhotos),
  TypedReducer<AppState, RegisterSuccessful>(_registerSuccessful),
  TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful),
]);

AppState _getPhotos(AppState state, GetPhotosStart action) {
  return state.rebuild((AppStateBuilder b) {
    b.isLoading = true;
  });
}

AppState _getPhotosSuccessful(AppState state, GetPhotosSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..photos.addAll(action.photos)
      ..isLoading = false
      ..page = state.page + 1;
  });
}

AppState _getPhotosError(AppState state, GetPhotosError action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..isLoading = false
      ..error = action.error.toString();
  });
}

AppState _setSelectedPhoto(AppState state, SetSelectedPhoto action) {
  return state.rebuild((AppStateBuilder b) {
    b.selectedPhoto = action.photoId;
  });
}

AppState _searchPhotos(AppState state, SearchPhotos action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..isLoading = false
      ..page = 1
      ..photos.clear()
      ..query = action.query;
  });
}

AppState _registerSuccessful(AppState state, RegisterSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.user = action.user.toBuilder();
  });
}

AppState _initializeAppSuccessful(AppState state, InitializeAppSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.user = action.user?.toBuilder();
  });
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.user = null;
  });
}
