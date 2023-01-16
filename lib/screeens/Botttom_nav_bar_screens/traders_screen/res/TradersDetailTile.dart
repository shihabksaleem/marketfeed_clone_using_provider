import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/Colors/colors.dart';

class TradersDetailTile extends StatelessWidget {
  final String traderNamme;
  final String capital;
  final String percentage;
  final String traderDetail;
  final String imagePath;

  const TradersDetailTile({
    required this.traderNamme,
    required this.capital,
    required this.percentage,
    required this.traderDetail,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Column(
          children: [
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
              leading: CircleAvatar(
                  radius: 30, backgroundImage: AssetImage(imagePath)),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  traderNamme,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 5),
                child: Text(
                  traderDetail,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    background: Paint()
                      ..strokeWidth = 17
                      ..color = kSubtitleBgColor
                      ..strokeJoin = StrokeJoin.round
                      ..style = PaintingStyle.stroke,
                  ),
                ),
              ),
              trailing: Padding(
                  padding: EdgeInsets.only(right: 4),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: kiconBgColor,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: kiconColor,
                        size: 14,
                      ),
                      onPressed: () {},
                    ),
                  )),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Min Capital  ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: capital,
                          style: TextStyle(fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Yearly Return  ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: percentage,
                          style: TextStyle(fontWeight: FontWeight.w700)),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
