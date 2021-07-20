part of actions;

@freezed
class GetGeoloc with _$GetGeoloc implements AppAction {
  const factory GetGeoloc() = GetGeolocStart;

  const factory GetGeoloc.successful(Geoloc geoloc) = GetGeolocSuccessful;

  @Implements(ErrorAction)
  const factory GetGeoloc.error(Object error, StackTrace stackTrace) = GetGeolocError;
}
