import 'package:dcoding/shared/theme.dart';
import 'package:dcoding/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class signup_succes extends StatelessWidget {
  const signup_succes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Akun Berhasil\nTerdaftar',
            style: BlactTextStyle.copyWith(
              fontSize: 20,
              fontWeight: SemiBold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'grow your finance start\ntogether with us',
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilletButton(
            width: 183,
            title: 'Get Started',
            onpressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (route) => false);
            },
          )
        ],
      )),
    );
  }
}
