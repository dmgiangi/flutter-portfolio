import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/my_knowledge.dart';

class KnowledgeCard extends StatefulWidget {
  const KnowledgeCard({
    Key? key,
    required this.index,
    required this.parentSize,
  }) : super(key: key);

  final int index;
  final Size parentSize;

  @override
  _KnowledgeCardState createState() => _KnowledgeCardState();
}

class _KnowledgeCardState extends State<KnowledgeCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin:
            EdgeInsets.all(kDefaultPadding * widget.parentSize.width * 0.0013),
        //height: 256,
        //width: 256,
        decoration: BoxDecoration(
          color: knowledge[widget.index].color[100],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isHover)
              BoxShadow(
                offset: const Offset(0, 30),
                blurRadius: 30,
                color: knowledge[widget.index].color,
              )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.all(
                  kDefaultPadding * 1.5 * widget.parentSize.width * 0.0007),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      offset: const Offset(0, 20),
                      blurRadius: 30,
                      color: knowledge[widget.index].color,
                    )
                  else
                    BoxShadow(
                      offset: const Offset(0, 5),
                      blurRadius: 5,
                      color: knowledge[widget.index].color,
                    ),
                ],
              ),
              child: Icon(
                knowledge[widget.index].icon,
                size: widget.parentSize.width * 0.03,
                color: MyColorScheme.dark,
              ),
            ),
            SizedBox(height: kDefaultPadding * widget.parentSize.width * 0.001),
            Text(
              knowledge[widget.index].title,
              style: TextStyle(
                  fontSize: widget.parentSize.width * 0.018,
                  color: MyColorScheme.dark),
            ),
          ],
        ),
      ),
    );
  }
}
