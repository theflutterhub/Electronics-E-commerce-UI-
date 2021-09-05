import 'package:electronics_e_commerce/config/assets/assets.dart';
import 'package:electronics_e_commerce/screens/costom_bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class CostomAnimations extends StatefulWidget {
  final Widget home;
  CostomAnimations({this.home});

  @override
  _CostomAnimationsState createState() => _CostomAnimationsState();
}

class _CostomAnimationsState extends State<CostomAnimations> {
  double xOffset = 0;

  double yOffset = 0;

  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isDrawerOpen ? 30 : 0.0),
      ),
      child: Scaffold(
        bottomNavigationBar: CostomBottomNavigationBar(),
        appBar: AppBar(
          elevation: 0.0,
          leading: isDrawerOpen
              ? IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    setState(() {
                      xOffset = 0;
                      yOffset = 0;
                      scaleFactor = 1;
                      isDrawerOpen = false;
                    });
                  },
                )
              : IconButton(
                  icon: kMenuIcon,
                  onPressed: () {
                    setState(() {
                      xOffset = 230;
                      yOffset = 200;
                      scaleFactor = 0.6;
                      isDrawerOpen = true;
                    });
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
          actions: [
            kNotifecationIcon,
          ],
        ),
        body: widget.home,
      ),
    );
  }
}
