import 'package:flutter/material.dart';
import 'package:shoppingapp/helper/textfield.dart';
import 'package:shoppingapp/helperView/topBar.dart';

class seetingView extends StatefulWidget {
  const seetingView({super.key});

  @override
  State<seetingView> createState() => _seetingViewState();
}

class _seetingViewState extends State<seetingView> {
  final name = TextEditingController();
  final password = TextEditingController();
  final dateOfBirth = TextEditingController();
  bool saleValuBool = false;
  bool newArrivalsBool = false;
  bool DeliveryBool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopBar(
                  onBackPress: () {
                    Navigator.pop(context);
                  },
                  onMagnifierPress: () {
                    // Perform actions when magnifier button is pressed
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Personal infomation",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Textfield(
                      hintText: "Full name",
                      labelText: "Full name",
                      controller: name),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Textfield(
                      hintText: "Date of Birth",
                      labelText: "Date of Birth",
                      controller: dateOfBirth),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                              elevation: 16,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20))),
                              context: context,
                              builder: (context) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    //// body of bottom sheet ////
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        // color: Colors.grey,
                                        height: 10,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(40.0),
                                              bottomRight:
                                                  Radius.circular(40.0),
                                              topLeft: Radius.circular(40.0),
                                              bottomLeft:
                                                  Radius.circular(40.0)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        "Password change",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                    ),
                                    Textfield(
                                        hintText: "Old password",
                                        labelText: "old Password",
                                        controller: password),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Forgot Password ?",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Textfield(
                                              hintText: "new password",
                                              labelText: "New password",
                                              controller: password),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Textfield(
                                              hintText: "Repeat New password",
                                              labelText: "Repeat New Password",
                                              controller: password),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: ElevatedButton(
                                              onPressed: () {
                                                //action
                                              },
                                              child: Text(
                                                "Save password",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.red)),
                                        )
                                      ],
                                    )
                                  ],
                                );
                              },
                            );
                          },
                          child: Text(
                            "chnage",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          )),
                    ],
                  ),
                ),
                Textfield(
                    hintText: "password",
                    labelText: "Password",
                    controller: password),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "sales",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      Switch(
                        value: saleValuBool,
                        onChanged: (value) {
                          setState(() {
                            saleValuBool = value;
                          });
                        },
                      )
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New arrivals",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    Switch(
                      value: newArrivalsBool,
                      onChanged: (value) {
                        setState(() {
                          newArrivalsBool = value;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery status changes",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    Switch(
                      value: DeliveryBool,
                      onChanged: (value) {
                        setState(() {
                          DeliveryBool = value;
                        });
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
