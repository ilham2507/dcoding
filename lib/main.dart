import 'package:dcoding/shared/theme.dart';
import 'package:dcoding/ui/pages/home.dart';
import 'package:dcoding/ui/pages/onboarding_page.dart';
import 'package:dcoding/ui/pages/signIn_page.dart';
import 'package:dcoding/ui/pages/signup_ktp.dart';
import 'package:dcoding/ui/pages/signup_page.dart';
import 'package:dcoding/ui/pages/signup_profile.dart';
import 'package:dcoding/ui/pages/signup_succes.dart';
import 'package:dcoding/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: lightbackgroundcolor,
        appBarTheme: AppBarTheme(
            backgroundColor: lightbackgroundcolor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: blackcolor,
            ),
            titleTextStyle: BlactTextStyle.copyWith(
              fontSize: 20,
              fontWeight: SemiBold,
            )),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const onboarding(),
        '/signin': (context) => const signIn(),
        '/signup': (context) => const signup(),
        '/signup_profile': (context) => const signupprofil(),
        '/signup_ktp': (context) => const signup_ktp(),
        '/signup_succes': (context) => const signup_succes(),
        '/home': (context) => const home(),
      },
    );
  }
}
