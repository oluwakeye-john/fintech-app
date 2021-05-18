import 'package:fintech/widgets/general/page-header.dart';
import 'package:fintech/widgets/plan/card.dart';
import 'package:flutter/material.dart';

class PlansScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageHeader(
              title: "Saving plans",
              subTitle: "Create new plan and save towards that big goal.",
            ),
            GridView(
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
            )
          ],
        ),
      ),
    );
  }
}
