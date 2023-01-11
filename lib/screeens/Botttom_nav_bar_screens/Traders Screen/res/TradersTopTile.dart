import 'package:flutter/material.dart';

class TradersTopListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.only(top: 20),
      title: Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: Text(
          'Get Live Trades Of Profitable Traders',
          style: TextStyle(
            letterSpacing: .5,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      subtitle: Text(
        'Choose a right trader from the list to get trade ideas and updates instantly.',
        style: TextStyle(fontSize: 13),
      ),
    );
  }
}
