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
      TypedEpic<AppState, UpdateProfilePhotoStart>(_updateProfilePhoto),
      TypedEpic<AppState, CreateCommentStart>(_createComment),
      TypedEpic<AppState, GetCommentsStart>(_getComments),
      TypedEpic<AppState, GetUsersStart>(_getUsers),
    ]);
  }

  Stream<AppAction> _getPhotos(Stream<GetPhotosStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetPhotosStart action) => Stream<void>.value(null)
            .asyncMap((_) => _photosApi.getPhotos(store.state.page, store.state.query))
            .map((List<Photo> photos) => GetPhotos.successful(photos))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPhotos.error(error, stackTrace)));
  }

  Stream<AppAction> _register(Stream<RegisterStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((RegisterStart action) => Stream<void>.value(null)
            .asyncMap((_) => _authApi.registerOrLogin(action.email, action.password))
            .map((AppUser user) => Register.successful(user))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => Register.error(error, stackTrace))
            .doOnData(action.result));
  }

  Stream<AppAction> _initializeApp(Stream<InitializeAppStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeAppStart action) => Stream<void>.value(null)
            .asyncMap((_) => _authApi.getCurrentUser())
            .map((AppUser? user) => InitializeApp.successful(user))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => InitializeApp.error(error, stackTrace)));
  }

  Stream<AppAction> _signOut(Stream<SignOutStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignOutStart action) => Stream<void>.value(null)
            .asyncMap((_) => _authApi.signOut())
            .map((_) => const SignOut.successful())
            .onErrorReturnWith((Object error, StackTrace stackTrace) => SignOut.error(error, stackTrace)));
  }

  Stream<AppAction> _updateProfilePhoto(Stream<UpdateProfilePhotoStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((UpdateProfilePhotoStart action) => Stream<void>.value(null)
            .asyncMap((_) => _authApi.updateProfilePhoto(store.state.user!.uid, action.path))
            .map((String photoUrl) => UpdateProfilePhoto.successful(photoUrl))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateProfilePhoto.error(error, stackTrace)));
  }

  Stream<AppAction> _createComment(Stream<CreateCommentStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateCommentStart action) => Stream<void>.value(null)
            .asyncMap((_) {
              return _photosApi.createComment(store.state.user!.uid, store.state.selectedPhoto!, action.text);
            })
            .map((_) => const CreateComment.successful())
            .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateComment.error(error, stackTrace)));
  }

  Stream<AppAction> _getComments(Stream<GetCommentsStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetCommentsStart action) => Stream<void>.value(null)
                .asyncMap((_) => _photosApi.getComments(store.state.selectedPhoto!))
                .expand((List<Comment> comments) {
              return <AppAction>[
                GetComments.successful(comments),
                GetUsers(comments.map((Comment comment) => comment.uid).toSet().toList())
              ];
            }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetComments.error(error, stackTrace)));
  }

  Stream<AppAction> _getUsers(Stream<GetUsersStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetUsersStart action) => Stream<void>.value(null)
            .asyncMap((_) => _authApi.getUsers(action.uids))
            .map((List<AppUser> users) => GetUsers.successful(users))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => GetUsers.error(error, stackTrace)));
  }
}
