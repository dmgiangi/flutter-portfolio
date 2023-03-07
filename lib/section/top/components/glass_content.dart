import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: kIsWeb ? 7 : 1,
          sigmaY: kIsWeb ? 7 : 1,
        ),
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding * 2),
          constraints: BoxConstraints(
            minWidth: size.width > 1200 ? 1200 : size.width,
            minHeight: size.height * .6,
          ),
          color: MyColorScheme.light.withOpacity(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome in the portfolio of",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: size.width > 1200 ? 1200 * .02 : size.width * 0.2,
                  color: MyColorScheme.background,
                ),
              ),
              Text(
                "$kName\n$kSurname",
                style: TextStyle(
                  fontSize: size.width > 1200 ? 1200 * .05 : size.width * 0.05,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                  color: MyColorScheme.background,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: size.width * .09,
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize:
                          size.width > 1200 ? 1200 * .025 : size.width * 0.025,
                      color: MyColorScheme.background,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: List.generate(
                        kAdjectives.length,
                        (index) => RotateAnimatedText(
                          kAdjectives[index],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
