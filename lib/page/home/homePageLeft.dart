import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_social_news/core/Widgets/card/cardIcon.dart';
import 'package:flutter_social_news/core/Widgets/card/cardVertical.dart';
import 'package:flutter_social_news/core/Widgets/showObj.dart';
import 'package:flutter_social_news/core/bloc/afterSplashBloc.dart';
import 'package:flutter_social_news/core/bloc/routeBloc.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/model/message.dart' as msgModel;
import 'package:flutter_social_news/core/apiModel.dart' as apiModel;
import 'package:provider/src/provider.dart';

import '../../core/Widgets/hr.dart';
import '../../core/Widgets/imgSlide.dart';
import '../../core/model/list.dart';
import '../../helper/appPropertis.dart';
import '../../helper/sizeConfig.dart';

class HomePageLeft extends StatelessWidget{
  const HomePageLeft(this.sizeSlide, this.sizeLeft, {Key key, }) : super(key: key);
  final double sizeSlide;
  final double sizeLeft;

  @override
  Widget build(BuildContext context) {
    if(SizeConfig.sizeType == SizeType.Sm)
      return Container(
          margin: const EdgeInsets.symmetric(vertical: 14),
          child: ImgSlide(width: sizeSlide, height: 200,)
      );
    else
      return Container(
        margin: const EdgeInsets.only(top: 14,bottom:14,right: 14),
        width: sizeLeft - 14,
        child:
        Column(children: [

          HrText(height: 10.0,label: 'پیشنهاد',lineColor:ObjectColor.baseTextColor ,),

          Container(margin: const EdgeInsets.only(top: 18),),
          Image.network('http://localhost:8080/1.jpg' ,
            fit: BoxFit.fill,
          ),
          Text('انتقاد یک سرباز سابق از دولت فرانسه به دلیل ارسال سلاح به اوکراین' ,
              style: Style.h5(
                  overflow:TextOverflow.clip ,
                  color: ObjectColor.baseTextColor
              )
          ),

          Container(margin: const EdgeInsets.only(top: 18),),
          Image.network('http://localhost:8080/3.jpg' ,
            fit: BoxFit.fill,
          ),
          Text('dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd' ,
              style:Style.h5(
                  overflow:TextOverflow.clip ,
                  color: ObjectColor.baseTextColor
              )
          ),

          Container(margin: const EdgeInsets.only(top: 18),),
          HrText(height: 10.0,label: 'انتقاد!',lineColor:ObjectColor.baseTextColor ,),

          Container(margin: const EdgeInsets.only(top: 18),),
          Image.network('http://localhost:8080/1.jpg' ,
            fit: BoxFit.fill,
          ),
          Text('انتقاد یک سرباز سابق از دولت فرانسه به دلیل ارسال سلاح به اوکراین' ,
              style: Style.h5(
                  overflow:TextOverflow.clip ,
                  color: ObjectColor.baseTextColor
              )
          ),
        ]),
      );
  }
  @override
  Widget obj(BuildContext context) {
    if(SizeConfig.sizeType == SizeType.Sm)
      ImgSlide(width: sizeSlide, height: 200,);
    else
      Container(
        margin: const EdgeInsets.symmetric(vertical: 14),
        width: sizeLeft,
        height: 100.0,
        color: Colors.red,
      );
  }
}
