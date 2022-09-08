import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/entities/social_data.dart';

final List<SocialData> mySocial = [
  SocialData(
    color: Colors.cyan.shade200.withOpacity(0.4),
    iconData: DevIcons.linkedinPlain,
    name: 'LinkedIn',
    link: "https://www.linkedin.com/in/gianluigi-de-marco-890671195/",
  ),
  SocialData(
    color: Colors.blueAccent.shade200.withOpacity(0.4),
    iconData: DevIcons.githubOriginal,
    name: 'GitHub',
    link: "https://github.com/dmgiangi",
  ),
  SocialData(
    color: Colors.lightGreenAccent.shade400.withOpacity(0.4),
    iconData: Icons.whatsapp,
    name: 'WhatsApp',
    link: "https://api.whatsapp.com/send/?phone=3460696468",
  ),
];
