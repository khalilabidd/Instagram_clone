import 'package:dartz/dartz.dart';
import 'package:instagram_clone/repositories/repositories.dart';
import 'package:instagram_clone/repositories/auth/domain/auth_value_objects.dart';
import 'package:instagram_clone/repositories/auth/domain/auth_failures.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginController extends StateNotifier<LoginState> {
  final AuthRepository _authRepository;

  LoginController(this._authRepository):super(LoginState.initial());

  Future mapEventsToStates(LoginEvent events) async {
    return events.map(
      emailChanged: (value) async {
        state = state.copyWith(
            emailAddress: EmailAddress(
              email: value.email,
            ),
            authFailureOrSuccess: none());
      },
      passwordChanged: (value) async {
        state = state.copyWith(
          password: Password(
            password: value.password,
          ),
          authFailureOrSuccess: none(),
        );
      },
      signInWithEmailAndPasswordPressed: (value) async {
        await _performAuthAction(
          _authRepository.logInWithEmailAndPassword,
        );
      },
    );
  }
  Future _performAuthAction(
      Future<Either<AuthFailures, Unit>> Function(
          {required EmailAddress emailAddress,required Password password})
      forwardCall,
      ) async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    Either<AuthFailures, Unit>? failureOrSuccess;
    if (isEmailValid && isPasswordValid) {
      state = state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: none(),
      );
      failureOrSuccess = await forwardCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    state = state.copyWith(
      isSubmitting: false,
      authFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}