import 'package:flutter/material.dart';
import 'package:portfolio/components/my_outline_button_small.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/recent_works.dart';
import 'package:portfolio/html_services.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    Key? key,
    required this.index,
    required this.onPress,
    required this.parentSize,
  }) : super(key: key);

  final int index;
  final Size parentSize;
  final VoidCallback onPress;

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  late IconData icon;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: widget.parentSize.width > 1200
              ? 0
              : widget.parentSize.width * 0.1),
      child: InkWell(
        onTap: widget.onPress,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 320,
          width: 540,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (isHover)
                const BoxShadow(
                  blurRadius: 30,
                )
            ],
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  recentWorks[widget.index].tools.length,
                  (index) => WorkToolIcon(
                      icon: recentWorks[widget.index].tools[index],
                      parentSize: widget.parentSize),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        recentWorks[widget.index].category.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: widget.parentSize.width > 1200
                                ? 1200 * .02
                                : widget.parentSize.width * 0.025),
                      ),
                      const SizedBox(height: kDefaultPadding / 2),
                      Text(
                        recentWorks[widget.index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: widget.parentSize.width > 1200
                                ? 1200 * .018
                                : widget.parentSize.width * 0.04),
                      ),
                      const SizedBox(height: kDefaultPadding / 2),
                      Text(
                        recentWorks[widget.index].description,
                        style: TextStyle(
                            fontFamily: "Hind",
                            fontWeight: FontWeight.w300,
                            fontSize: widget.parentSize.width > 1200
                                ? 1200 * .013
                                : widget.parentSize.width * 0.025),
                      ),
                      const SizedBox(height: kDefaultPadding),
                      MyOutlineButtonSmall(
                        size: widget.parentSize,
                        text: "See More!",
                        icon: Icons.read_more_outlined,
                        onPress: () async {
                          openLink(link: recentWorks[widget.index].link);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkToolIcon extends StatelessWidget {
  const WorkToolIcon({
    Key? key,
    required this.icon,
    required this.parentSize,
  }) : super(key: key);

  final IconData icon;
  final Size parentSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding),
      child: Icon(
        icon,
        size: parentSize.width > 1200 ? 1200 * 0.03 : parentSize.width * 0.07,
        color: MyColorScheme.middle,
        shadows: [
          BoxShadow(
            color: MyColorScheme.backgroundAccent.withOpacity(0.5),
            blurRadius: 5,
          ),
        ],
      ),
    );
  }
}
