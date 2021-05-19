import 'package:fintech/widgets/plan/card.dart';
import 'package:flutter/material.dart';

class PlanList extends StatelessWidget {
  const PlanList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 25,
          crossAxisSpacing: 25),
      children: [
        PlanCard(),
        PlanCard(),
        PlanCard(),
        PlanCard(),
        PlanCard(),
        PlanCard(),
        PlanCard(),
        PlanCard(),
        PlanCard(),
        PlanCard(),
        PlanCard(),
        PlanCard(),
        PlanCard(),
        PlanCard(),
        PlanCard(),
      ],
    );
  }
}
