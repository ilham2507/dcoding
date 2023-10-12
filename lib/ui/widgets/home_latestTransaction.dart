import 'package:dcoding/shared/theme.dart';
import 'package:flutter/material.dart';

class homeLatestTarns extends StatelessWidget {
  final String iconurl;
  final String title;
  final String time;
  final String value;

  const homeLatestTarns({
    Key? key,
    required this.iconurl,
    required this.title,
    required this.time,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 8,
      ),
      child: Row(
        children: [
          Image.asset(
            iconurl,
            width: 48,
          ),
          const SizedBox(
            height: 16,
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: BlactTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  time,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            value,
            style: BlactTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}
