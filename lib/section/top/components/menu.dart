import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/constants.dart';

class Menu extends StatefulWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = -1;
  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Contact",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      constraints:
          BoxConstraints(minWidth: size.width > 1200 ? 1200 : size.width),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: MyColorScheme.background,
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(menuItems.length, menuItemBuilder),
      ),
    );
  }

  Widget menuItemBuilder(index) => InkWell(
        onHover: (isHover) {
          setState(() {
            hoverIndex = isHover ? index : -1;
          });
        },
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: AnimatedDefaultTextStyle(
          style: TextStyle(
              fontFamily: "Montserrat",
              color: MyColorScheme.dark,
              fontSize: MediaQuery.of(context).size.width > 1200
                  ? MediaQuery.of(context).size.width * 0.018
                  : MediaQuery.of(context).size.width * 0.037,
              fontWeight: selectedIndex == index
                  ? FontWeight.w700
                  : hoverIndex == index
                      ? FontWeight.w500
                      : FontWeight.w300,
              decoration: selectedIndex == index
                  ? TextDecoration.underline
                  : TextDecoration.none),
          duration: const Duration(milliseconds: 100),
          child: Text(
            menuItems[index],
          ),
        ),
      );
}
