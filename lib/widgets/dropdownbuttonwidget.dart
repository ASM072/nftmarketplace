// ignore_for_file: must_be_immutable, unnecessary_string_interpolations

import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  final String hintText;
  final List<String> item;
  DropdownButtonWidget(
      {required this.hintText,
      required this.item});
  @override
  _DropdownButtonWidgetState createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
              fillColor: Colors.deepPurple[200],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              )),
          hint: Text(
            "${widget.hintText}",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          items: widget.item
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {});
          },
        ));
  }
}
