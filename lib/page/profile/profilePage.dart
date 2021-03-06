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
import '../../core/Widgets/getImage.dart';
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

  List<String> img =[
    'http://localhost:8080/1.jpg',
    'http://localhost:8080/2.jpg',
    'http://localhost:8080/3.jpg',
    'http://localhost:8080/defaultImg.jpg',
    'http://localhost:8080/p.jpg',
    'http://localhost:8080/iisstart.png',
    null,
    null,
    null,
    null,
    null,
    null
  ];
  List<String> tex =[
    'er wger',
    ' یک منبع را داشته و همچنین به  منظور ثبت /چنانچه قصد ثبت چند شکوائیه در یک منبع را داشته و همچنین به  منظور ثبت /شکوائیه شرکاء اشخاص حقیقی در هر یک از منابع (ارث، مشاغل، حق واگذاری، اجاره محل،آمد اتفاقی)  از گزینه «افزودن شکوائیه» استفاده نمایید.',
    ' یک منبع را داشته و همچنین به  منظور ثبت /چنانچه قصد ثبت چند شکوائیه در یک منبع را داشته و  شکوائیه» استفاده نمایید.',

    'er wger',
    ' یک منبع را داشته و همچنین به  منظور ثبت /چنانچه قصد ثبت چند شکوائیه در یک منبع را داشته و همچنین به  منظور ثبت /شکوائیه شرکاء اشخاص حقیقی در هر یک از منابع (ارث، مشاغل، حق واگذاری، اجاره محل،آمد اتفاقی)  از گزینه «افزودن شکوائیه» استفاده نمایید.',
    ' یک منبع را داشته و همچنین به  منظور ثبت /چنانچه قصد ثبت چند شکوائیه در یک منبع را داشته و  شکوائیه» استفاده نمایید.',
  ];
  List<keyValue> list = [];

  @override
  void initState() {
    listAdd();
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
            var sizeCardVertical = SizeConfig.init(constraints.maxWidth, sm:12,md: 7);
            var size = SizeConfig.init(constraints.maxWidth, sm:12);
            return Column(
                children: [
                  card(context,size),
                  Container(
                      margin:const EdgeInsets.symmetric(vertical: 12.0) ,
                      child:ImgSlide(width: size, height: 200,)
                  ),

                  Container(
                    width: sizeCardVertical,
                    child:
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      controller: ScrollController(),
                      shrinkWrap: true,
                      itemCount: list.length,
                      itemBuilder: (context, i) {
                        return
                          CardVertical(
                              sizeCardVertical,
                              textHeight: 50,
                              imgUrl:list[i].key,
                              text: list[i].value
                          );
                      },
                    ),
                  ),

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
                      child: ClipOval(child:GetImage('http://localhost:8080/defaultUser.jpg')),
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
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(KamaFont.user_plus,color: lightGreen,),
                          onPressed: (){setState(() {});
                          }),
                      IconButton(
                          icon: Icon(KamaFont.chat,color: white,),
                          onPressed: ()=>context.read<RouteBloc>().chengView(RouteList.ChatPage )
                      ),
                    ],),
                ],),
            ),
          ])
      );
  }

  void listAdd() {
    Random re = new Random();
    for (double i = 0; i < 10; i++) {
      list.add(
          keyValue.setProperty(key: img[re.nextInt(img.length - 1)],
              value: tex[re.nextInt(tex.length - 1)])
      );
      list.add(
          keyValue.setProperty(key: img[re.nextInt(img.length - 1)],
              value: tex[re.nextInt(tex.length - 1)])
      );
    }
  }
}