import 'package:flutter/material.dart';
//1
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  //1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  //2
  const Fooderlich({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //2
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      //3
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
