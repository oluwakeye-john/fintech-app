import 'package:fintech/pages/home.dart';
import 'package:fintech/pages/plans.dart';
import 'package:fintech/widgets/general/bottom-nav.dart';
import 'package:flutter/material.dart';

class TabLayout extends StatefulWidget {
  @override
  _TabLayoutState createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> {
  int currentIndex = 0;

  onChange(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> tabWidgets = [
    HomeScreen(),
    PlansScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double horPadding = size.width * 0.06;
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNav(
          currentIndex: currentIndex,
          onTap: onChange,
        ),
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.only(left: horPadding, right: horPadding),
              width: double.infinity,
              height: size.height,
              child: tabWidgets.elementAt(currentIndex)),
        ));
  }
}
