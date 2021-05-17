import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  final Widget child;
  HomeBody({@required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: child,
      ),
    );
  }
}
