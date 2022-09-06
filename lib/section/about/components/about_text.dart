import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Hind",
          fontWeight: FontWeight.w300,
          fontSize: size.width * .01,
          color: MyColorScheme.black,
        ),
      ),
    );
  }
}
