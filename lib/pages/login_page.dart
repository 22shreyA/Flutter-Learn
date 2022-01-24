import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
       child: Center(
         child: Text(
           "Welcome to Login Page",
           style: TextStyle(
             fontSize: 25,
             color: Colors.blueGrey,
             fontWeight: FontWeight.bold
           ),),

       ),
    );
  }
}