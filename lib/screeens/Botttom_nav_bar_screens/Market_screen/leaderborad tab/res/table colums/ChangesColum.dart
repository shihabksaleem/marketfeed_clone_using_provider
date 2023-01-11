import 'package:flutter/material.dart';

class ChangesColum extends StatelessWidget {
  final Color? color;
  final double value;

  const ChangesColum({this.color, required this.value});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: value < 0 ? Colors.red : Colors.green),
        child: Text(
            value < 0
                ? '${value.toStringAsFixed(2)}'
                : '+' + '${value.toStringAsFixed(2)}',
            textScaleFactor: 1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10.0,
            )),
      ),
    );
  }
}
