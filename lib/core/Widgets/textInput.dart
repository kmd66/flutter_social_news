import 'dart:core';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TextInput extends StatelessWidget {
  TextInput({
    bool obscureText = false,
    this.model, this.onChange, this.label
  }) :
        this.obscureText = obscureText;

  final String label;
  final bool obscureText;
  final String model;
  final Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        margin: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
        child: TextFormField(
            initialValue: model != null ? model : '',
            onChanged: (value) {
              if(onChange != null)onChange(value);
            } ,
            style: TextStyle(color: ObjectColor.baseTextColor),
            obscureText: obscureText,
            decoration: InputDecoration(
              labelStyle: TextStyle(color:  ObjectColor.baseBorderButton) ,
              labelText: label,
              fillColor: ObjectColor.baseTextColor,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ObjectColor.base,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ObjectColor.shadowBackground(0.2),
                ),
              ),
            )
        ),
      );
  }
}