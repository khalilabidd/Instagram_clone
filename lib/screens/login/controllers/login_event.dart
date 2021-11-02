import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged({required String? email}) =
  EmailChanged;

  const factory LoginEvent.passwordChanged({required String? password}) =
  PasswordChanged;

  const factory LoginEvent.signInWithEmailAndPasswordPressed() =
  SignInWithEmailAndPasswordPressed;
}