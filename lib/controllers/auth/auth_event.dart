import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authUserChanged({required auth.User? user}) =
  AuthUserChanged;

  const factory AuthEvent.authLogoutRequested() =
  AuthLogoutRequested;
}