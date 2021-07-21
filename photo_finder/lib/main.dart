import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:photo_finder/src/actions/index.dart';
import 'package:photo_finder/src/data/photos_api.dart';
import 'package:photo_finder/src/epics/app_epics.dart';
import 'package:photo_finder/src/middleware/middleware.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:photo_finder/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:photo_finder/src/presentation/home_page.dart';
import 'package:redux_epics/redux_epics.dart';

void main() {
  const String apiUrl = 'https://api.unsplash.com';
  const String apiKey = '-WGV7uN-91UrdZqu96S1oa3yBSl8GLiKG_rnbb1U2lw';
  final Client client = Client();
  final PhotosApi photosApi = PhotosApi(apiUrl: apiUrl, apiKey: apiKey, client: client);
  const AppMiddleware appMiddleware = AppMiddleware();
  final AppEpics appEpics = AppEpics(photosApi: photosApi);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
          EpicMiddleware<AppState>(appEpics.epics),
        ] +
        appMiddleware.middleware,
  );

  store.dispatch(const GetPhotos());

  runApp(PhotoFinder(store: store));
}

class PhotoFinder extends StatelessWidget {
  const PhotoFinder({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          theme: ThemeData.light(),
          home: const HomePage(),
        ));
  }
}
