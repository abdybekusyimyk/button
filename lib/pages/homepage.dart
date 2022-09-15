import "package:flutter/material.dart";

import '../widgets/button.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

int index = 0;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.red,
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff3ac3cb), Color(0xfff85187)]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Button",
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                san: "1",
                ontap: () {},
              ),
              Button(
                san: "2",
                ontap: () {},
              ),
              Button(
                san: "3",
                ontap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
