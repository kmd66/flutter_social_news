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
import '../../core/Widgets/badgeIcon.dart';
import '../../core/Widgets/card/defaultCard.dart';
import '../../core/Widgets/hr.dart';
import '../../core/Widgets/imgSlide.dart';
import '../../core/Widgets/texeMore.dart';
import '../../core/model/list.dart';
import '../../helper/appPropertis.dart';
import '../../helper/kamaFont.dart';
import '../../helper/sizeConfig.dart';
import '../../helper/tools.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePage createState() => new _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {


  @override
  void initState() {

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints)
          {
            var size = SizeConfig.init(constraints.maxWidth, sm:12);
            return Column(
                children: [

                  card(context,size)
                ]);
          });
  }
  Widget card(BuildContext context, double size) {
    double _imgSize = SizeConfig.sizeType == SizeType.Lg? 90 : 60;
    const EdgeInsets p1 =  EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0);
    const EdgeInsets p2 =  EdgeInsets.all(12.0);
    const EdgeInsets m1 =  EdgeInsets.only(right: 7.0);
    var commentContainerSize = size  - ((_imgSize *2) + p1.right + p1.left + p2.right + p2.left + m1.right + m1.left );

    return
      DdefaultCard(
          borderRadius: 0.0,
          child:Column(children: [
            Container(
              padding:p1 ,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("http://localhost:8080/delafltbaner.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child:
              Column(children: [
                Row(children: [
                  CircleAvatar(
                    radius: _imgSize,
                    backgroundColor: ObjectColor.baseBorder,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('http://localhost:8080/defaultUser.jpg'),
                      radius: _imgSize - 1,
                    ),
                  ),
                  Container(
                    width: commentContainerSize,
                    color:ObjectColor.opacity(black, 0.4),
                    padding:p2 ,
                    margin: m1,
                    child: Column(children: [
                      Text('نام و نام خانوادگی', style: Style.h4(color: white)),
                      Text('نام کاربری', style: Style.h5(color: ObjectColor.base)),
                      TextMore('توضیح کوتاه توضیح کوتاه توضیح کوتاه توضیح کوتاه توضیح کوتاه توضیح کوتاه توضیح کوتاه توضیح کوتاه', style: Style.h5(color: white)),
                    ]),
                  )
                ],),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0) ,
                  child:
                  Row(children: [
                    CircleAvatar(
                      radius: _imgSize,
                      backgroundColor: ObjectColor.baseBorder,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('http://localhost:8080/defaultUser.jpg'),
                        radius: _imgSize - 1,
                      ),
                    ),
                    Container(
                      width: commentContainerSize,
                      color:ObjectColor.opacity(black, 0.4),
                      padding:p2 ,
                      margin: m1,
                      child: Column(children: [
                        Text('نام و نام خانوادگی', style: Style.h4(color: white)),
                        Text('نام کاربری', style: Style.h5(color: ObjectColor.base)),
                        TextMore('توضیح کوتاه توضیح کوتاه توضیح کوتاه توضیح کوتاه توضیح کوتاه توضیح کوتاه توضیح کوتاه توضیح کوتاه', style: Style.h5(color: white)),
                      ]),
                    )
                  ],),
                )
              ],),
            ),
            Container(
              padding: EdgeInsets.only(right: 14.0, left: 14.0, bottom: 5.0) ,
              decoration: BoxDecoration(
                color: ObjectColor.base,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      BadgeIcon(
                        icon: Icon(KamaFont.user_plus,color: white,),
                        count: 1500,
                        textColor: white,
                      ),
                      BadgeIcon(
                        icon: Icon(KamaFont.user_check,color: white,),
                        count: 548,
                        textColor: white,
                      )
                    ],),
                  IconButton(
                      icon: Icon(Icons.link,color: white,),
                      onPressed: (){setState(() {});
                      }),
                ],),
            ),
          ])
      );
  }

}