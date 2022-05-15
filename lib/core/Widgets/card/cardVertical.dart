import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../hr.dart';

//ignore: must_be_immutable
class CardVertical extends StatelessWidget{
  CardVertical ({
    bool showHr= false,
    double width ,
    String imgUrl='assets/files/a1.jpg',
    String title ='عنوان',
    String text='تست',
    String link = 'ادامه مطلب',
    IconData icon = Icons.favorite_border,
    Function iconOnPressed,
    Function linkOnPressed
  }):
        showHr = showHr,
        width = width,
        imgUrl=imgUrl,
        title=title,
        text=text,
        link=link,
        icon=icon,
        iconOnPressed=iconOnPressed,
        linkOnPressed=linkOnPressed;

  bool showHr;
  double width;
  String imgUrl;
  String title;
  String text;
  String link;
  IconData icon;
  Function iconOnPressed;
  Function linkOnPressed;

  Widget build(BuildContext context) {
    return Container(
        width: width == null? MediaQuery.of(context).size.width : width,
        margin: EdgeInsets.only(top: 12),
        child:
        Card(
            color: ObjectColor.shadowBackground(0.9),
            child:Container(
                width: MediaQuery.of(context).size.width,
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Image.asset(imgUrl ,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                      padding: const EdgeInsets.all(12),
                      width: MediaQuery.of(context).size.width,
                      child: Text(title,style: Style.h5(color: ObjectColor.cardBackground),)
                  ),
                ],)
            )
        )
    );
  }
}