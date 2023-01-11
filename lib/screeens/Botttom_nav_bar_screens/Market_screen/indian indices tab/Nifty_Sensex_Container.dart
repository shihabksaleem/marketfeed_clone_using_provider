import 'package:flutter/material.dart';

class NiftySensexContainerRefactored extends StatelessWidget {
  const NiftySensexContainerRefactored({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'NIFTY 50',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 1),
            ),
            Text('18,286.85'),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    '-0.72%',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('-130.0',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                        fontWeight: FontWeight.w400))
              ],
            )
          ],
        ),
      ),
    );
  }
}
