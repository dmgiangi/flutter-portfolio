import 'package:flutter/material.dart';
import 'package:portfolio/components/my_outline_button.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/constants.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
    required this.reachSection,
    required this.sectionKeys,
    required this.size,
  }) : super(key: key);

  final Function reachSection;
  final Map<String, GlobalKey<State<StatefulWidget>>> sectionKeys;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      constraints:
          BoxConstraints(minWidth: size.width > 1200 ? 1200 : size.width),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        children: [
          const Icon(
            Icons.email,
            color: MyColorScheme.dark,
            size: 80,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Starting New Project?",
                  style: TextStyle(
                      fontSize: size.width * 0.025,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: kDefaultPadding / 2),
                Text(
                  "the best time to plant a tree was 10 years ago.\nthe second best time is today.",
                  style: TextStyle(
                      fontFamily: "Hind",
                      fontWeight: FontWeight.w200,
                      fontSize: size.width * 0.01),
                )
              ],
            ),
          ),
          MyOutlineButton(
            text: "Hire Me!",
            icon: Icons.handshake,
            onPress: () {
              reachSection(sectionKeys["Contact Me"]);
            },
            size: size,
          )
        ],
      ),
    );
  }
}
