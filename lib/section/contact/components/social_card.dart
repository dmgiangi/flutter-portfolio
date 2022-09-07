import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/constants.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({
    Key? key,
    required this.iconData,
    required this.name,
    required this.color,
    required this.press,
  }) : super(key: key);

  final IconData iconData;
  final String name;
  final Color color;
  final VoidCallback press;

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding * 1.5,
          ),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (isHover)
                const BoxShadow(blurRadius: 30, color: MyColorScheme.dark)
            ],
          ),
          child: Row(
            children: [
              Icon(widget.iconData),
              const SizedBox(width: kDefaultPadding),
              Text(widget.name),
            ],
          ),
        ),
      ),
    );
  }
}
