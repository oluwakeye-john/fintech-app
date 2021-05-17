import 'package:flutter/material.dart';

class BalanceList extends StatelessWidget {
  final List<Widget> children;

  BalanceList({@required this.children});

  @override
  Widget build(BuildContext context) {
    return GridView(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          mainAxisSpacing: 24,
          crossAxisSpacing: 24,
        ),
        children: children);
  }
}
