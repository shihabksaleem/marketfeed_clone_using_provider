import 'package:flutter/material.dart';

class LTPColum extends StatelessWidget {
  final double value;

  const LTPColum({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Text('${value.toStringAsFixed(2)}',
          textScaleFactor: 1,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
          )),
    );
  }
}
