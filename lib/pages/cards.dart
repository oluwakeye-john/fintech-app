import 'package:fintech/constants.dart';
import 'package:fintech/widgets/general/credit-card.dart';
import 'package:fintech/widgets/general/page-header.dart';
import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageHeader(
            title: "My Cards",
            subTitle: "Create new plan and save towards that big goal.",
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.35,
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
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 30),
            child: ListView(
              primary: false,
              shrinkWrap: true,
              children: [
                HistoryCard(
                  alt: true,
                ),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(
                  alt: true,
                ),
                HistoryCard(),
                HistoryCard(
                  alt: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  final bool alt;
  HistoryCard({this.alt = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 45,
                  height: 45,
                  color: !alt ? primaryLight : errorLight,
                  child: Center(
                      child: Icon(
                    !alt
                        ? Icons.arrow_downward_outlined
                        : Icons.arrow_upward_outlined,
                    color: !alt ? primaryColor : errorColor,
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text("Withdrawal",
                          style: TextStyle(
                              color: Color(0xFF292D38),
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ),
                    Text(
                      "**4477",
                      style: TextStyle(color: Color(0xFFB9D4F9), fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  !alt ? "\$423.43" : "- \$423.43",
                  style: TextStyle(color: !alt ? primaryColor : errorColor),
                ),
              ),
              Text("10 Oct 21",
                  style: TextStyle(color: Color(0xFFB9D4F9), fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
