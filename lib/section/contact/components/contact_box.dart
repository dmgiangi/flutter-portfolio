import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/section/contact/components/contact_form.dart';
import 'package:portfolio/section/contact/components/social_card.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                color: Colors.cyan.shade200.withOpacity(0.4),
                iconData: DevIcons.linkedinPlain,
                name: 'LinkedIn',
                press: () {},
              ),
              SocialCard(
                color: Colors.blueAccent.shade200.withOpacity(0.4),
                iconData: DevIcons.githubOriginal,
                name: 'GitHub',
                press: () {},
              ),
              SocialCard(
                color: Colors.lightGreenAccent.shade400.withOpacity(0.4),
                iconData: Icons.whatsapp,
                name: 'WhatsApp',
                press: () {},
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
          ContactForm(
            size: size,
          ),
        ],
      ),
    );
  }
}
