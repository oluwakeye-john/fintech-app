import 'package:fintech/widgets/general/credit-card.dart';
import 'package:fintech/widgets/general/page-header.dart';
import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PageHeader(
          title: "My Cards",
          subTitle: "Create new plan and save towards that big goal.",
        ),
        Container(
          width: double.infinity,
          height: size.height * 0.37,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              CreditCard(),
              CreditCard(),
              CreditCard(),
              CreditCard(),
            ],
          ),
        ),
      ],
    );
  }
}
