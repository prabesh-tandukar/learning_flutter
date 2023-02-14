import 'package:flutter/material.dart';
import 'ownFooderlich_theme.dart';

void main() {
  runApp(Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      title: 'Fooderlich',
      theme: theme,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Nav Bar',
            style: theme.textTheme.headline6,
          ),
        ),
        body: Center(
          child: Text(
            'Lets start cooking',
            style: theme.textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
