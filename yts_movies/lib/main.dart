import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:yts_movies/src/actions/get_movies.dart';
import 'package:yts_movies/src/data/movies_api.dart';
import 'package:yts_movies/src/epics/app_epics.dart';
import 'package:yts_movies/src/middleware/middleware.dart';
import 'package:yts_movies/src/models/app_state.dart';
import 'package:yts_movies/src/presentation/home_page.dart';
import 'package:yts_movies/src/reducer/reducer.dart';

void main() {
  const String apiUrl = 'https://yts.mx/api/v2';
  final Client client = Client();
  final MoviesApi moviesApi = MoviesApi(apiUrl: apiUrl, client: client);
  const AppMiddleware appMiddleware = AppMiddleware();
  final AppEpics epic = AppEpics(moviesApi: moviesApi);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
          EpicMiddleware<AppState>(epic.epics),
        ] +
        appMiddleware.middleware,
  );
  store.dispatch(const GetMovies());
  runApp(YtsApp(store: store));
}

class YtsApp extends StatelessWidget {
  const YtsApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: const HomePage(),
      ),
    );
  }
}
