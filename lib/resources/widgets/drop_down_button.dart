import 'package:flutter/material.dart';

const List<String> countryCodes = <String>['+91', '+92', '+97', '+978'];

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String dropdownValue = countryCodes.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: Container(),
      value: dropdownValue,
      style: const TextStyle(
          color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: countryCodes.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
