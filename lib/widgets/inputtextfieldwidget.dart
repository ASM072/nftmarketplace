import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// ignore: must_be_immutable
class InputTextField extends StatelessWidget {
  final String hintText;
  bool obscureText = false;

  InputTextField({required this.hintText, required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextFormField(
        obscureText: obscureText,
        validator: (value) {
          if (value!.isEmpty) {
            return "It is empty";
          }
          return null;
        },
        decoration: InputDecoration(
            fillColor: Colors.grey[100],
            filled: true,
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            )),
      ),
    );
  }
}
