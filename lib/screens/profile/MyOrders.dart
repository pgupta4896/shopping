import 'package:flutter/material.dart';
import 'package:shoppingapp/helper/assest_parth.dart';

import '../../helperView/topBar.dart';

class Myorders extends StatefulWidget {
  const Myorders({super.key});

  @override
  State<Myorders> createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {
  AssestPart assestPart = AssestPart();
  List local = [
    localModel(Title: "jdgd"),
    localModel(Title: "fhsdjhj"),
    localModel(Title: "jdgd"),
    localModel(Title: "fhsdjhj"),
    localModel(Title: "jdgd"),
    localModel(Title: "fhsdjhj"),
    localModel(Title: "jdgd"),
    localModel(Title: "fhsdjhj"),
    localModel(Title: "jdgd"),
    localModel(Title: "fhsdjhj"),
  ];
  int selectedButtonIndex = 0;

  // Define button colors
  final Color defaultButtonColor = Colors.white;
  final Color selectedButtonColor = Colors.black;
  final Color defaultButtonColorforground = Colors.black;
  final Color selectedButtonColorForground = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // top view
            TopBar(
              onBackPress: () {
                Navigator.pop(context);
              },
              onMagnifierPress: () {
                // Perform actions when magnifier button is pressed
              },
            ),
            
            /////button/////
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildButton(0, "Delivery", () {
                        print("ds");
                      }),
                      buildButton(1, "Processing", () {
                        print("jd");
                      }),
                      buildButton(2, "Cancelled", () {
                        //
                      }),
                    ]),
              ),
            ),

            ///button end////

            // ListView.builder(
            //   itemBuilder: (context, index) {
            //     // Create a custom widget for each item in the list
            //     return Card(
            //       child: Text(local[index]),
            //     );
            //   },
            //   itemCount: local.length,
            // )
          ],
        ),
      )),
    );
  }

  Widget buildButton(int index, String text, VoidCallback onPressed) {
    return TextButton(
      onPressed: () {
        // Update the selected button index
        setState(() {
          selectedButtonIndex = index;
        });
        // Perform your action here if needed
        onPressed.call();
      },
      child: Text(
        text,
        style: TextStyle(
          color: selectedButtonIndex == index
              ? selectedButtonColorForground
              : defaultButtonColorforground, // Change text color based on selection
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: selectedButtonIndex == index
            ? selectedButtonColor
            : defaultButtonColor, // Change background color based on selection
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}

class localModel {
  final Title;
  localModel({this.Title});
}
