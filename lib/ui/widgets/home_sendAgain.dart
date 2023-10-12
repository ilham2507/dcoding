import 'package:dcoding/shared/theme.dart';
import 'package:flutter/material.dart';

class homeSendAgain extends StatelessWidget {
  final String imageurl;
  final String name;

  const homeSendAgain({
    Key? key,
    required this.imageurl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 120,
      margin: const EdgeInsets.only(
        right: 17,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whitecolor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.only(
              bottom: 13,
              top: 20,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageurl),
              ),
            ),
          ),
          Text(
            '@$name',
            style: BlactTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
