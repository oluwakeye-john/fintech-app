import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  final Widget child;
  HomeBody({@required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double horPadding = size.width * 0.06;
    return Scaffold(
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
