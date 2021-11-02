import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/general_providers.dart';
import 'package:instagram_clone/screens/signup/controllers/signup_controller.dart';
import 'package:instagram_clone/screens/signup/controllers/signup_state.dart';
import 'package:instagram_clone/screens/signup/controllers/signup_event.dart';
import 'package:instagram_clone/config/loginscreen_constants.dart';

import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/widgets/custom_snackbar.dart';

class SignupScreen extends ConsumerWidget {
  static const String routeName = '/signup';

  SignupScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => SignupScreen(),
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final signupProvider =
      StateNotifierProvider.autoDispose<SignupController, SignupState>((ref) {
    final authState = ref.watch(authRepositoryProvider);
    return SignupController(authState);
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formStates = ref.watch(signupProvider);
    final formEvents = ref.watch(signupProvider.notifier);
    ref.listen<SignupState>(signupProvider, (value) {
      value.authFailureOrSuccess.fold(
        () {},
        (either) => either.fold(
          (failure) {
            buildCustomSnackBar(
                context: context,
                flashBackground: Colors.red,
                icon: Icons.warning_rounded,
                content: Text(
                  failure.maybeMap(
                      orElse: () => '',
                      emailAlreadyInUse: (value) => 'User already exists',
                      serverError: (value) {
                        return 'Server error occurred';
                      },
                      invalidEmailAndPasswordCombination: (value) {
                        return 'Invalid email or password';
                      }),
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white),
                ));
          },
          (success) {},
        ),
      );
    });
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              SizedBox(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Username',
                                    style: kLabelStyle,
                                  ),
                                  const SizedBox(height: 10.0),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      onChanged: (value) =>
                                          formEvents.mapEventsToStates(
                                              SignupEvent.usernameChanged(
                                                  username: value)),
                                      validator: (value) =>
                                          value!.trim().isEmpty
                                              ? 'Please enter a valid username.'
                                              : null,
                                      textInputAction: TextInputAction.next,
                                      onEditingComplete: () =>
                                          FocusScope.of(context).nextFocus(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'OpenSans',
                                      ),
                                      decoration: InputDecoration(
                                        fillColor: const Color(0xFF6CA8F1),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.only(top: 14.0),
                                        prefixIcon: const Icon(
                                          Icons.account_circle_outlined,
                                          color: Colors.white,
                                        ),
                                        hintText: 'Enter your username',
                                        hintStyle: kHintTextStyle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Email',
                                    style: kLabelStyle,
                                  ),
                                  const SizedBox(height: 10.0),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      keyboardType: TextInputType.emailAddress,
                                      onChanged: (value) =>
                                          formEvents.mapEventsToStates(
                                              SignupEvent.emailChanged(
                                                  email: value.toString())),
                                      validator: (value) => formStates
                                          .emailAddress.valueObject!
                                          .fold(
                                        (failure) => failure.maybeMap(
                                            orElse: () => null,
                                            invalidEmail: (value) =>
                                                'Invalid email'),
                                        (r) => null,
                                      ),
                                      textInputAction: TextInputAction.next,
                                      onEditingComplete: () =>
                                          FocusScope.of(context).nextFocus(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'OpenSans',
                                      ),
                                      decoration: InputDecoration(
                                        fillColor: const Color(0xFF6CA8F1),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.only(top: 14.0),
                                        prefixIcon: const Icon(
                                          Icons.email,
                                          color: Colors.white,
                                        ),
                                        hintText: 'Enter your Email',
                                        hintStyle: kHintTextStyle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Password',
                                    style: kLabelStyle,
                                  ),
                                  const SizedBox(height: 10.0),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: TextFormField(
                                      obscureText: true,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      textInputAction: TextInputAction.done,
                                      onEditingComplete: () =>
                                          FocusScope.of(context).nextFocus(),
                                      onChanged: (value) =>
                                          formEvents.mapEventsToStates(
                                        SignupEvent.passwordChanged(
                                            password: value.toString()),
                                      ),
                                      validator: (value) =>
                                          formStates.password.valueObject!.fold(
                                        (failure) => failure.maybeMap(
                                          orElse: () => null,
                                          shortPassword: (value) =>
                                              'Very short password',
                                          noUpperCase: (value) =>
                                              'Must contain an uppercase character',
                                          noNumber: (value) =>
                                              'Must contain a number',
                                          noSpecialSymbol: (value) =>
                                              'Must contain a special character',
                                        ),
                                        (r) => null,
                                      ),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'OpenSans',
                                      ),
                                      decoration: InputDecoration(
                                        fillColor: const Color(0xFF6CA8F1),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        contentPadding: const EdgeInsets.only(
                                            top: 14.0, bottom: 14.0),
                                        prefixIcon: const Icon(
                                          Icons.lock,
                                          color: Colors.white,
                                        ),
                                        hintText: 'Enter your Password',
                                        hintStyle: kHintTextStyle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25.0),
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate() &&
                                        !formStates.isSubmitting) {
                                      formEvents.mapEventsToStates(
                                        const SignupEvent
                                            .signUpWithEmailAndPasswordPressed(),
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    elevation: 5.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                  child: const Text(
                                    'SIGN UP',
                                    style: TextStyle(
                                      color: Color(0xFF527DAA),
                                      letterSpacing: 1.5,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'OpenSans',
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: () => Navigator.of(context).pop(),
                                  child: RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Back to Login',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
