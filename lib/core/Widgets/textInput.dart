import 'dart:core';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TextInput extends StatelessWidget {
  TextInput(this.label, {
    bool obscureText = false,
    TextInputType textInputType = TextInputType.none,
    this.model, this.onChange
  }) :
        this.obscureText = obscureText,
        this.textInputType=textInputType != TextInputType.none ?textInputType :TextInputType.text;

  final String label;
  final bool obscureText;
  final String model;
  final Function(String) onChange;
  final TextInputType textInputType;

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
            keyboardType: textInputType,
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