import 'package:carousel_slider/carousel_slider.dart';
import 'package:electronics_e_commerce/config/animations/costom_animations.dart';
import 'package:electronics_e_commerce/config/assets/assets.dart';
import 'package:electronics_e_commerce/constants/app_constants.dart';
import 'package:electronics_e_commerce/widgets/home_screen_widgets/categories.dart';
import 'package:electronics_e_commerce/widgets/home_screen_widgets/home_single_product.dart';
import 'package:electronics_e_commerce/widgets/home_screen_widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    "assets/PlayStation5.png",
    "assets/PlayStation5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: CostomAnimations(
        home: Column(
          children: [
            Categories(),
            SearchBar(),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: double.infinity,
                    // aspectRatio: 16 / 9,
                    initialPage: 0,
                    // enableInfiniteScroll: true,
                    reverse: false,
                    // autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 600),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: images
                      .map(
                        (e) => HomeSingleProduct(image: e,),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
