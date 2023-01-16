// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/provider_classes/leaderboard_parovider.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/market_screen/leaderborad%20tab/res/BottomSheets/LooserGainerOptionBottomSheet.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/market_screen/leaderborad%20tab/res/BottomSheets/indicesOptionBottomSheet.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/market_screen/leaderborad%20tab/res/table%20colums/ChangesColum.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/market_screen/leaderborad%20tab/res/table%20colums/LTPColum.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/market_screen/leaderborad%20tab/res/table%20colums/StocksSymbol_colum.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/market_screen/leaderborad%20tab/res/top_containers.dart';
import 'package:provider/provider.dart';

class LeaderBoardrTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Consumer<leaderboardProviderModel>(
            builder: (context, value, child) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LeadersTopContainer(
                    onTap: () {
                      value.onLGBottomContainerCalled();
                      looserGainerOptionBottomSheet(context);
                    },
                    seletedOption: value.selectedLGValue),
                LeadersTopContainer(
                    onTap: () {
                      value.onIndicesBottomContainerCalled();
                      indicesOptionBottomSheet(context);
                    },
                    seletedOption: value.selectedIndicesValue),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: const {
              1: IntrinsicColumnWidth(),
              2: IntrinsicColumnWidth()
            },
            border: TableBorder.all(
                borderRadius: BorderRadius.circular(4),
                color: Colors.grey.shade300,
                style: BorderStyle.solid,
                width: 1),
            children: [
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Text('Stock Symbol',
                          textScaleFactor: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          )),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Text('LTP',
                          textScaleFactor: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          )),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Text('Change',
                          textScaleFactor: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          )),
                    )
                  ]),
              const TableRow(children: [
                StockSymbolsColum(
                  title: 'TATAMOTORS',
                ),
                LTPColum(value: 421.60),
                ChangesColum(value: 0.88),
              ]),
              const TableRow(children: [
                StockSymbolsColum(
                  title: 'HDFCBANK',
                ),
                LTPColum(value: 1639.65),
                ChangesColum(value: 0.21),
              ]),
              const TableRow(children: [
                StockSymbolsColum(
                  title: 'HINDUNILVR',
                ),
                LTPColum(value: 2671.30),
                ChangesColum(value: 0.911),
              ]),
              const TableRow(children: [
                StockSymbolsColum(
                  title: 'TATASTEEL',
                ),
                LTPColum(value: 111.05),
                ChangesColum(value: 0.431),
              ]),
              const TableRow(children: [
                StockSymbolsColum(
                  title: 'JSWSTEEL',
                ),
                LTPColum(value: 743.45),
                ChangesColum(value: 0.38),
              ]),
              const TableRow(children: [
                StockSymbolsColum(
                  title: 'NESTLEIND',
                ),
                LTPColum(value: 19738.70),
                ChangesColum(value: 0.39),
              ])
            ],
          )
        ],
      ),
    );
  }
}
