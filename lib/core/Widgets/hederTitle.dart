import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';

class HederTitle extends StatelessWidget {
  const HederTitle({Key key, this.title, this.img}) : super(key: key);

  final String title;
  final String img;


  @override
  Widget build(BuildContext context) {
    return
      Container(
          width:  MediaQuery.of(context).size.width ,
          height: 200 ,
          decoration: BoxDecoration(
            color: ObjectColor.baseBackground,
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            Container(
              width:  MediaQuery.of(context).size.width ,
              height: 170 ,
              color:  ObjectColor.shadowBackground(0.6),
              child: Center(child: Text(title,style: Style.h3(color:Color.fromRGBO(245 ,245, 245, 1.0)),),),
            ),
            Container(
              width:  MediaQuery.of(context).size.width ,
              height: 30 ,
              color:  ObjectColor.shadowBackground(0.6),
              child:
              Container(
                width:  MediaQuery.of(context).size.width ,
                height: 30 ,
                decoration: BoxDecoration(
                  color: ObjectColor.baseBackground,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                ),
              ),
            ),
          ])
      );
  }
}