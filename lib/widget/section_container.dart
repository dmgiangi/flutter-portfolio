import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class SectionContainer extends StatelessWidget {
  final Widget _child;

  const SectionContainer({Key? key, required Widget child})
      : _child = child,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: kIsWeb ? 1200 : context.size?.width,
        color: MyColorScheme.background,
        child: _child);
  }
}
