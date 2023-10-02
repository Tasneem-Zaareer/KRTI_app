import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      required this.hintText,
      required this.label,
      this.controller,
      required this.obscureText,
      required this.mySuffixIcon});

  final controller;
  final String hintText;
  final String label;
  final bool obscureText;
  final IconData mySuffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.shade500),
        label: Text(label),
        labelStyle: TextStyle(color: Colors.grey.shade500),
        //border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade500,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade500,
            width: 2,
          ),
        ),
        fillColor: Colors.grey.shade100,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        suffix: Icon(
          mySuffixIcon,
          color: Colors.grey.shade500,
          size: 20,
        ),
      ),
      onChanged: (email) {
        // userEmail = email;
      },
      onSubmitted: (data) {},
    );
  }
}
