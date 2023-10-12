import 'dart:ui';

import 'package:dcoding/shared/theme.dart';
import 'package:dcoding/ui/widgets/button.dart';
import 'package:dcoding/ui/widgets/form.dart';
import 'package:flutter/material.dart';

class signup_ktp extends StatelessWidget {
  const signup_ktp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),

// image logo
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
              ),
            ),
          ),

// caption
          Text(
            'Verify Your &\nAccount',
            style: BlactTextStyle.copyWith(
              fontSize: 20,
              fontWeight: SemiBold,
            ),
          ),

// perinputan
          const SizedBox(
            height: 30,
          ),

          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whitecolor,
            ),

// name
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightbackgroundcolor,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),

                Text(
                  'Passport / ID Card',
                  style: BlactTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

// button signin
                CustomFilletButton(
                  title: 'Continue',
                  onpressed: () {
                    Navigator.pushNamed(context, '/signup_succes');
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),

// buat akun baru
          customtextbutton(
            title: 'Skip for Now',
            onpressed: () {
              Navigator.pushNamed(context, '/signup_succes');
            },
          )
        ],
      ),
    );
  }
}
