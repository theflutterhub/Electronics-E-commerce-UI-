import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:electronics_e_commerce/config/assets/assets.dart';
import 'package:electronics_e_commerce/constants/app_constants.dart';
import 'package:electronics_e_commerce/screens/profile_page.dart';
import 'package:flutter/material.dart';

class CostomBottomNavigationBar extends StatefulWidget {
  @override
  _CostomBottomNavigationBarState createState() =>
      _CostomBottomNavigationBarState();
}

class _CostomBottomNavigationBarState extends State<CostomBottomNavigationBar> {
  @override
  int _selectedIndex = 0;

  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BottomNavyBar(
        itemCornerRadius: 24,
        selectedIndex: _selectedIndex,
        backgroundColor: kAccentColor,

        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
          if (index == 2) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          }
        }),
        items: [
          BottomNavyBarItem(
            icon: kHomeIcon,
            title: Text(
              'HOME',
              style: TextStyle(color: Colors.grey[300]),
            ),
            activeColor: kPrimaryColor,
          ),
          BottomNavyBarItem(
            icon: kBasketIcon,
            title: Text(
              'BASKET',
              style: TextStyle(color: Colors.grey[300]),
            ),
            activeColor: kPrimaryColor,
          ),
          BottomNavyBarItem(
            icon: kProfileIcon,
            title: Text(
              'PROFILE',
              style: TextStyle(color: Colors.grey[300]),
            ),
            activeColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
