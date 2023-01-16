import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/widgets/stock_data_card.dart';

class BroadMarketIndicesColum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: 30,
        ),
        Text(
          'Broad Market Indices',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        StockDataCard(
          cardHeading: 'INDIA VIX',
          color: Colors.red,
        ),
        StockDataCard(
          cardHeading: 'NIFTY 100',
          color: Colors.green,
        ),
        StockDataCard(
          cardHeading: 'NIFTY 200',
          color: Colors.green,
        ),
        StockDataCard(
          cardHeading: 'NIFTY 500',
          color: Colors.red,
        ),
        StockDataCard(
          cardHeading: 'NIFTY MIDCAP 50',
          color: Colors.red,
        ),
        StockDataCard(
          cardHeading: 'NIFTY SMLCAP 50 ',
          color: Colors.red,
        ),
      ],
    );
  }
}
