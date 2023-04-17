import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String lableText;
  final TextEditingController controller;

  const MyTextField(
      {required this.lableText, required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: TextField(
        // controller
        controller: controller,
        obscureText: lableText == "password" ? true : false,
        style: const TextStyle(fontSize: 20.0, color: Colors.black),
        decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 231, 106, 106)),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            label: Text(
              lableText,
              style: const TextStyle(
                fontFamily: 'Segoe ui',
                fontSize: 20.0,
                color: Color.fromRGBO(231, 106, 106, 1), // same as #E76A6A
              ),
            )),
      ),
    );
  }
}
