import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/section/about/about.dart';
import 'package:portfolio/section/contact/contact_me.dart';
import 'package:portfolio/section/know_how/know_how.dart';
import 'package:portfolio/section/top/top.dart';
import 'package:portfolio/section/works/works_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: MyColorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Top(),
            About(),
            KnowHow(),
            WorksWidget(),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
