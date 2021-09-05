import 'dart:ui';

import 'package:electronics_e_commerce/constants/app_constants.dart';
import 'package:electronics_e_commerce/screens/profile_page.dart';
import 'package:electronics_e_commerce/widgets/drawer_screens_widgets/single_item.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAccentColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/236x/00/ff/40/00ff40f3e0d9b05e1a53038d48e26747--posing-male-models-male-model-poses.jpg"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Assar Developer",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "@Flutter Developer",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              SingleItem(
                title: "Profile",
                icon: Icons.person,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
              ),
              SingleItem(title: "Cart", icon: Icons.shopping_cart),
              SingleItem(title: "notification", icon: Icons.notifications),
              SingleItem(title: "About", icon: Icons.all_inbox_outlined),
            ],
          ),
          SingleItem(title: "Log Out", icon: Icons.exit_to_app),
        ],
      ),
    );
  }
}
