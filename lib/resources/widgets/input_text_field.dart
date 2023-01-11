import 'package:flutter/material.dart';

class InputTextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final String? Function(String?) Validator;
  final TextInputType? inputkeyboardType;
  TextEditingController? controller = TextEditingController();

  InputTextFormFieldWidget(
      {required this.hintText,
      this.controller,
      required this.Validator,
      this.inputkeyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputkeyboardType,
      validator: Validator,
      controller: controller,
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade500),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF4266c7)),
          ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 13, color: Colors.grey)),
    );
  }
}
