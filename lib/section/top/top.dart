import 'package:flutter/material.dart';
import 'package:portfolio/section/top/components/menu.dart';

import 'components/glass_content.dart';

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

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
              right: size.width > 1200 ? size.width * 0.1 : 3,
              child: Container(
                constraints: BoxConstraints(
                    maxWidth: size.width * .9, maxHeight: size.height * .9),
                child: Image.asset("assets/images/photo.png"),
              ),
            ),
            const Positioned(
              bottom: 0,
              child: Menu(),
            ),
          ],
        ));
  }
}
