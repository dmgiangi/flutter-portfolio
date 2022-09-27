import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key? key,
    required this.size,
    required this.text,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  final Size size;
  final String text;
  final IconData icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 1.5,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        backgroundColor: MyColorScheme.background,
        foregroundColor: MyColorScheme.light,
        side: const BorderSide(color: MyColorScheme.dark),
      ),
      onPressed: onPress,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: MyColorScheme.middle,
            size: size.width > 1200 ? size.width * 0.03 : size.width * 0.06,
          ),
          const SizedBox(width: kDefaultPadding),
          Text(
            text,
            style: TextStyle(
              fontSize:
                  size.width > 1200 ? size.width * 0.018 : size.width * 0.036,
              color: MyColorScheme.middle,
            ),
          )
        ],
      ),
    );
  }
}
