import 'package:dcoding/shared/theme.dart';
import 'package:flutter/material.dart';

// custom button
class CustomFilletButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onpressed;

  const CustomFilletButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
          backgroundColor: purplecolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: SemiBold,
          ),
        ),
      ),
    );
  }
}

// text button custom
class customtextbutton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onpressed;

  const customtextbutton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 24,
    this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Text(
          title,
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class pinnumber extends StatelessWidget {
  final String title;
  final VoidCallback? ontap;

  const pinnumber({
    Key? key,
    required this.title,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: numberbackgroundcolor,
        ),
        child: Center(
          child: Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 22,
              fontWeight: SemiBold,
            ),
          ),
        ),
      ),
    );
  }
}
