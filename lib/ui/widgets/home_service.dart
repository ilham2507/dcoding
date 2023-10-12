import 'package:dcoding/shared/theme.dart';
import 'package:flutter/material.dart';

class home_service extends StatelessWidget {
  final String iconurl;
  final String title;
  final VoidCallback? onTap;

  const home_service({
    Key? key,
    required this.iconurl,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whitecolor,
            ),
            child: Center(
              child: Image.asset(
                iconurl,
                width: 26,
              ),
            ),
          ),
          Text(
            title,
            style: BlactTextStyle.copyWith(
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}
