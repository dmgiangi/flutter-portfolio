import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';

class YearsOfExperienceCard extends StatelessWidget {
  const YearsOfExperienceCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: MyColorScheme.light,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: MyColorScheme.middle,
            blurRadius: 4,
          ),
        ],
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: MyColorScheme.middle,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 3),
              color: MyColorScheme.dark,
              blurRadius: 6,
            ),
          ],
        ),
        child: Container(
          margin: const EdgeInsets.all(kDefaultPadding * 1),
          child: Column(
            children: [
              Stack(
                children: [
                  Text(
                    kYearsOfExperience,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * .05,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = MyColorScheme.light.withOpacity(.5),
                      shadows: const [
                        BoxShadow(
                          spreadRadius: 2,
                          offset: Offset(0, 6),
                          blurRadius: 10,
                          color: MyColorScheme.backgroundAccent,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    kYearsOfExperience,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: size.width * .05,
                        color: MyColorScheme.background),
                  ),
                ],
              ),
              Text(
                "Years of Experience",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: size.width > 1200
                        ? size.width * .009
                        : size.width * 0.018,
                    color: MyColorScheme.background),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
