import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  //1
  final String category = 'Editor\'s Choice ';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Prabesh Tandukar';
  //2
  @override
  Widget build(BuildContext context) {
    //3
    return Center(
      //TODO: Card1 Decorate Container
      child: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Text(
              category,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Text(
              title,
              style: FooderlichTheme.darkTextTheme.headline5,
            ),
            Text(
              description,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Text(
              chef,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
