import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/Widgets/TextInput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_social_news/core/model/chengState.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';

class ShowObj extends StatelessWidget{
  ShowObj({this.isShow, this.obj});
  final bool isShow;
  final Widget obj;

  Widget build(BuildContext context) {
    if(obj == null || isShow == null )
      return Container(width: 0,height: 0,);

    if(isShow)
      return obj;
    else
      return Container(width: 0,height: 0,);

  }

}