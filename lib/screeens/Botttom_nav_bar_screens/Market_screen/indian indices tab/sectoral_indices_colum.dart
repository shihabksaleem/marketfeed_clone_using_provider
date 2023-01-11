// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/widgets/StockDataCard.dart';

class SectoralIndicesColum extends StatelessWidget {
  const SectoralIndicesColum({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          'Sectoral Indices',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        StockDataCard(
          cardHeading: 'NIFTY BANK',
          color: Colors.red,
        ),
        StockDataCard(
          cardHeading: 'NIFTY AUTO',
          color: Colors.green,
        ),
        StockDataCard(
          cardHeading: 'NIFTY FINSERV',
          color: Colors.green,
        ),
        StockDataCard(
          cardHeading: 'NIFTY FMCG',
          color: Colors.red,
        ),
        StockDataCard(
          cardHeading: 'NIFTY IT',
          color: Colors.red,
        ),
        StockDataCard(
          cardHeading: 'NIFTY MEDIA',
          color: Colors.red,
        ),
        StockDataCard(
          cardHeading: 'NIFTY METAL',
          color: Colors.green,
        ),
        StockDataCard(
          cardHeading: 'NIFTY PHARMA',
          color: Colors.green,
        ),
        StockDataCard(
          cardHeading: 'NIFTY PSU BANK',
          color: Colors.red,
        ),
        StockDataCard(
          cardHeading: 'NIFTY REALTY',
          color: Colors.red,
        ),
      ],
    );
  }
}
