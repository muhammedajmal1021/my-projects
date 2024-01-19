import 'package:flutter/material.dart';

class SignInRow1 extends StatelessWidget {
  const SignInRow1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account? Let's"),
        TextButton(
          onPressed: () {
            print("Sign in button pressed");
          },
          child: const Text(
            "Sign up",
            style: TextStyle(
              color: Color.fromARGB(255, 185, 48, 212),
              decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }
}