import 'package:flutter/material.dart';

class shopView extends StatelessWidget {
  const shopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Categories",
          style: TextStyle(color: Colors.black),
        ),
      ),
      
    );
  }
}
