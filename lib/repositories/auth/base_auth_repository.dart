import 'package:dartz/dartz.dart';

import './domain/auth_failures.dart';
import './domain/auth_value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuthRepository {
  Future<Either<AuthFailures, Unit>> signUpWithEmailAndPassword(
      {required EmailAddress? emailAddress,
        required String username,
        required Password? password});
  Stream<User?> get user;
  Future<Either<AuthFailures, Unit>> logInWithEmailAndPassword(
      {required EmailAddress? emailAddress, required Password? password});

  Future<Option<String>> getSignedInUser();

  Future<void> logOut();
}