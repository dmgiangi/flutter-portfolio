import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.size,
    required this.subTitle,
    required this.title,
  }) : super(key: key);

  final Size size;
  final String subTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: kDefaultPadding / 2),
          padding: const EdgeInsets.only(bottom: 72),
          width: 8,
          height: size.width > 1200 ? 1200 * 0.055 : size.width * 0.11,
          color: MyColorScheme.black,
          child: const DecoratedBox(
            decoration: BoxDecoration(
              color: MyColorScheme.middle,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              subTitle,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                color: MyColorScheme.black,
                fontSize: size.width > 1200 ? 1200 * 0.01 : size.width * 0.02,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: MyColorScheme.black,
                fontSize: size.width > 1200 ? 1200 * 0.03 : size.width * 0.06,
              ),
            )
          ],
        )
      ],
    );
  }
}
