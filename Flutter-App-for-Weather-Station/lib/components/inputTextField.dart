import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class inputTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const inputTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade900),
                borderRadius: BorderRadius.circular(10)),
            fillColor: Colors.grey.shade100,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade600)),
      ),
    );
  }
}
