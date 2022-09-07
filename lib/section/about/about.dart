import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/html_services.dart';
import 'package:portfolio/section/about/components/about_and_sign.dart';
import 'package:portfolio/section/about/components/about_text.dart';
import 'package:portfolio/section/about/components/years_of_experience_card.dart';

import '../../components/my_outline_button.dart';

class About extends StatelessWidget {
  const About({
    Key? key,
    required this.reachSection,
    required this.sectionKeys,
  }) : super(key: key);

  final Function reachSection;
  final Map<String, GlobalKey<State<StatefulWidget>>> sectionKeys;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        padding: const EdgeInsets.only(
          top: kDefaultPadding * 6,
          bottom: kDefaultPadding * 3,
        ),
        constraints:
            BoxConstraints(minWidth: size.width > 1200 ? 1200 : size.width),
        width: size.width > 1200 ? 1200 : size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AboutAndSign(size: size),
                AboutText(
                  size: size,
                  text: kAboutText,
                ),
                YearsOfExperienceCard(size: size),
                AboutText(
                  size: size,
                  text: kAboutText,
                ),
              ],
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyOutlineButton(
                  size: size,
                  text: "Hire Me!",
                  icon: Icons.handshake_outlined,
                  onPress: () {
                    reachSection(sectionKeys["Contact Me"]);
                  },
                ),
                const SizedBox(width: kDefaultPadding * 3),
                MyOutlineButton(
                  size: size,
                  text: "Download CV",
                  icon: Icons.file_download_outlined,
                  onPress: () {
                    openLink(link: cvLink);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
