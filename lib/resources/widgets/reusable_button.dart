import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/Colors/colors.dart';

class ReusableButton extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;
  final bool buttoncolor;

  ReusableButton(
      {required this.buttonText,
      required this.onPressed,
      this.buttoncolor = true});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: !buttoncolor
            ? BorderSide(
                width: 1,
                color: kReusableButtonColor,
              )
            : null,
        backgroundColor: buttoncolor ? kReusableButtonColor : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: buttoncolor ? Colors.white : kReusableButtonColor),
        ),
      ),
    );
  }
}
