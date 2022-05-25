import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../helper/objectColor.dart';
import '../../../helper/textStyle.dart';
import '../showObj.dart';

//ignore: must_be_immutable
class CardIcon extends StatelessWidget{
  CardIcon ({this.width, this.iconSize, this.title, this.text, this.icon, this.onPress});

  final double width;
  final double iconSize;
  final String title;
  final String text;
  final IconData icon;
  final Function onPress;

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
                  color: ObjectColor.cardBackground,
                  child:Container(
                      width: MediaQuery.of(context).size.width,
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(12),
                              child:
                              Icon(
                                icon,
                                size: iconSize,
                                color: ObjectColor.base,
                              )
                          ),
                          Container(
                              padding: const EdgeInsets.all(12),
                              child: Text(title,style: Style.h4(),)
                          ),
                          Container(width: 0, height: 0,),
                          ShowObj(
                            isShow: text != null ,
                            obj:
                            Container(
                                padding: const EdgeInsets.only(bottom: 12,left: 12,right: 12),
                                child:Text(text != null ? text: '',
                                  style: Style.h5(),)
                            ),
                          ),
                        ],)
                  )
              )
          )
      );
  }
}