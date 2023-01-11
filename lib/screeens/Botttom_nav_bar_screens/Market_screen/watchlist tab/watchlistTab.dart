// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/widgets/StockDataCard.dart';

class WatchlistTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List watchlistListDataList = [
      StockDataCard(
        cardHeading: 'NIFTY PHARMA',
        color: Colors.red,
      ),
      StockDataCard(
        cardHeading: 'NIFTY PHARMA',
        color: Colors.green,
      ),
      StockDataCard(
        cardHeading: 'NIFTY PHARMA',
        color: Colors.green,
      ),
      StockDataCard(
        cardHeading: 'NIFTY PHARMA',
        color: Colors.red,
      ),
      StockDataCard(
        cardHeading: 'NIFTY PHARMA',
        color: Colors.red,
      ),
    ];

// to reverse the list to the last added item on the top of the screen
    List watchlistListDataListreversed =
        watchlistListDataList.reversed.toList();
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                child: Text(
              'Last updated on Thu 15 Dec 12:50 PM',
              style: TextStyle(
                  fontSize: 12, letterSpacing: .2, color: Colors.grey.shade600),
            )),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: watchlistListDataList.length,
                itemBuilder: (context, index) =>
                    watchlistListDataListreversed[index],
              ),
            ),
          ],
        ));
  }
}
