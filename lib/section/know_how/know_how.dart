import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/my_knowledge.dart';
import 'package:portfolio/section/know_how/components/knowledge_card.dart';

import '../../components/section_title.dart';

class KnowHow extends StatelessWidget {
  const KnowHow({Key? key}) : super(key: key);

  final String subTitle = "My Know How";
  final String title = "Technology that i use";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        padding: const EdgeInsets.only(
          top: kDefaultPadding * 4,
          bottom: kDefaultPadding * 2,
        ),
        constraints:
            BoxConstraints(minWidth: size.width > 1200 ? 1200 : size.width),
        width: size.width > 1200 ? 1200 : size.width,
        child: Column(
          children: [
            SectionTitle(size: size, subTitle: subTitle, title: title),
            const SizedBox(height: kDefaultPadding * 2),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                knowledge.length,
                (index) => KnowledgeCard(
                  index: index,
                  parentSize: size,
                ),
              ),
            ),
            const SizedBox(height: kDefaultPadding * 8)
          ],
        ),
      ),
    );
  }
}
