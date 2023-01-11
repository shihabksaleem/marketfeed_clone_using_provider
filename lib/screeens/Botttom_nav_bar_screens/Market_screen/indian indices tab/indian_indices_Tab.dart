// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'Nifty_Sensex_Container.dart';
import 'broad_market_colum.dart';
import 'sectoral_indices_colum.dart';

class IndianIndicesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          IndianIndicesTop(),
          SectoralIndicesColum(),
          BroadMarketIndicesColum(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class IndianIndicesTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
            child: Center(
          child: Text(
            'Last updated on Thu 15 Dec 12:50 PM',
            style: TextStyle(
                fontSize: 12, letterSpacing: .2, color: Colors.grey.shade600),
          ),
        )),
        Row(
          children: [
            NiftySensexContainerRefactored(),
            NiftySensexContainerRefactored(),
          ],
        ),
        Divider(
          thickness: 1,
          color: Colors.grey.shade300,
        ),
      ],
    );
  }
}
