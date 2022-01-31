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

  final _formKey = GlobalKey<FormState>();
  
  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()){
      setState(() {
          changeButton = true;
      });          
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
          changeButton = false;
      });
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
       child: SingleChildScrollView(
         child: Form(
           key: _formKey,
           child: Column(
             children: [
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
                   validator: (value) {
                     return value!.isEmpty ? "Username cannot be empty" : null;
                   },
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
                   validator: (value) {
                     return value!.isEmpty ? "Password cannot be empty" : (value.length < 6 ? "Password length should be atleast 6 " : null );
                   },
                 ),
                 const SizedBox(
                    height: 30.0,
                 ),
                Material(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(changeButton ? 40 : 10),
                  child: InkWell(
                    splashColor: Colors.blue[900],
                    onTap: () => moveToHome(context),
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
                     ),
                  ),
                )
              ],),
            )    
          ],),
         ),
        )
    );
  }
}