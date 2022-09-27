import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/constants.dart';

class AboutAndSign extends StatelessWidget {
  const AboutAndSign({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "About\nmy story",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize:
                  size.width > 1200 ? size.width * 0.025 : size.width * .04,
              color: MyColorScheme.black,
            ),
          ),
        ],
      ),
    );
  }
}
