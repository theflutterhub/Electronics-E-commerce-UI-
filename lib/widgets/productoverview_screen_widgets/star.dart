import 'package:electronics_e_commerce/config/assets/assets.dart';
import 'package:electronics_e_commerce/constants/app_constants.dart';
import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.040,
      width: size.width * 0.1 + 15,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "4.6",
            style: TextStyle(color: Colors.white),
          ),
          kStarImage,
        ],
      ),
    );
  }
}
