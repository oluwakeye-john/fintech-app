import 'package:fintech/widgets/home/ads.dart';
import 'package:fintech/widgets/home/balance-card.dart';
import 'package:fintech/widgets/home/balance-list.dart';
import 'package:fintech/widgets/home/body.dart';
import 'package:fintech/widgets/home/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeBody(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeHeader(),
          BalanceList(children: [
            HomeBalanceCard(),
            HomeBalanceCard(
              alt: true,
            )
          ]),
          HomeAds(),
        ],
      ),
    );
  }
}
