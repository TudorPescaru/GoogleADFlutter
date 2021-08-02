library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_finder/src/models/index.dart';

part 'index.freezed.dart';
part 'get_photos.dart';
part 'set_selected_photo.dart';
part 'search_photos.dart';
part 'register.dart';
part 'initialize_app.dart';
part 'sign_out.dart';
part 'update_profile_photo.dart';
part 'create_comment.dart';
part 'get_comments.dart';
part 'get_users.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

typedef ActionResult = void Function(AppAction action);
