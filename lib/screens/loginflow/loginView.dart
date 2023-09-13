import 'package:flutter/material.dart';
import 'package:shoppingapp/helper/textfield.dart';
import 'package:shoppingapp/helperView/bottomTabbar.dart';

class loginView extends StatefulWidget {
  const loginView({super.key});

  @override
  State<loginView> createState() => _loginViewState();
}

class _loginViewState extends State<loginView> {
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Text("Login",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Textfield(
                  hintText: "Email", controller: email, labelText: "Email"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Textfield(
                  hintText: "password",
                  controller: email,
                  labelText: "password"),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      //action
                    },
                    child: Text("Forget your password?",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold))),
              ],
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => bottomNavigationBar(),
                      ));
                },
                child: Text("Login",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    )),
              ),
            )
          ],
        ),
      ))),
    );
  }
}
