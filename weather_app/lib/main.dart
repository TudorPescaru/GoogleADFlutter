import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/data/geoloc_api.dart';
import 'package:weather_app/src/data/ip_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/epics/app_epics.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:weather_app/src/presentation/home_page.dart';
import 'package:weather_app/src/reducers/reducers.dart';

void main() {
  const String ipApiUrl = 'https://api.ipify.org';
  const String geolocApiUrl = 'http://ip-api.com';
  const String weatherApiUrl = 'https://api.openweathermap.org/data/2.5/onecall';
  const String apiKey = '{API_KEY}';

  final Client client = Client();
  final IpApi ipApi = IpApi(apiUrl: ipApiUrl, client: client);
  final GeolocApi geolocApi = GeolocApi(apiUrl: geolocApiUrl, client: client);
  final WeatherApi weatherApi = WeatherApi(apiUrl: weatherApiUrl, apiKey: apiKey, client: client);
  final AppEpics appEpics = AppEpics(ipApi: ipApi, geolocApi: geolocApi, weatherApi: weatherApi);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.epics),
    ],
  );

  store.dispatch(const GetIp());

  runApp(APIApp(store: store));
}

class APIApp extends StatelessWidget {
  const APIApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Weather App',
        theme: ThemeData.light(),
        home: const HomePage(),
      ),
    );
  }
}
