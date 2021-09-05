import 'package:electronics_e_commerce/constants/app_constants.dart';
import 'package:electronics_e_commerce/widgets/productoverview_screen_widgets/choose_color.dart';
import 'package:flutter/material.dart';

class ProductDetailsPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$180.95 ",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.lineThrough),
                  ),
                  Text(
                    "\$179.95",
                    style: TextStyle(
                      fontSize: size.height * 0.040,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height * 0.040,
                width: size.width * 0.1 + 20,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "24%",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            "Prices incl. VAT. plus shipping costs \n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit.Aenean commodo ligula eget dolor, Aenean massa.",
            style: TextStyle(color: Colors.grey[300]),
          ),
          ChooseColor(),
        ],
      ),
    );
  }
}
