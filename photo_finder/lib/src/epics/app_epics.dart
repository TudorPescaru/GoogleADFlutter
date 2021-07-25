import 'package:photo_finder/src/actions/index.dart';
import 'package:photo_finder/src/data/photos_api.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({required PhotosApi photosApi}) : _photosApi = photosApi;

  final PhotosApi _photosApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetPhotosStart>(_getPhotos),
    ]);
  }

  Stream<AppAction> _getPhotos(Stream<GetPhotosStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetPhotosStart action) => _photosApi.getPhotos(store.state.page, store.state.query))
        .map((List<Photo> photos) => GetPhotos.successful(photos))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPhotos.error(error, stackTrace));
  }
}
