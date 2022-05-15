import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../hr.dart';

//ignore: must_be_immutable
class CardVertical2 extends StatelessWidget{
  CardVertical2 ({
    this.title,
    this.textBtn,
    this.text,
    this.mainObj,
    this.btnOnPressed,
    this.cardColor,
    this.titleCocor,
    this.hederCocor
  });

  final String title;
  final Widget mainObj;
  final String text;
  final String textBtn;
  final Function btnOnPressed;
  final Color cardColor;
  final Color hederCocor;
  final Color titleCocor;

   build(BuildContext context) {
    return
      Card(
        color: cardColor !=null? cardColor: ObjectColor.cardBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: hederCocor !=null? hederCocor: BaseColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Center(
                    child:  Text(title,style: Style.h4(color:titleCocor != null ? titleCocor: Colors.white),),)
              ),

            ),
            main(context),

            Btn(context),
          ],
        ),
      );
  }

  Widget main(BuildContext context) {
    if(text != null)
      return
        Padding(
          padding: const EdgeInsets.all(7.0),
          child:Text(text, style: Style.h5(color: TextColor),)
        );
    else if(mainObj != null)
    return

      Padding(
        padding: const EdgeInsets.all(7.0),
        child:mainObj
      );
    else
      return Container(width: 0,height: 0,);
  }

  Widget Btn(BuildContext context) {
    return
      textBtn != null?
      Padding(
        padding: const EdgeInsets.all(7.0),
        child:
        ElevatedButton(
          child:
          Container(
            width: MediaQuery.of(context).size.width,
            child:
            Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: Text(textBtn,),)
            ),
          ),
          onPressed: (){
            if(btnOnPressed != null)
              return btnOnPressed();
          },
          style: ElevatedButton.styleFrom(
            primary: BaseColor,
            textStyle: Style.h4(color: Colors.white),
          ),
        ),
      )
          :Container(width: 0,height: 0,);
  }
}