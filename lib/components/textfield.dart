import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText, required double width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: obscureText ? TextInputType.number : TextInputType.text,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            enabledBorder: const OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(20),

              
              borderSide: BorderSide(color: Color.fromARGB(255, 236, 235, 242)),
            ),
            focusedBorder: const OutlineInputBorder(
              // borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Color.fromARGB(255, 171, 25, 201)),
            ),
            fillColor: const Color.fromARGB(255, 240, 236, 236), 
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500]),
            labelStyle: const TextStyle(color: Colors.black),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}