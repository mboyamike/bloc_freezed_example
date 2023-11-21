part of 'authentication_bloc.dart';

@freezed
sealed class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authenticationStatusChanged(
      AuthenticationStatus status) = _AuthenticationStatusChanged;
  const factory AuthenticationEvent.authenticationLogoutRequested() =
      AuthenticationLogoutRequested;
}
