import 'package:instagram_clone/config/loginscreen_constants.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/screens.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/general_providers.dart';
import 'package:instagram_clone/widgets/custom_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/screens/login/controllers/login_controller.dart';
import 'package:instagram_clone/screens/login/controllers/login_state.dart';
import 'package:instagram_clone/screens/login/controllers/login_event.dart';

class LoginScreen extends HookConsumerWidget {
  static const String routeName = '/login';

  LoginScreen({Key? key}) : super(key: key);

  Widget _buildSignInWithText() {
    return Column(
      children: const <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Sign in with',
          style: kLabelStyle,
        ),
      ],
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Facebook'),
            const AssetImage(
              'assets/logos/facebook.jpg',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Google'),
            const AssetImage(
              'assets/logos/google.jpg',
            ),
          ),
        ],
      ),
    );
  }

  static Route route() {
    return PageRouteBuilder(
      settings: const RouteSettings(name: routeName),
      transitionDuration: const Duration(seconds: 0),
      pageBuilder: (context, _, __) => LoginScreen(),
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final loginProvider =
      StateNotifierProvider.autoDispose<LoginController, LoginState>((ref) {
    final authState = ref.watch(authRepositoryProvider);
    return LoginController(authState);
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formStates = ref.watch(loginProvider);
    final formEvents = ref.watch(loginProvider.notifier);
    ref.listen<LoginState>(loginProvider, (value) {
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
          (success) {
            buildCustomSnackBar(
                context: context,
                flashBackground: Colors.green,
                icon: CupertinoIcons.check_mark_circled_solid,
                content: Text(
                  'Login successful',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white),
                ));
          },
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
                                              LoginEvent.emailChanged(
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
                                        LoginEvent.passwordChanged(
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
                                        contentPadding:
                                            const EdgeInsets.only(top: 14.0),
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
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () =>
                                      print('Forgot Password Button Pressed'),
                                  child: const Text(
                                    'Forgot Password?',
                                    style: kLabelStyle,
                                  ),
                                ),
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
                                        const LoginEvent
                                            .signInWithEmailAndPasswordPressed(),
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
                                    'LOGIN',
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
                              _buildSignInWithText(),
                              _buildSocialBtnRow(),
                              GestureDetector(
                                onTap: () => Navigator.of(context)
                                    .pushNamed(SignupScreen.routeName),
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Don\'t have an Account? ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Sign Up',
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
