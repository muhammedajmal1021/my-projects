
import 'package:flutter/material.dart';
import 'package:signin_page/signin.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:LoginPage(), 
    );
  }
}