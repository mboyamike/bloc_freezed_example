part of 'login_bloc.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  factory LoginEvent.loginUsernameChanged(String username) =
      LoginUsernameChanged;
  factory LoginEvent.loginPasswordChanged(String password) =
      LoginPasswordChanged;
  const factory LoginEvent.loginSubmitted() = LoginSubmitted;
}
