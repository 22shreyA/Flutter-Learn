import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
       child: Column(
         children: [
           Container(
             height: 300,
             width: 500,
             alignment: Alignment.topCenter,
             decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/login_image.png"),
                fit: BoxFit.fill),
             ),
             ),
           const SizedBox(
             height: 10,
           ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 32.0),
             child: Column(children: [
               TextFormField(
               decoration: const InputDecoration(
                 hintText: "Enter Username ",
                 labelText: "Username",
                 hintStyle: TextStyle(
                   fontSize: 10,
                 )
               ),
             ),
             TextFormField(
               obscureText: true,
               decoration: const InputDecoration(
                 hintText: "Enter Password ",
                 labelText: "Password",
                 hintStyle: TextStyle(
                   fontSize: 10,
                 )
               ),
             ),
             const SizedBox(
                height: 10,
             ),
             ElevatedButton(
               onPressed:() {
                  
               }, 
               child: Text ("Login")),
             ],),
           )

         ],
       ));
  }
}