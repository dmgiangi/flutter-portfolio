import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/section/about/about.dart';
import 'package:portfolio/section/contact/contact_me.dart';
import 'package:portfolio/section/know_how/know_how.dart';
import 'package:portfolio/section/top/top.dart';
import 'package:portfolio/section/works/works_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Map<String, GlobalKey> sectionKey = {
      "Top": GlobalKey(),
      "About": GlobalKey(),
      "Know How": GlobalKey(),
      "Recent Works": GlobalKey(),
      "Contact Me": GlobalKey(),
    };

    reachSection(GlobalKey key) {
      setState(() {
        Scrollable.ensureVisible(key.currentContext ?? context);
      });
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: MyColorScheme.background,
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Top(
              key: sectionKey["Top"],
              sectionKeys: sectionKey,
              reachSection: reachSection,
            ),
            About(
              key: sectionKey["About"],
              sectionKeys: sectionKey,
              reachSection: reachSection,
            ),
            KnowHow(
              key: sectionKey["Know How"],
            ),
            WorksWidget(
              key: sectionKey["Recent Works"],
              sectionKeys: sectionKey,
              reachSection: reachSection,
            ),
            ContactSection(
              key: sectionKey["Contact Me"],
            ),
          ],
        ),
      ),
    );
  }
}
