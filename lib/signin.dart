import 'package:flutter/material.dart';
import 'package:signin_page/components/button.dart';
import 'package:signin_page/components/signin_row.dart';
import 'package:signin_page/components/signin_row1.dart';
import 'package:signin_page/components/textfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final phonnuber = TextEditingController();
  final otp = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Center(
                  child: Text(
                    "HELLO 👋",
                    style: TextStyle(
                        fontSize: screenWidth * 0.06,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Unlock a world of',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: screenWidth * 0.03,
                  ),
                ),
                Text(
                  'exclusive benefits',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: screenWidth * 0.03,
                  ),
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: phonnuber,
                  hintText: 'Mobile number',
                  obscureText: false,
                  width: screenWidth * 0.8,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: otp,
                  hintText: 'Enter your password',
                  obscureText: true,
                  width: screenWidth * 0.8,
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       Text(
                        'Forgot your password?',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 167, 40, 206),
                          decoration: TextDecoration.underline,
                          fontSize: screenWidth * 0.030,
                          
                          
                        ),
                      ),
                    
                      Text(
                        'Login with OTP?',
                        style: TextStyle(
                          color:const Color.fromARGB(255, 167, 40, 206),
                          decoration: TextDecoration.underline,
                          fontSize: screenWidth * 0.030,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                MyButton(
                  onTap: signUserIn,
                  width: screenWidth * 0.6,
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInRow(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or  with',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: screenWidth * 0.03,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.google, color: Colors.red),
                    ),
                    IconButton(
                      onPressed: () {},
                       icon: const FaIcon(FontAwesomeIcons.linkedin ,color: Colors.blue,),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.instagram,color: Colors.red,size: 30,),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.xbox,color: Colors.black),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.facebook,color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInRow1(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}