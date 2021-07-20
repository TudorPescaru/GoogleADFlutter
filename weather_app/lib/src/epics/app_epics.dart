import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/data/geoloc_api.dart';
import 'package:weather_app/src/data/ip_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/models/index.dart';

class AppEpics {
  const AppEpics({required IpApi ipApi, required GeolocApi geolocApi, required WeatherApi weatherApi})
      : _ipApi = ipApi,
        _geolocApi = geolocApi,
        _weatherApi = weatherApi;

  final IpApi _ipApi;
  final GeolocApi _geolocApi;
  final WeatherApi _weatherApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetIpStart>(_getIp),
      TypedEpic<AppState, GetGeolocStart>(_getGeoloc),
      TypedEpic<AppState, GetWeatherStart>(_getWeather),
    ]);
  }

  Stream<Object> _getIp(Stream<GetIpStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetIpStart event) => _ipApi.getIp())
        .expand((Ip ip) => <Object>[GetIp.successful(ip), const GetGeoloc()])
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetIp.error(error, stackTrace));
  }

  Stream<Object> _getGeoloc(Stream<GetGeolocStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetGeolocStart event) => _geolocApi.getGeoloc(store.state.ip!))
        .expand((Geoloc geoloc) => <Object>[GetGeoloc.successful(geoloc), const GetWeather()])
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetGeoloc.error(error, stackTrace));
  }

  Stream<AppAction> _getWeather(Stream<GetWeatherStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetWeatherStart event) => _weatherApi.getWeather(store.state.geoloc!))
        .map((Weather weather) => GetWeather.successful(weather))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetWeather.error(error, stackTrace));
  }
}
