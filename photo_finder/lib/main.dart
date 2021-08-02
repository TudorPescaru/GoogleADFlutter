import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:photo_finder/src/actions/index.dart';
import 'package:photo_finder/src/data/auth_api.dart';
import 'package:photo_finder/src/data/photos_api.dart';
import 'package:photo_finder/src/epics/app_epics.dart';
import 'package:photo_finder/src/models/index.dart';
import 'package:photo_finder/src/presentation/content_page.dart';
import 'package:photo_finder/src/presentation/home_page.dart';
import 'package:photo_finder/src/presentation/login_page.dart';
import 'package:photo_finder/src/presentation/photo_page.dart';
import 'package:photo_finder/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  const String apiUrl = 'https://api.unsplash.com';
  const String apiKey = '-WGV7uN-91UrdZqu96S1oa3yBSl8GLiKG_rnbb1U2lw';
  final Client client = Client();
  final PhotosApi photosApi = PhotosApi(apiUrl: apiUrl, apiKey: apiKey, client: client);
  final AuthApi authApi = AuthApi(auth: FirebaseAuth.instance, firestore: FirebaseFirestore.instance);
  final AppEpics appEpics = AppEpics(photosApi: photosApi, authApi: authApi);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.epics),
    ],
  );
  store.dispatch(const InitializeApp());

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
        routes: <String, WidgetBuilder>{
          '/content': (BuildContext context) => const ContentPage(),
          '/photo': (BuildContext context) => const PhotoPage(),
          '/login': (BuildContext context) => const LoginPage(),
        },
      ),
    );
  }
}
