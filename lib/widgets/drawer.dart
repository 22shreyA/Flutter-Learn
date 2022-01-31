import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String ImageUrl = 
     "https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn1.iconfinder.com%2Fdata%2Ficons%2Favatar-97%2F32%2Favatar-02-512.png&imgrefurl=https%3A%2F%2Fwww.iconfinder.com%2Ficons%2F4878675%2Favatar_profile_user_icon&tbnid=mloz5mmGRSKEGM&vet=12ahUKEwjXjazJ69v1AhX8_zgGHZIiDa8QMygOegUIARCBAg..i&docid=tWnt8uiZZPjV-M&w=512&h=512&itg=1&q=avatar%20for%20profile&ved=2ahUKEwjXjazJ69v1AhX8_zgGHZIiDa8QMygOegUIARCBAg";
    return Drawer(
       child: Container(
        //  color : Colors.cyan,                                            // if we want the entire drawer to have same bgcolor so we wrap the ListView in the widget (container) and applied the color  
         child: ListView(
           padding: EdgeInsets.zero,
           children: [
             DrawerHeader(
              //  decoration: BoxDecoration(color: Colors.green),            // for the bgcolor of th header
               padding : EdgeInsets.zero,
               child: UserAccountsDrawerHeader(
                 margin : EdgeInsets.zero,
                 accountName: Text("Shreya Seth"), 
                 accountEmail: Text("sks.220801@gmail.com"),
                //  currentAccountPicture: Image.network(ImageUrl),    **not any particular avtar
                 currentAccountPicture: CircleAvatar(
                   backgroundImage: NetworkImage(ImageUrl),
                 ),
               )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text(
                "Home",
                textScaleFactor: 1,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text(
                "Profile",
                textScaleFactor: 1,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text(
                "Contact Us",
                textScaleFactor: 1,
              ),
            )
          ],
             ),
       ),
    );
  }
}

