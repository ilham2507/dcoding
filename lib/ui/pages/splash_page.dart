import 'dart:async';

import 'package:dcoding/shared/theme.dart';
import 'package:dcoding/ui/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: abubgcolour,
      body: Center(
        child: Container(
          width: 216,
          height: 196,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/logo.png',
            ),
          )),
        ),
      ),
    );
  }
}
