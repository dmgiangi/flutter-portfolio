import 'package:flutter/material.dart';
import 'package:portfolio/components/hire_me_card.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/recent_works.dart';
import 'package:portfolio/section/works/components/recent_work_card.dart';

class WorksWidget extends StatelessWidget {
  const WorksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: MyColorScheme.light.withOpacity(.2),
      ),
      child: Center(
        child: Container(
          padding: const EdgeInsets.only(
            top: kDefaultPadding,
            bottom: kDefaultPadding,
          ),
          constraints:
              BoxConstraints(minWidth: size.width > 1200 ? 1200 : size.width),
          width: size.width > 1200 ? 1200 : size.width,
          child: Column(
            children: [
              Transform.translate(
                offset: const Offset(0, -120),
                child: HireMeCard(size: size),
              ),
              SectionTitle(
                title: "Recent Works",
                subTitle: "My Quake Arenas",
                size: size,
              ),
              const SizedBox(height: kDefaultPadding * 2),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: kDefaultPadding * 4,
                mainAxisSpacing: kDefaultPadding * 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  recentWorks.length,
                  (index) => RecentWorkCard(
                    index: index,
                    parentSize: size,
                    onPress: () {},
                  ),
                ),
              ),
              const SizedBox(height: kDefaultPadding * 8)
            ],
          ),
        ),
      ),
    );
  }
}
