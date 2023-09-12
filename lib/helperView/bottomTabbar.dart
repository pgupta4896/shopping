import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/bagview.dart';
import 'package:shoppingapp/screens/favoritesView.dart';
import 'package:shoppingapp/screens/home.dart';
import 'package:shoppingapp/screens/profileView.dart';
import 'package:shoppingapp/screens/shopView.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({super.key});

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  int currentIndex = 0;
  List myscreen = <Widget>[
    homeView(),
    shopView(),
    bagView(),
    favoritesView(),
    profileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: myscreen[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.blue.shade200,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  backgroundColor: Colors.blue,
                  activeIcon: Icon(Icons.home),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  backgroundColor: Colors.blue,
                  activeIcon: Icon(Icons.shopping_cart),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined),
                   backgroundColor: Colors.blue,
                  activeIcon: Icon(Icons.shopping_bag_outlined),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  backgroundColor: Colors.blue,
                  activeIcon: Icon(Icons.favorite),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  backgroundColor: Colors.blue,
                  activeIcon: Icon(Icons.person),
                  label: ""),
            ]));
  }
}
