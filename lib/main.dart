import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.cyan),
      // debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
        // textTheme: GoogleFonts.latoTextTheme(),
      ),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.loginRoute : (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
      }
    );
  }
}

