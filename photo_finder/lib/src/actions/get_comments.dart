part of actions;

@freezed
class GetComments with _$GetComments implements AppAction {
  const factory GetComments() = GetCommentsStart;

  const factory GetComments.successful(List<Comment> comments) = GetCommentsSuccessful;

  @Implements(ErrorAction)
  const factory GetComments.error(Object error, StackTrace stackTrace) = GetCommentsError;
}
