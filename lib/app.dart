import 'package:flutter/material.dart';
import 'package:tazkartak/features/onboarding/splashScreen.dart';
import 'package:tazkartak/features/booking/ticket.dart';
import 'features/authentication/login/LoginScreen.dart';
import 'features/authentication/signup/SignupScreen.dart';
import 'core/constants/app_theme.dart';
import 'core/constants/constants.dart';
import 'features/movies/movies_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: AppTheme.dark,
      home: const SplashScreen(),
      routes: {
        "login": (context) => const LoginScreen(),
        "signup": (context) => const SignUp(),
        "home": (context) => const MoviesPages(),
        "ticket": (context) => const Ticket(),
      },
    );
  }
}
