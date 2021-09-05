import 'package:electronics_e_commerce/constants/app_constants.dart';
import 'package:flutter/material.dart';

class BottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ListTile(
            leading: Text(
              "Your Name",
              style: TextStyle(color: Colors.white),
            ),
            title: Text(
              "@Assar Developer",
              style: TextStyle(color: Colors.grey[400]),
            ),
          ),
          ListTile(
            leading: Text(
              "Your Number",
              style: TextStyle(color: Colors.white),
            ),
            title: Text(
              "+923352062349",
              style: TextStyle(color: Colors.grey[400]),
            ),
          ),
          ListTile(
            leading: Text(
              "Your Email",
              style: TextStyle(color: Colors.white),
            ),
            title: Text(
              "assardeveloper@gmail.com",
              style: TextStyle(color: Colors.grey[400]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: size.height * 0.074,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  textStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ), // style: ButtonStyle(

                child: Text("Invite Friends")),
          ),
          Container(height: size.height * 0.1 - 30)
        ],
      ),
    );
  }
}
