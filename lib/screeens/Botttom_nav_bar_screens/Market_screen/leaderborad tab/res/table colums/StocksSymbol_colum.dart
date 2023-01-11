import 'package:flutter/material.dart';

class StockSymbolsColum extends StatelessWidget {
  final String title;

  const StockSymbolsColum({required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Text(title,
          textScaleFactor: 1.1,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          )),
    );
  }
}
