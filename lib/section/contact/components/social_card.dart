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
    required this.size,
    this.isEnabled = true,
  }) : super(key: key);

  final Size size;
  final IconData iconData;
  final String name;
  final Color color;
  final VoidCallback press;
  final bool isEnabled;

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Color colorToUse = widget.isEnabled ? widget.color : Colors.grey;
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
            horizontal: kDefaultPadding,
          ),
          decoration: BoxDecoration(
            color: colorToUse,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              if (isHover && widget.isEnabled)
                BoxShadow(
                  blurRadius: 20,
                  color: colorToUse.withOpacity(1),
                )
            ],
          ),
          child: Row(
            children: [
              Icon(
                widget.iconData,
                size: widget.size.width * 0.018,
                color: MyColorScheme.dark,
              ),
              const SizedBox(width: kDefaultPadding),
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: widget.size.width * 0.014,
                  color: MyColorScheme.dark,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
