import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/config/paths.dart';
import 'package:instagram_clone/repositories/repositories.dart';
import 'package:dartz/dartz.dart';
import './domain/auth_failures.dart';
import './domain/auth_value_objects.dart';
import './base_auth_repository.dart';
import '../errors.dart';

class AuthRepository extends BaseAuthRepository {
  final auth.FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  @override
  Stream<auth.User?> get user => _firebaseAuth.userChanges();

  AuthRepository(this._firebaseAuth,this._firebaseFirestore);

  @override
  Future<Either<AuthFailures, Unit>> signUpWithEmailAndPassword({
    required String username,
    required EmailAddress? emailAddress,
    required Password? password,
  }) async {
    final emailAddressString = emailAddress!.valueObject!
        .fold((l) => throw UnExpectedValueError(l), id);
    final passwordString =
    password!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);
    try {
      final credential =
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
      final user = credential.user;
      _firebaseFirestore
          .collection(Paths.users)
          .doc(user!.uid)
          .set({
        'username': username.toLowerCase(),
        'email': emailAddressString.toLowerCase(),
        'followers': 0,
        'following': 0,
      });

      _firebaseFirestore
          .collection(Paths.following)
          .doc(user.uid)
          .set({"userFollowing": []});

      _firebaseFirestore
          .collection(Paths.followers)
          .doc(user.uid)
          .set({"userFollowers": []});

      return right(unit);
    } on auth.FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailures.emailAlreadyInUse());
      } else {
        return left(const AuthFailures.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> logInWithEmailAndPassword({
    required EmailAddress? emailAddress,
    required Password? password,
  }) async {
      final emailAddressString = emailAddress!.valueObject!
          .fold((l) => throw UnExpectedValueError(l), id);
      final passwordString =
      password!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);
      try {
        await _firebaseAuth.signInWithEmailAndPassword(
            email: emailAddressString.toLowerCase(), password: passwordString);
        return right(unit);
    } on auth.FirebaseAuthException catch (e) {
        if (e.code == 'wrong-password' || e.code == 'user-not-found') {
          return left(const AuthFailures.invalidEmailAndPasswordCombination());
        } else {
          return left(const AuthFailures.serverError());
        }
      }
    }

  @override
  Future<Option<String>> getSignedInUser() async {
    return optionOf(_firebaseAuth.currentUser?.uid);
  }

  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }
}