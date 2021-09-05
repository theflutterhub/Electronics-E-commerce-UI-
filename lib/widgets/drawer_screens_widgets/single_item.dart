import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;
  SingleItem({this.icon, this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
