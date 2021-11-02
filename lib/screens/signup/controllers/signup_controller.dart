import 'package:dartz/dartz.dart';
import 'package:instagram_clone/repositories/repositories.dart';
import 'package:instagram_clone/repositories/auth/domain/auth_value_objects.dart';
import 'package:instagram_clone/repositories/auth/domain/auth_failures.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'signup_event.dart';
import 'signup_state.dart';

class SignupController extends StateNotifier<SignupState> {
  final AuthRepository _authRepository;

  SignupController(this._authRepository):super(SignupState.initial());

  Future mapEventsToStates(SignupEvent events) async {
    return events.map(
      emailChanged: (value) async {
        state = state.copyWith(
            emailAddress: EmailAddress(
              email: value.email,
            ),
            authFailureOrSuccess: none());
      },
      usernameChanged: (value) async {
        state = state.copyWith(
            username: value.username,
            authFailureOrSuccess: none()
        );
      },
      passwordChanged: (value) async {
        state = state.copyWith(
          password: Password(
            password: value.password,
          ),
          authFailureOrSuccess: none(),
        );
      },
      signUpWithEmailAndPasswordPressed: (value) async {
        await _performAuthAction(
          _authRepository.signUpWithEmailAndPassword,
        );
      },
    );
  }
  Future _performAuthAction(
      Future<Either<AuthFailures, Unit>> Function(
          {required EmailAddress emailAddress,required String username,required Password password})
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
        username: state.username,
        password: state.password,
      );
    }
    state = state.copyWith(
      isSubmitting: false,
      authFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}