import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  //1
  final String category = '';
  final String title = '';
  final String description = '';
  final String chef = '';
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
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
      ),
      //TODO: Add a stack of text
    );
  }
}
