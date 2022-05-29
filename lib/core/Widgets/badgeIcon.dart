
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helper/objectColor.dart';
import '../../helper/tools.dart';

class BadgeIcon extends StatelessWidget {
  BadgeIcon({this.icon, this.count, this.onPressed, this.iconSize = 18, this.textColor,});
  final Widget icon;
  final int count;
  final double iconSize;
  final Color textColor;
  final Function()onPressed;

  @override
  Widget build(BuildContext context) {
    var _count ='';
    if(Tools.IsNullOrZiro(count))_count = '0';
    else if(count > 1000000)
      _count = '${(count /1000000).round()}m';
    else if(count > 1000)
      _count = '${(count /1000).round()}k';
    else _count = count.toString();

    if(textColor == null) return _badge(context);
    else return _label(context);
  }

  Widget _badge(BuildContext context) {
    return Stack(
        children: <Widget>[
          IconButton(
            icon: icon,
            iconSize: iconSize,
            onPressed: (){
              if(onPressed !=null)
                onPressed();
            },
          ),
          Positioned(
            top: 2.0,
            right: 2.0,
            child:
            Container(
              padding: EdgeInsets.symmetric(horizontal: 2) ,
              decoration: BoxDecoration(
                color: ObjectColor.opacity(red, 0.7),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(_count(),
                  textDirection:TextDirection.ltr,
                  style:
                  new TextStyle(
                    color: white,
                    fontSize: 8.0,)
              ),

            ),
          )
        ]);
  }

  Widget _label(BuildContext context) {
    return Column(
        children: [
          IconButton(
            icon: icon,
            iconSize: iconSize,
            onPressed: (){
              if(onPressed !=null)
                onPressed();
            },
          ),

          Text(_count(),
              textDirection:TextDirection.ltr,
              style:
              new TextStyle(
                height: 0.1,
                color: textColor,
                fontSize: 8.0,)
          ),
        ]);
  }

  String _count() {
    var _count ='';
    if(Tools.IsNullOrZiro(count))return '0';
    else if(count > 1000000)
      return '${(count /1000000).round()}m';
    else if(count > 1000)
      return '${(count /1000).round()}k';
    else return count.toString();

  }

}