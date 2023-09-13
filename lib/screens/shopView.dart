import 'package:flutter/material.dart';

class shopView extends StatelessWidget {
  const shopView({super.key});

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade200,
          centerTitle: true,
          title: const Text(
            "Categories",
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            indicatorColor: const Color.fromARGB(255, 16, 16, 16),
            tabs: [
              Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
              Tab(icon: Icon(Icons.camera_alt), text: "Tab 2"),
              Tab(icon: Icon(Icons.camera_alt), text: "Tab 2"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Content for Tab 1
            Center(
              child: Text("Tab 1 Content"),
            ),
            // Content for Tab 2
            Center(
              child: Text("Tab 2 Content"),
            ),
            Center(
              child: Text("Tab 2 Content"),
            ),
          ],
        ),
      ),
    );
  }
}
