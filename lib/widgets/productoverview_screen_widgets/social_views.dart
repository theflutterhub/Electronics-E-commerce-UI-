import 'package:flutter/material.dart';

class SocialViews extends StatelessWidget {
  final Widget image;
  final String views;
  SocialViews({this.image, this.views});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          image,
          SizedBox(
            height: 5,
          ),
          Text(
            "$views",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
