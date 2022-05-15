import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CardIcon extends StatelessWidget{
  CardIcon ({
    double width ,
    double iconSize = 16,
    String title ='عنوان',
    this.text,
    this.icon,
    Function onPress
  }):
        width = width,
        iconSize= iconSize,
        title=title,
        onPress=onPress;

  double width;
  double iconSize;
  String title;
  String text;
  String icon;
  Function onPress;

  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
      if(onPress != null) {
        onPress();
      }
    },
    child:
    Container(
        width: width == null? MediaQuery.of(context).size.width : width,
        margin: EdgeInsets.only(top: 12),
        child:
        Card(
            color: ObjectColor.base,
            child:Container(
                width: MediaQuery.of(context).size.width,
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(12),
                      child:
                      Image.asset(icon ,
                        height: 27,
                        width: 27,
                        fit: BoxFit.fitWidth,
                      )
                    ),
                    Container(
                        padding: const EdgeInsets.all(12),
                        child: Text(title,style: Style.h5(color: ObjectColor.baseBackground),)
                    ),
                    text != null?
                    Container(
                        padding: const EdgeInsets.only(bottom: 12,left: 12,right: 12),
                        child:Text(text,
                          style: Style.h5(color: ObjectColor.base),)
                    ):Container(width: 0,height: 0,),
                  ],)
            )
        )
    )
    );
  }
}