import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {

    final int day = 10;
    final String name = "Shreya"; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("First Flutter App"),
        ),
        body: Center(
            child: Container(
              child: Text("Hey $name! Let's learn flutter in $day days"),
            ),
          ),
        drawer: MyDrawer(),
        );
  }
}