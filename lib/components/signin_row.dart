import 'package:flutter/material.dart';

class SignInRow extends StatelessWidget {
  const SignInRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Brands &influsive click here to ",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        TextButton(
          onPressed: () {
            print("Sign in button pressed");
          },
          child: const Text(
            "Sign up",
            style: TextStyle(
              color: Color.fromARGB(255, 185, 48, 212),
              fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}