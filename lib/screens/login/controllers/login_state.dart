import 'package:instagram_clone/repositories/auth/domain/auth_failures.dart';
import 'package:instagram_clone/repositories/auth/domain/auth_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final EmailAddress emailAddress;
  final Password password;
  final bool isSubmitting;
  final Option<Either<AuthFailures, Unit>> authFailureOrSuccess;

  const LoginState({
    required this.emailAddress,
    required this.password,
    required this.isSubmitting,
    required this.authFailureOrSuccess,
  });

  factory LoginState.initial() {
    return LoginState(
      emailAddress: EmailAddress(email: ""),
      password: Password(password: ""),
      isSubmitting: false,
      authFailureOrSuccess: none(),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [emailAddress, password, isSubmitting, authFailureOrSuccess];

  LoginState copyWith({
    EmailAddress? emailAddress,
    Password? password,
    bool? isSubmitting,
    Option<Either<AuthFailures, Unit>>? authFailureOrSuccess,
  }) {
    return LoginState(
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      authFailureOrSuccess: authFailureOrSuccess ?? this.authFailureOrSuccess,
    );
  }
}