library actions;

import 'package:weather_app/src/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'index.freezed.dart';
part 'get_ip.dart';
part 'get_geoloc.dart';
part 'get_weather.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}
