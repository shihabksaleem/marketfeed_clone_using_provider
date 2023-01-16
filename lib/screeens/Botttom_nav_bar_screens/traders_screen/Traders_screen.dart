// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, duplicate_ignore, file_names

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/traders_screen/res/TradersDetailTile.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/traders_screen/res/TradersTopTile.dart';

class TradersBottomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          TradersTopListTile(),
          TradersDetailTile(
            traderNamme: 'Sharique Samsudheen',
            capital: '₹2L',
            imagePath: 'images/shareeque Shamsudheen.jpg',
            percentage: '40%',
            traderDetail: 'Positional NIFTY option selling',
          ),
          TradersDetailTile(
            traderNamme: 'Darshan Rathod',
            capital: '₹2L',
            imagePath: 'images/Darshan Rathod.png',
            percentage: '60%',
            traderDetail: 'Positional Futures Trading',
          ),
          TradersDetailTile(
            traderNamme: 'Ajay Ajith',
            capital: '₹1.5L',
            imagePath: 'images/AJAY AJITH.png',
            percentage: '40%',
            traderDetail: 'Intraday NIFTY Futures Trading',
          ),
          TradersDetailTile(
            traderNamme: 'Mohammed Nihal',
            capital: '₹50k',
            imagePath: 'images/Nihal.png',
            percentage: '30%',
            traderDetail: 'Equity Swing Trading',
          ),
          TradersDetailTile(
            traderNamme: 'Salman Faris',
            capital: '₹50k',
            imagePath: 'images/salman faris.png',
            percentage: '30%',
            traderDetail: 'Swing Trading',
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
