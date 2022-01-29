import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

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
              SizedBox(
               height: 10.0,
             ),
              Text(
               "Welcome $name",
                style: TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                   color: Colors.cyan,  
                ),
              ),
              SizedBox(
                height: 10.0,
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
                  onChanged: (value){
                   name = value;
                   setState(() { });
                 },
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
                  height: 30.0,
               ),
              //  ElevatedButton(
              //    onPressed:() {
              //       Navigator.pushNamed(context, MyRoutes.homeRoute);
              //    }, 
              //    child: Text ("Login"),
              //    style: TextButton.styleFrom(minimumSize: Size(120, 40)),
              //   ),
              InkWell(
                onTap: () async{
                  setState(() {
                    changeButton = true;
                  });

                  await Future.delayed(Duration(seconds: 1));
                   Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer( 
                  duration: Duration(seconds: 1),
                   height : 40,
                   width : changeButton ? 40 : 120,
                   alignment: Alignment.center,
                   child: changeButton ? Icon(Icons.done, color: Colors.white,) : Text(
                      "Login",
                      style: TextStyle(
                         fontWeight: FontWeight.normal,
                         fontSize: 15,
                      ),
                   ),
                   decoration: BoxDecoration(
                     color: Colors.cyan,
                    //  shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                     borderRadius: BorderRadius.circular(changeButton ? 40 : 10),
                   ),
                 ),
              )
               ],),
             )
       
           ],
         ),
       ));
  }
}