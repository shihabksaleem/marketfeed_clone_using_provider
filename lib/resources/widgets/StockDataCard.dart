import 'dart:ui';

import 'package:flutter/material.dart';

class StockDataCard extends StatelessWidget {
  final Color color;
  final String cardHeading;
  final bool globalIndex;
  final Color activeMarket;
  const StockDataCard(
      {super.key,
      required this.color,
      required this.cardHeading,
      this.globalIndex = false,
      this.activeMarket = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(
              1,
              3,
            ),
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text(cardHeading),
                    ),
                    globalIndex
                        ? Row(
                            children: [
                              Icon(
                                Icons.fiber_manual_record,
                                size: 10,
                                color: activeMarket,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Text(
                                  'USA',
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 13),
                                ),
                              )
                            ],
                          )
                        : SizedBox()
                  ],
                )),
            const Text('44,044,44'),
            Container(
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(4)),
              width: 50,
              height: 20,
              child: const Center(
                  child: Text(
                '+0.01',
                style: TextStyle(color: Colors.white),
              )),
            ),
            const Text('+6.80'),
          ],
        ),
      ),
    );
  }
}
