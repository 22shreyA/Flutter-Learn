import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
       child: SingleChildScrollView(
         child: Column(
           children: [
            //  Container(
            //    height: 300,
            //    width: 500,
            //    alignment: Alignment.topCenter,
            //    decoration: const BoxDecoration(
            //       image: DecorationImage(image: AssetImage("assets/images/login_image.png"),
            //       fit: BoxFit.fill),
            //    ),
            //  ),
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.fill,
              height: 300,
              width: 300,
            ),
             const SizedBox(
               height: 10,
             ),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 32.0),
               child: Column(children: [
                 TextFormField(
                 decoration: InputDecoration(
                   hintText: "Enter Username ",
                   labelText: "Username",
                   hintStyle: TextStyle(
                     fontSize: 10,
                   )
                 ),
               ),
               TextFormField(
                 obscureText: true,
                 decoration: InputDecoration(
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
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                 }, 
                 child: const Text ("Login")),
               ],),
             )
       
           ],
         ),
       ));
  }
}