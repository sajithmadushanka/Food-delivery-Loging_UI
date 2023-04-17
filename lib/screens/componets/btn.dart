import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {
  final String btnName;
  const MyBtn({required this.btnName, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: Container(
        width: 380,
        height: 62,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 238, 81, 81),
            borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: Text(
          btnName,
          style: const TextStyle(
              fontFamily: 'Segoe ui',
              fontSize: 20,
              color: Color.fromARGB(255, 253, 253, 253),
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
