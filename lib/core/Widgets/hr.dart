import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class Hr extends StatelessWidget{
  Hr ({double marginLeft = 0.0,double marginRight = 0.0,double height = 28.0,Color lineColor}):
        lineColor=lineColor,marginLeft=marginLeft,marginRight=marginRight,height=height;
  double marginRight= 0;
  double marginLeft = 0;
  double height= 0.0;
  Color lineColor;

  Widget build(BuildContext context) {
    return
      Container(
          margin: EdgeInsets.only(left: marginLeft, right: marginRight),
          child: Divider(
            color: lineColor!= null ? lineColor:ObjectColor.baseBorder,
            height: height,
          ));
  }
}
//ignore: must_be_immutable
class HrText extends StatelessWidget {
  HrText ({double height = 28.0,Color lineColor ,String label ='label'}):
        lineColor=lineColor,label=label,height=height;

  Color lineColor;
  String label;
  double height;

  @override
  Widget build(BuildContext context) {
    if( lineColor == null)
      lineColor= ObjectColor.baseTextColor;
    return Row(children: <Widget>[
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 10.0, right: 15.0),
            child: Divider(
              color: lineColor,
              height: height,
            )),
      ),

      Text(label,style: TextStyle(
          color:lineColor
      )),

      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 15.0, right: 10.0),
            child: Divider(
              color: lineColor,
              height: height,
            )),
      ),
    ]);
  }
}