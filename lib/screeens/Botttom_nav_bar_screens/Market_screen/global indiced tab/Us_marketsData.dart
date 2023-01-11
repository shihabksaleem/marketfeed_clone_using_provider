// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/widgets/StockDataCard.dart';

class UsMarketsData extends StatelessWidget {
  const UsMarketsData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          'US Markets',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        StockDataCard(
          globalIndex: true,
          cardHeading: 'NIFTY BANK',
          color: Colors.red,
        ),
        StockDataCard(
          globalIndex: true,
          activeMarket: Colors.green,
          cardHeading: 'NIFTY AUTO',
          color: Colors.green,
        ),
        StockDataCard(
          activeMarket: Colors.green,
          globalIndex: true,
          cardHeading: 'NIFTY FINSERV',
          color: Colors.green,
        ),
        StockDataCard(
          globalIndex: true,
          cardHeading: 'NIFTY FMCG',
          color: Colors.red,
        ),
        StockDataCard(
          globalIndex: true,
          cardHeading: 'NIFTY IT',
          color: Colors.red,
        ),
        StockDataCard(
          globalIndex: true,
          cardHeading: 'NIFTY MEDIA',
          color: Colors.red,
        ),
      ],
    );
  }
}
