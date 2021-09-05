import 'package:electronics_e_commerce/constants/app_constants.dart';
import 'package:electronics_e_commerce/widgets/productoverview_screen_widgets/add_to_cart_part.dart';
import 'package:electronics_e_commerce/widgets/productoverview_screen_widgets/choose_color.dart';
import 'package:electronics_e_commerce/widgets/productoverview_screen_widgets/product_details_part.dart';
import 'package:electronics_e_commerce/widgets/productoverview_screen_widgets/social_views.dart';
import 'package:electronics_e_commerce/widgets/productoverview_screen_widgets/star.dart';
import 'package:flutter/material.dart';
import '../config/assets/assets.dart';

class ProductOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Product Overview"),
        actions: [
          IconButton(
            icon: Icon(Icons.share_sharp),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "PULSE 3D \nWireless Headset",
              style:
                  TextStyle(fontSize: size.height * 0.030, color: Colors.white),
            ),
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.055),
                // padding: EdgeInsets.all(20),
                height: size.height * 0.85,
                decoration: BoxDecoration(
                  color: kAccentColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SocialViews(views: "15k", image: kEyeImage),
                              SocialViews(views: "15k", image: kHeartImage),
                              SocialViews(views: "212", image: kBasketIcon),
                            ],
                          ),
                          Star(),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProductDetailsPart(),
                        AddToCartPart(),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                child: kHeadPhoneImage,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
