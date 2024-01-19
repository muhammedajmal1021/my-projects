import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print("Forgot password button pressed");
      },
      child: const Text(
        "Forgot password?",
        style: TextStyle(color: Color.fromARGB(255, 158, 24, 199)),
      ),
    );
  }
}