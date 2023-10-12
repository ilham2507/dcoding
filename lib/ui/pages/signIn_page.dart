import 'dart:ui';

import 'package:dcoding/shared/theme.dart';
import 'package:dcoding/ui/widgets/button.dart';
import 'package:dcoding/ui/widgets/form.dart';
import 'package:flutter/material.dart';

class signIn extends StatelessWidget {
  const signIn({Key? key}) : super(key: key);

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
            width: 122,
            height: 105,
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
            'Sign In &\nGrow Your Finance',
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

// email
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
// NOTE: EMAIL INPUT
                const customform(
                  title: 'Email',
                ),

// NOTE: PASSWORD INPUT
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
// password
                    const customform(
                      title: 'password',
                      obscuretext: true,
                    ),

// forgot password
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'forgot password',
                        style: blueTextStyle,
                      ),
                    ),

                    const SizedBox(
                      height: 25,
                    ),

// button sign in
                    CustomFilletButton(
                      title: 'Sign In',
                      onpressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (route) => false);
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),

// buat akun baru
          customtextbutton(
            title: 'create new account',
            onpressed: () {
              Navigator.pushNamed(context, '/signup');
            },
          )
        ],
      ),
    );
  }
}
