import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PlayerButton extends StatelessWidget {
  PlayerButton(IconData btnIcon,{Color btnColor,var onPress }) :
        this.btnIcon = btnIcon,this.btnColor= btnColor,this.onPress = onPress ;

  final IconData btnIcon;
  final Color btnColor;
  final Function()onPress;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        child:
        IconButton(
          iconSize: 18,
            padding: const EdgeInsets.all(5.0),
            icon: Icon(btnIcon),
            color: btnColor == null ? Color.fromRGBO(210, 215, 217, 1.0) : btnColor ,
            onPressed: () {
              if(onPress != null)
                onPress();
            }
        ),

      );
  }
}