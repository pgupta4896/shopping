import 'package:flutter/material.dart';
import 'package:shoppingapp/helperView/bottomTabbar.dart';
import 'package:shoppingapp/screens/loginflow/loginView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping',
      debugShowCheckedModeBanner: false,
      home: loginView(),
    );
  }
}
