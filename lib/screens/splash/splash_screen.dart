import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/general_providers.dart';
import 'package:instagram_clone/controllers/auth/auth_state.dart';


class SplashScreen extends ConsumerWidget  {
  static const String routeName = '/splash';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    ref.listen<AuthState>(authProvider, (state) {
      if (state.status == AuthStatus.unauthenticated) {
        // Go to the Login Screen.
        Navigator.of(context).pushNamed(LoginScreen.routeName);
      } else if (state.status == AuthStatus.authenticated) {
        // Go to the Nav Screen.
        Navigator.of(context).pushNamed(NavScreen.routeName);
      }
    });
    final state=ref.watch(authProvider);
    Future.delayed(Duration.zero, () => {if (state.status == AuthStatus.unauthenticated) {
        // Go to the Login Screen.
        Navigator.of(context).pushNamed(LoginScreen.routeName)
  } else if (state.status == AuthStatus.authenticated) {
    // Go to the Nav Screen.
    Navigator.of(context).pushNamed(NavScreen.routeName)
    }});

    return WillPopScope(
        onWillPop:() async => true,
        child: const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
          ),
        ),
    );
  }
}
