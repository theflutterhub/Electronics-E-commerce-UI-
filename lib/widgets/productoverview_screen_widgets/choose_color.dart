import 'package:electronics_e_commerce/constants/app_constants.dart';
import 'package:flutter/material.dart';

class ChooseColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Choose Color",
            style: TextStyle(fontSize: size.height * 0.025, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: size.height * 0.045,
                width: size.width * 0.090,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white)),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: size.height * 0.045,
                width: size.width * 0.090,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white)),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: size.height * 0.045,
                width: size.width * 0.090,
                decoration: BoxDecoration(
                    color: Color(0xffED5454),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
