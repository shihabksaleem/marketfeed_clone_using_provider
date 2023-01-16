import 'package:flutter/material.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/market_screen/global%20indiced%20tab/asianMarkets.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/market_screen/global%20indiced%20tab/european_Markets.dart';

import 'Us_marketsData.dart';

class GlobalIndicesTab extends StatelessWidget {
  const GlobalIndicesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      children: [
        Container(
            child: Center(
          child: Text(
            'Last updated on Thu 15 Dec 12:50 PM',
            style: TextStyle(
                fontSize: 12, letterSpacing: .2, color: Colors.grey.shade600),
          ),
        )),
        SizedBox(
          height: 5,
        ),
        UsMarketsData(),
        EuropeanMarketsData(),
        AsianMarkets()
      ],
    );
  }
}
