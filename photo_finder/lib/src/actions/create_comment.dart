part of actions;

@freezed
class CreateComment with _$CreateComment implements AppAction {
  const factory CreateComment(String text) = CreateCommentStart;

  const factory CreateComment.successful() = CreateCommentSuccessful;

  @Implements(ErrorAction)
  const factory CreateComment.error(Object error, StackTrace stackTrace) = CreateCommentError;
}
