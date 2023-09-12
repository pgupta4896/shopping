import 'package:flutter/material.dart';
import 'package:shoppingapp/helper/assest_parth.dart';

class TopBar extends StatelessWidget {
  final Function() onBackPress;
  final Function() onMagnifierPress;


  TopBar({required this.onBackPress, required this.onMagnifierPress});

  @override
  Widget build(BuildContext context) {
    AssestPart assestPart = AssestPart();
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: onBackPress,
            child: Image.asset(
              assestPart.backIcon,
              height: 30,
              width: 30,
            ),
          ),
          TextButton(
            onPressed: onMagnifierPress,
            child: Image.asset(
              assestPart.megnifireIcon,
              height: 30,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}
