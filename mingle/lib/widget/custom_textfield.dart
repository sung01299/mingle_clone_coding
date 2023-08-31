import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  final double hintTextSize;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.hintTextSize = 15,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: TextStyle(fontSize: hintTextSize)
          // border: const OutlineInputBorder(
          //     borderSide: BorderSide(
          //       color: Colors.black38,
          //     )),
          // enabledBorder: const OutlineInputBorder(
          //     borderSide: BorderSide(
          //       color: Colors.black38,
          ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your $hintText';
        }
        return null;
      },
      maxLines: maxLines,
    );
  }
}
