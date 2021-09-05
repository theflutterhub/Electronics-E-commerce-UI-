import 'package:electronics_e_commerce/config/assets/assets.dart';
import 'package:electronics_e_commerce/constants/app_constants.dart';
import 'package:flutter/material.dart';
class SearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 270,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: kAccentColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Search Products...",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "Poppins-Light"),
                        ),
                        kSearchIcon,
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    height: 50,
                    width: 48,
                    decoration: BoxDecoration(
                      color: kAccentColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: kSortIcon,
                    ),
                  ),
                ],
              ),
            );
  }
}