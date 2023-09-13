import 'package:flutter/material.dart';
import 'package:shoppingapp/helper/assest_parth.dart';
import 'package:shoppingapp/screens/home/homedetails.dart';

class homeView extends StatefulWidget {
  const homeView({super.key});

  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  AssestPart assestPart = AssestPart();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(alignment: Alignment.bottomLeft, children: [
            Container(
              width: double.infinity,
              height: 500,
              color: Colors.pink,
              child: Image.asset(
                assestPart.demo3,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fashion",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "sale",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 30.0, // Set the desired height
                        width: 130.0, // Set the desired width
                        child: ElevatedButton(
                          onPressed: () {
                            // action
                          },
                          child: Text(
                            "check",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Set the corner radius
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "You've never seen it before!",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => detailsHome())
                    );
                      },
                      child: Text(
                        "view all",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shadowColor: Colors.black,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.red,
                child: Stack(
                    alignment: Alignment.topRight,
                    fit: StackFit.expand,
                    children: [
                      Image.asset(assestPart.demo2, fit: BoxFit.fill),
                      Text(
                        "NEW",
                        style: TextStyle(
                            backgroundColor: Colors.black,
                            color: Colors.white,
                            fontSize: 15),
                      )
                    ]),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
