import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

const kTextColor = MyColorScheme.middle;
const kTextLightColor = MyColorScheme.light;

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: const Offset(0, 50),
  blurRadius: 50,
  color: MyColorScheme.black.withOpacity(.3),
);

const kDefaultOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: MyColorScheme.dark,
  ),
);

const kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);
