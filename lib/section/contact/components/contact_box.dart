import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/my_social.dart';
import 'package:portfolio/html_services.dart';
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
            children: List.generate(
              mySocial.length,
              (index) => SocialCard(
                iconData: mySocial[index].iconData,
                name: mySocial[index].name,
                color: mySocial[index].color,
                press: () async {
                  openLink(link: mySocial[index].link);
                },
                size: size,
              ),
            ),
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
