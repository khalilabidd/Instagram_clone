import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.freezed.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.emailChanged({required String? email}) =
  EmailChanged;

  const factory SignupEvent.passwordChanged({required String? password}) =
  PasswordChanged;

  const factory SignupEvent.usernameChanged({required String? username}) =
  UsernameChanged;

  const factory SignupEvent.signUpWithEmailAndPasswordPressed() =
  SignUpWithEmailAndPasswordPressed;
}