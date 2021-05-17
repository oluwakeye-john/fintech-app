import 'package:fintech/constants.dart';
import 'package:flutter/material.dart';

class HomeBalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        color: primaryColor,
        padding: EdgeInsets.all(20),
        child: Center(
            child: Text(
          "\$4,523",
          style: TextStyle(color: Colors.white, fontSize: 24),
        )),
      ),
    );
  }
}
