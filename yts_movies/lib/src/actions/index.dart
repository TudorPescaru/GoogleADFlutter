library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yts_movies/src/models/index.dart';

part 'index.freezed.dart';
part 'get_movies.dart';
part 'set_selected_movie.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}
