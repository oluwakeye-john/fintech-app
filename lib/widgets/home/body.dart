import 'package:fintech/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeBody extends StatelessWidget {
  final Widget child;
  HomeBody({@required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double horPadding = size.width * 0.06;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.green,
        unselectedItemColor: Color(0xFF200E32),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/icons/home.svg',
                color: primaryColor,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/icons/card.svg',
              ),
              label: "Plans"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/icons/graph.svg'),
              label: "History"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/icons/category.svg'),
              label: "Settings"),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: horPadding, right: horPadding),
          width: double.infinity,
          height: size.height,
          child: child,
        ),
      ),
    );
  }
}
