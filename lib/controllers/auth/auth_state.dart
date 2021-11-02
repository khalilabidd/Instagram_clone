import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
enum AuthStatus { authenticated, unauthenticated }

class AuthState extends Equatable {
  final auth.User? user;
  final AuthStatus status;

  const AuthState({
    this.user,
    this.status = AuthStatus.unauthenticated,
  });

  factory AuthState.unknown() => const AuthState();

  factory AuthState.authenticated({required auth.User user}) {
    return AuthState(user: user, status: AuthStatus.authenticated);
  }

  factory AuthState.unauthenticated() =>
      const AuthState(status: AuthStatus.unauthenticated);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [user, status];
}