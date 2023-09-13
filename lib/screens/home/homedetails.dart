import 'package:flutter/material.dart';
import 'package:shoppingapp/helper/assest_parth.dart';

class detailsHome extends StatefulWidget {
  const detailsHome({super.key});

  @override
  State<detailsHome> createState() => _detailsHomeState();
}

class _detailsHomeState extends State<detailsHome> {
  AssestPart assestPart = AssestPart();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.pink,
              child: Image.asset(
                assestPart.homecover,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Street clothes",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "sale",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "super summer sale",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  //actio
                },
                child: Text(
                  "View all",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              )
            ],
          ),
        ),
        Expanded(
            child: GridView.builder(
          itemCount: 10,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
                child: Container(
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        assestPart.demo4,
                        height: 140,
                        width: double.infinity,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("super summer sale",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                              Text("\$20  ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey)),
                              Text('  \$15',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.red)),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
          },
        ))
      ]),
    );
  }
}
