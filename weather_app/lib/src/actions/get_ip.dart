part of actions;

@freezed
class GetIp with _$GetIp implements AppAction {
  const factory GetIp() = GetIpStart;

  const factory GetIp.successful(Ip ip) = GetIpSuccessful;

  @Implements(ErrorAction)
  const factory GetIp.error(Object error, StackTrace stackTrace) = GetIpError;
}
