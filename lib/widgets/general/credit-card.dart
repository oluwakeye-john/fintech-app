import 'package:fintech/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(right: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
              width: size.width * 0.57,
              color: primaryColor,
              child: Stack(
                children: [
                  Positioned(
                      right: 0,
                      top: 0,
                      child: SvgPicture.asset(
                        'assets/images/rings.svg',
                        width: size.width * 0.33,
                      )),
                  Container(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/images/wallet.svg'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40, bottom: 10),
                              child: Text(
                                "MAIN CARD",
                                style: TextStyle(
                                    color: Color(0xFFB3C0D0), fontSize: 12.4),
                              ),
                            ),
                            Text(
                              "**5677",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SvgPicture.asset('assets/images/mastercard.svg')
                      ],
                    ),
                  )
                ],
              )),
        ));
  }
}
