import 'package:photo_finder/src/actions/index.dart';
import 'package:photo_finder/src/data/auth_api.dart';
import 'package:photo_finder/src/data/photos_api.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({required PhotosApi photosApi, required AuthApi authApi})
      : _photosApi = photosApi,
        _authApi = authApi;

  final PhotosApi _photosApi;
  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, InitializeAppStart>(_initializeApp),
      TypedEpic<AppState, GetPhotosStart>(_getPhotos),
      TypedEpic<AppState, RegisterStart>(_register),
      TypedEpic<AppState, SignOutStart>(_signOut),
    ]);
  }

  Stream<AppAction> _getPhotos(Stream<GetPhotosStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetPhotosStart action) => _photosApi.getPhotos(store.state.page, store.state.query))
        .map((List<Photo> photos) => GetPhotos.successful(photos))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPhotos.error(error, stackTrace));
  }

  Stream<AppAction> _register(Stream<RegisterStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((RegisterStart action) => Stream<void>.value(null)
        .asyncMap((_) => _authApi.registerOrLogin(action.email, action.password))
        .map((AppUser user) => Register.successful(user))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => Register.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _initializeApp(Stream<InitializeAppStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((InitializeAppStart action) => _authApi.getCurrentUser())
        .map((AppUser? user) => InitializeApp.successful(user))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => InitializeApp.error(error, stackTrace));
  }

  Stream<AppAction> _signOut(Stream<SignOutStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((SignOutStart action) => _authApi.signOut())
        .map((_) => const SignOut.successful())
        .onErrorReturnWith((Object error, StackTrace stackTrace) => SignOut.error(error, stackTrace));
  }
}
