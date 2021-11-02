import 'package:instagram_clone/repositories/auth/domain/auth_failures.dart';
import 'package:instagram_clone/repositories/auth/domain/auth_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class SignupState extends Equatable {
  final String username;
  final EmailAddress emailAddress;
  final Password password;
  final bool isSubmitting;
  final Option<Either<AuthFailures, Unit>> authFailureOrSuccess;

  const SignupState({
    required this.username,
    required this.emailAddress,
    required this.password,
    required this.isSubmitting,
    required this.authFailureOrSuccess,
  });

  factory SignupState.initial() {
    return SignupState(
      username: "",
      emailAddress: EmailAddress(email: ""),
      password: Password(password: ""),
      isSubmitting: false,
      authFailureOrSuccess: none(),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [username, emailAddress, password, isSubmitting, authFailureOrSuccess];

  SignupState copyWith({
    String? username,
    EmailAddress? emailAddress,
    Password? password,
    bool? isSubmitting,
    Option<Either<AuthFailures, Unit>>? authFailureOrSuccess,
  }) {
    return SignupState(
      username: username ?? this.username,
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      authFailureOrSuccess: authFailureOrSuccess ?? this.authFailureOrSuccess,
    );
  }
}