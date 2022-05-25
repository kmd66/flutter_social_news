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
import 'homePageLeft.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => new _HomePage();
}

class _HomePage extends State<HomePage> {
  int i =0;
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
    context.read<AfterSplashBloc>().visible(true,true, true);
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
            var sizeLeft = SizeConfig.init(constraints.maxWidth, md: 5);
            var sizeCardIcon= SizeConfig.init(constraints.maxWidth, sm:6,md: 3);
            return
              Column(
                  children: [
                card(context,sizeCardIcon),

                     Wrap(
                       textDirection: TextDirection.ltr,
                       alignment: WrapAlignment.spaceBetween,
                       runAlignment:  WrapAlignment.spaceBetween,

                       crossAxisAlignment:  WrapCrossAlignment.start,

                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HomePageLeft(constraints.maxWidth - 10,sizeLeft),
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
                        ],),

                Container(
                  margin: const EdgeInsets.all(15.0),
                  child:ElevatedButton(
                    child: Center( child:Text('موارد بیشتر')),
                    onPressed: ()=>setState(()=>listAdd()),
                    style: ElevatedButton.styleFrom(
                      primary: ObjectColor.base,
                      textStyle: Style.h4(color: Colors.white),
                    ),
                  ),
                ),
              ]);
          });
    // ListView.builder(
    //   scrollDirection: Axis.vertical,
    //   controller: ScrollController(),
    //   shrinkWrap: true,
    //   itemCount: imgList.length,
    //   itemBuilder: (context, i) {
    //     return CardVertical(
    //         150,
    //         imgUrl: imgList[i],
    //         text:  imgList[i]
    //     );
    //   },
    // );
  }

  Widget card(BuildContext context,double size) {
    return
      Wrap(children: [
        CardIcon(
          title: '12',
          icon: Icons.post_add,
          width: size,
        ),
        CardIcon(
          title: '111',
          icon: Icons.comment,
          width: size,
        ),
        CardIcon(
          title: '54',
          icon: Icons.heart_broken_outlined,
          width: size,
        ),
        CardIcon(
          title: '87',
          icon: Icons.tag,
          width: size,
        )
      ],);
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
