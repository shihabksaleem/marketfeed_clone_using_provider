import 'package:flutter/material.dart';

class LeadersTopContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String seletedOption;

  const LeadersTopContainer({required this.onTap, required this.seletedOption});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(seletedOption),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.grey.shade400,
                child: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                  size: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
