import 'package:flutter/material.dart';
import 'package:logininterface/Screens/Login/login_screen.dart';
import 'package:logininterface/Screens/SignUp/SignUpScreen.dart';
import 'package:logininterface/Screens/Welcome/welcome_screen.dart';
import 'package:logininterface/constants.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SignUpScreen(),
    );
  }
}
