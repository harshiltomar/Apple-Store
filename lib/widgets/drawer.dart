import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl =
        'https://images.unsplash.com/photo-1625914820277-4a1e8ea0b7f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80';
    return Drawer(
      child: Container(
        color: Colors.deepPurpleAccent,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple
                  ),
                  margin: EdgeInsets.zero,
                  accountName: Text('Harshil Tomar'),
                  accountEmail: Text('harshil@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1625914820277-4a1e8ea0b7f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                ),)),

            ListTile(
              leading: Icon(
                CupertinoIcons.home, color: Colors.white,),
              title: Text("Home", textScaleFactor: 1.4, style: TextStyle(color: Colors.white),),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled, color: Colors.white,),
              title: Text("Profile", textScaleFactor: 1.4, style: TextStyle(color: Colors.white),),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.mail, color: Colors.white,),
              title: Text("Email Me", textScaleFactor: 1.4, style: TextStyle(color: Colors.white),),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.settings, color: Colors.white,),
              title: Text("Settings", textScaleFactor: 1.4, style: TextStyle(color: Colors.white),),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.phone, color: Colors.white,),
              title: Text("Contact Info", textScaleFactor: 1.4, style: TextStyle(color: Colors.white),),
            ),

          ],
        ),
      ),
    );
  }
}
