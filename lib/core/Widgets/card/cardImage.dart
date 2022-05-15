import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CardImage extends StatelessWidget{
  CardImage ({
    double width ,
    this.imgUrl,
    Function onPress
  }):
        width = width,
        onPress=onPress;

  double width;
  String imgUrl;
  Function onPress;

  Widget build(BuildContext context) {
    return

      InkWell(
          onTap: (){
            if(onPress != null) {
              onPress();
            }
          },
          child:Card(
            color: ObjectColor.cardBackground,
            child:
          Container(
            width: width == null? MediaQuery.of(context).size.width : width,
            margin: EdgeInsets.all(5),
            child:
            Image.asset(imgUrl ,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          )
            ,)
      );
  }
}