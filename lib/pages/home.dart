import 'package:fintech/widgets/home/balance-card.dart';
import 'package:fintech/widgets/home/balance-list.dart';
import 'package:fintech/widgets/home/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeBody(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BalanceList(children: [HomeBalanceCard(), HomeBalanceCard()]),
          Text("Heyy"),
          Text("Heyy"),
          Text("Heyy"),
        ],
      ),
    );
  }
}
