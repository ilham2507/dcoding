import 'package:dcoding/shared/theme.dart';
import 'package:flutter/material.dart';

class customform extends StatelessWidget {
  final String title;
  final bool obscuretext;
  final TextEditingController? controller;
  final bool isShowtitle;

  const customform({
    Key? key,
    required this.title,
    this.obscuretext = false,
    this.controller,
    this.isShowtitle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowtitle)
          Text(
            title,
            style: BlactTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        if (isShowtitle)
          const SizedBox(
            height: 8,
          ),
        TextFormField(
          obscureText: obscuretext,
          controller: controller,
          decoration: InputDecoration(
            hintText: !isShowtitle ? title : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
