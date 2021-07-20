import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/models/index.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  (AppState state, dynamic action) {
    print(action);
    return state;
  },
  TypedReducer<AppState, GetIpStart>(_getIp),
  TypedReducer<AppState, GetIpSuccessful>(_getIpSuccessful),
  TypedReducer<AppState, GetIpError>(_getIpError),
  TypedReducer<AppState, GetGeolocStart>(_getGeoloc),
  TypedReducer<AppState, GetGeolocSuccessful>(_getGeolocSuccessful),
  TypedReducer<AppState, GetGeolocError>(_getGeolocError),
  TypedReducer<AppState, GetWeatherStart>(_getWeather),
  TypedReducer<AppState, GetWeatherSuccessful>(_getWeatherSuccessful),
  TypedReducer<AppState, GetWeatherError>(_getWeatherError),
]);

AppState _getIp(AppState state, GetIpStart action) {
  return state.rebuild((AppStateBuilder b) {
    b.isLoading = true;
  });
}

AppState _getIpSuccessful(AppState state, GetIpSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..ip = action.ip.toBuilder()
      ..isLoading = false;
  });
}

AppState _getIpError(AppState state, GetIpError action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..error = action.error.toString()
      ..isLoading = false;
  });
}

AppState _getGeoloc(AppState state, GetGeolocStart action) {
  return state.rebuild((AppStateBuilder b) {
    b.isLoading = true;
  });
}

AppState _getGeolocSuccessful(AppState state, GetGeolocSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..geoloc = action.geoloc.toBuilder()
      ..isLoading = false;
  });
}

AppState _getGeolocError(AppState state, GetGeolocError action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..error = action.error.toString()
      ..isLoading = false;
  });
}

AppState _getWeather(AppState state, GetWeatherStart action) {
  return state.rebuild((AppStateBuilder b) {
    b.isLoading = true;
  });
}

AppState _getWeatherSuccessful(AppState state, GetWeatherSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..weather = action.weather.toBuilder()
      ..isLoading = false;
  });
}

AppState _getWeatherError(AppState state, GetWeatherError action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..error = action.error.toString()
      ..isLoading = false;
  });
}
