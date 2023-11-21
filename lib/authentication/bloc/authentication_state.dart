part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState._({
    @Default(AuthenticationStatus.unknown) AuthenticationStatus status,
    @Default(User.empty) User user,
  }) = _AuthenticationState;

}

extension XAuthenticationState on AuthenticationState {
  static AuthenticationState unknown() => AuthenticationState._();
  static AuthenticationState authenticated(User user) => AuthenticationState._(
        status: AuthenticationStatus.authenticated,
        user: user,
      );
  static AuthenticationState unauthenticated() => AuthenticationState._(
        status: AuthenticationStatus.unauthenticated,
      );
}
