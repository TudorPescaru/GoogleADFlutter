part of actions;

@freezed
class GetPhotos with _$GetPhotos implements AppAction {
  const factory GetPhotos() = GetPhotosStart;

  const factory GetPhotos.successful(List<Photo> photos) = GetPhotosSuccessful;

  @Implements(ErrorAction)
  const factory GetPhotos.error(Object error, StackTrace stackTrace) = GetPhotosError;
}
