import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

import 'homepage.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: "Montserrat",
              bodyColor: MyColorScheme.dark,
              displayColor: MyColorScheme.dark,
            ),
      ),
      home: const HomePage(),
    );
  }
}
