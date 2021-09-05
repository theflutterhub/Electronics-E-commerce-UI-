import 'package:electronics_e_commerce/constants/app_constants.dart';
import 'package:electronics_e_commerce/screens/drawer_page.dart';
import 'package:electronics_e_commerce/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            DrawerPage(),
            HomePage(),
          ],
        ),
      ),
    );
  }
}
