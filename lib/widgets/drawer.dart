import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var imgUrl = "https://2211chetanbalpande.github.io/portfolio/chetan.jpeg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
            padding: EdgeInsets.zero,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: const Text("Chetan Balpande"),
                  accountEmail: const Text("chetanbalpande12@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imgUrl),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(CupertinoIcons.home),
                iconColor: Colors.white,
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(CupertinoIcons.info),
                iconColor: Colors.white,
                title: Text(
                  "Information",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(CupertinoIcons.profile_circled),
                iconColor: Colors.white,
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
