import 'package:flutter/material.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/section/contact/components/contact_box.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        padding: const EdgeInsets.only(
          top: kDefaultPadding * 6,
        ),
        constraints:
            BoxConstraints(minWidth: size.width > 1200 ? 1200 : size.width),
        width: size.width > 1200 ? 1200 : size.width,
        child: Column(
          children: [
            const SizedBox(height: kDefaultPadding * 2.5),
            SectionTitle(
              title: "Contact Me",
              subTitle: "For Project inquiry and information",
              size: size,
            ),
            ContactBox(size: size)
          ],
        ),
      ),
    );
  }
}
