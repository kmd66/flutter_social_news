import 'dart:core';
import 'package:flutter/services.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/helper/textStyle.dart';


class TextInputBorder extends StatelessWidget {
  TextInputBorder(this.label, {
    bool obscureText = false,
    TextInputType textInputType = TextInputType.none,
    this.model, this.modelLabel, this.onChange, this.hintLabel
  })  :
        this.obscureText = obscureText,
        this.textInputType=textInputType != TextInputType.none ?textInputType :TextInputType.text;

  final String label;
  final String hintLabel;
  final dynamic model;
  final String modelLabel;
  final Function(String) onChange;
  final bool obscureText;
  final TextInputType textInputType;

  String numberValidator(String value) {
    if(value == null) {
      return null;
    }
    final n = num.tryParse(value);
    if(n == null) {
      return '"$value" is not a valid number';
    }
    return null;
  }

  // FocusNode inputNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(children: [
          Container(
            width:  MediaQuery.of(context).size.width ,
            child:
            Padding(
              padding: const EdgeInsets.all(5.0),
              child:Text(label,style: Style.h5(fontWeight:FontWeight.bold),),
            ),
          ),
          PhysicalModel(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            elevation:5.0,
            shadowColor: ObjectColor.base,
            child:
            TextField(
              // focusNode: inputNode,
              autofocus:true,
              controller: TextEditingController(text: model != null ?  model : '',),
              obscureText: obscureText,
              onChanged: (value) {
                if(onChange != null)onChange(value);
              } ,
              keyboardType: textInputType,
              inputFormatters: [
                textInputType == TextInputType.number?
                FilteringTextInputFormatter.digitsOnly: FilteringTextInputFormatter.singleLineFormatter
              ],
              style: const TextStyle(
                  fontFamily: 'Vazir',color: Color.fromRGBO(100,100,100, 1.0)),
              decoration: InputDecoration(
                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide:  BorderSide(color: ObjectColor.base, width: 0.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.red, width: 11.0),
                )
                ,filled: true,
                fillColor: Colors.white,
                hintText: hintLabel != null ? hintLabel : '',
                hintStyle: TextStyle(
                    fontFamily: 'Vazir',color: Color.fromRGBO(180,180,180, 1.0)),
              ),
            ),
          ),
        ])
    );
  }
}