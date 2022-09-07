import 'package:dev_icons/dev_icons.dart';
import 'package:portfolio/data/entities/work.dart';

List<Work> recentWorks = [
  Work(
    category: "Dart & Flutter",
    title: "Portfolio",
    description: "A simple portfolio made with flutter3.0 and dart (this)",
    link: "https://dmgiangi.dev",
    tools: [
      DevIcons.dartPlain,
      DevIcons.flutterPlain,
      DevIcons.gimpPlain,
      DevIcons.linuxPlain,
    ],
  ),
  Work(
    category: "Java & Spring",
    title: "TerraViva - backend",
    description: "Backend of an Open source social for seed savers.",
    link: "https://github.com/Terra-Viva-Project/terra-viva-backend",
    tools: [
      DevIcons.javaPlain,
      DevIcons.springPlain,
      DevIcons.mongodbPlain,
      DevIcons.mysqlPlain,
      DevIcons.linuxPlain
    ],
  ),
  Work(
    category: "C & ESP Framework",
    title: "Proofing Chamber",
    description: "A microcontroller system for controlling a leavening cell.",
    link: "https://github.com/dmgiangi/esp32-Thinger.io-proofing-chamber",
    tools: [
      DevIcons.cLine,
    ],
  ),
  Work(
    category: "Java & Spring",
    title: "BrewerHub",
    description: "A Java & Spring Porting of PunkApi project",
    link: "https://github.com/dmgiangi/brewer-hub",
    tools: [
      DevIcons.mysqlPlain,
      DevIcons.javaPlain,
      DevIcons.springPlain,
      DevIcons.linuxPlain,
    ],
  ),
];
