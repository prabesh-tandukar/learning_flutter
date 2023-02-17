import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';

//1
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  //7
  int _selectedIndex = 0;
  //8
  static List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),

    //TODO: Replace with Card3
    Container(color: Colors.blue),
  ];
  //9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          //2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectedIndex],
      // body: Center(
      //   child: Text(
      //     "Let's get cooking",
      //     style: Theme.of(context).textTheme.headline1,
      //   ),
      // ),
      //4
      bottomNavigationBar: BottomNavigationBar(
        //5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        //10
        currentIndex: _selectedIndex,
        //11
        onTap: _onItemTapped,
        //6
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card3'),
        ],
      ),
    );
  }
}
