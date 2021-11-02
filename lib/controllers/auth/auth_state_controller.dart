import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:instagram_clone/repositories/auth/auth_repository.dart';
import 'auth_state.dart';
import 'auth_event.dart';

class AuthStateController extends StateNotifier<AuthState> {
  late StreamSubscription<auth.User?> _userSubscription;
  final AuthRepository _authRepository;

  AuthStateController(this._authRepository) : super(AuthState.unknown()) {
    _userSubscription = _authRepository.user.listen((user) => user != null
        ? state = AuthState.authenticated(user: user)
        : state = AuthState.unauthenticated());
  }

  @override
  void dispose() {
    _userSubscription.cancel();
    return super.dispose();
  }

  Future mapEventsToStates(AuthEvent event) async {
    return event.map(authUserChanged: (value) async {
      state = value.user != null
          ? AuthState.authenticated(user: value.user!)
          : AuthState.unauthenticated();
    }, authLogoutRequested: (value) async {
      await _authRepository.logOut();
    });
  }
}
