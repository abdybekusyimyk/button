import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String? san;
  final void Function() ontap;

  Button({
    required this.ontap,
    this.san,
    Key? key,
  }) : super(key: key);

  bool tap = false;

  Color blue = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 70,
      color: Colors.white30,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: ontap,
          child: Container(
            width: 10,
            height: 1,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
              gradient: const LinearGradient(
                begin: Alignment(0.3, -3),
                end: Alignment(-0.8, 1),
                colors: [
                  Color.fromARGB(255, 228, 232, 228),
                  Color.fromARGB(255, 109, 248, 81)
                ],
              ),
            ),
            child: Center(
              child: Text(
                san!,
                style: const TextStyle(fontSize: 40, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
