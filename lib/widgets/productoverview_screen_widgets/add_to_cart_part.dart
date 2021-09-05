import 'package:electronics_e_commerce/constants/app_constants.dart';
import 'package:flutter/material.dart';

class AddToCartPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.12,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.height * 0.065,
            width: size.width * 0.1 + 10,
            decoration: BoxDecoration(
                color: kAccentColor,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("assets/icons/heart.png"))),
          ),
          Container(
            height: size.height * 0.065,
            width: size.width * 0.7,
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: kAccentColor,
                  textStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ), // style: ButtonStyle(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.add_shopping_cart),
                    Text("ADD TO CART"),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
