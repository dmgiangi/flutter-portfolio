import 'package:flutter/material.dart';
import 'package:portfolio/section/top/components/menu.dart';

import 'components/glass_content.dart';

class Top extends StatelessWidget {
  const Top({
    Key? key,
    required this.reachSection,
    required this.sectionKeys,
  }) : super(key: key);

  final Function reachSection;
  final Map<String, GlobalKey<State<StatefulWidget>>> sectionKeys;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        constraints: BoxConstraints(
          minHeight: size.width > size.height ? size.height : size.width,
        ),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/top_pattern.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            GlassContent(size: size),
            Positioned(
              bottom: 00,
              right: size.width > 1200 ? 1200 * 0.1 : 3,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: size.width > 1200 ? 1200 * .8 : size.width * .7,
                ),
                child: Image.asset("assets/images/photo.png"),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Menu(
                reachSection: reachSection,
                sectionKeys: sectionKeys,
              ),
            ),
          ],
        ));
  }
}
