import 'package:flutter/material.dart';
import 'package:shoppingapp/helper/assest_parth.dart';
import 'package:shoppingapp/screens/profile/myOrders.dart';
import 'package:shoppingapp/screens/profile/sestting.dart';

class profileView extends StatefulWidget {
  @override
  State<profileView> createState() => _profileViewState();
}

class _profileViewState extends State<profileView> {
  AssestPart assestPart = AssestPart();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                "My profile",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 40,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Prakhar gupta",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ),
                              Text(
                                "guptaprakhar156@gmail.com",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // buton
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Myorders()),
                    );
                  },
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My order",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Already have a order",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]),
                        Image.asset(assestPart.rightArrow,
                            height: 20, width: 50)
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextButton(
                  onPressed: () {
                    //action
                  },
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shipping",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "address...",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]),
                        Image.asset(assestPart.rightArrow,
                            height: 20, width: 50)
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextButton(
                  onPressed: () {
                    //action
                  },
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Payment methods",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Visa",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]),
                        Image.asset(assestPart.rightArrow,
                            height: 20, width: 50)
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextButton(
                  onPressed: () {
                    //action
                  },
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Promocodes",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "You have special promocode",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]),
                        Image.asset(assestPart.rightArrow,
                            height: 20, width: 50)
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextButton(
                  onPressed: () {
                    //action
                  },
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My reviews",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Reviews for ",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]),
                        Image.asset(assestPart.rightArrow,
                            height: 20, width: 50)
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextButton(
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => seetingView()),
                    );
                  },
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Settings",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Notifications ,password",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]),
                        Image.asset(assestPart.rightArrow,
                            height: 20, width: 50)
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    )));
  }
}
