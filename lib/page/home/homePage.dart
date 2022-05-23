import 'package:flutter_social_news/core/Widgets/card/cardIcon.dart';
import 'package:flutter_social_news/core/Widgets/card/cardVertical.dart';
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
import '../../helper/appPropertis.dart';
import '../../helper/sizeConfig.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => new _HomePage();
}

class _HomePage extends State<HomePage> {
  int i =0;

  @override
  void initState() {
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
      Column(children: [
        HrText(height: 10.0,label: 'مطالب ویژه',lineColor:ObjectColor.baseTextColor ,),
        Container(
          margin: const EdgeInsets.all(10.0),
          child:LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return
                  ImgSlide(width: constraints.maxWidth-10 , height: 200,);
              }
          ),
        ),

        respanse(context)
      ]);
  }

  Widget respanse(BuildContext context) {
    return

      Column(children: [

        Container(
            height: 50,
            child:
            ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(width: 160.0,color: Colors.cyanAccent,),
                  Container(width: 160.0,color: Colors.blue,),
                  Container(width: 160.0,color: Colors.green,),
                  Container(width: 160.0,color: Colors.cyanAccent,),
                  Container(width: 160.0,color: Colors.blue,),
                  Container(width: 160.0,color: Colors.green,),
                  Container(width: 160.0,color: Colors.cyanAccent,),
                  Container(width: 160.0,color: Colors.blue,),
                  Container(width: 160.0,color: Colors.green,),
                  Container(width: 160.0,color: Colors.cyanAccent,),
                  Container(width: 160.0,color: Colors.blue,),
                  Container(width: 160.0,color: Colors.green,),
                  Container(width: 160.0,color: Colors.cyanAccent,),
                  Container(width: 160.0,color: Colors.blue,),
                  Container(width: 160.0,color: Colors.green,),
                  Container(width: 160.0,color: Colors.cyanAccent,),
                  Container(width: 160.0,color: Colors.blue,),
                  Container(width: 160.0,color: Colors.green,),
                  Container(width: 160.0,color: Colors.cyanAccent,),
                  Container(width: 160.0,color: Colors.blue,),
                  Container(width: 160.0,color: Colors.green,),
                  Container(width: 160.0,color: Colors.cyanAccent,),
                  Container(width: 160.0,color: Colors.blue,),
                  Container(width: 160.0,color: Colors.green,),
                ]
            )
        ),



        Container(
          margin:const EdgeInsets.symmetric(vertical: 40.0),
          decoration: BoxDecoration(color: Colors.red,),
          child:
          new LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Wrap
                  (children: [
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xF0F8FF00),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xB86B9700),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth,sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Colors.blue)),
                ]);
              }

          ),
        ),
        Container(
          margin:const EdgeInsets.symmetric(vertical: 40.0),
          decoration: BoxDecoration(color: Colors.red,),
          child:
          new LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Wrap
                  (children: [
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xF0F8FF00),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xB86B9700),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth,sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Colors.blue)),
                ]);
              }

          ),
        ),
        Container(
          margin:const EdgeInsets.symmetric(vertical: 40.0),
          decoration: BoxDecoration(color: Colors.red,),
          child:
          new LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Wrap
                  (children: [
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xF0F8FF00),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xB86B9700),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth,sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Colors.blue)),
                ]);
              }

          ),
        ),
        Container(
          margin:const EdgeInsets.symmetric(vertical: 40.0),
          decoration: BoxDecoration(color: Colors.red,),
          child:
          new LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Wrap
                  (children: [
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xF0F8FF00),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xB86B9700),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth,sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Colors.blue)),
                ]);
              }

          ),
        ),
        Container(
          margin:const EdgeInsets.symmetric(vertical: 40.0),
          decoration: BoxDecoration(color: Colors.red,),
          child:
          new LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Wrap
                  (children: [
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xF0F8FF00),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xB86B9700),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth,sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Colors.blue)),
                ]);
              }

          ),
        ),
        Container(
          margin:const EdgeInsets.symmetric(vertical: 40.0),
          decoration: BoxDecoration(color: Colors.red,),
          child:
          new LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Wrap
                  (children: [
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xF0F8FF00),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xB86B9700),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth,sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Colors.blue)),
                ]);
              }

          ),
        ),
        Container(
          margin:const EdgeInsets.symmetric(vertical: 40.0),
          decoration: BoxDecoration(color: Colors.red,),
          child:
          new LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Wrap
                  (children: [
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xF0F8FF00),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xB86B9700),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth,sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Colors.blue)),
                ]);
              }

          ),
        ),
        Container(
          margin:const EdgeInsets.symmetric(vertical: 40.0),
          decoration: BoxDecoration(color: Colors.red,),
          child:
          new LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Wrap
                  (children: [
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xF0F8FF00),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xB86B9700),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth,sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Colors.blue)),
                ]);
              }

          ),
        ),
        Container(
          margin:const EdgeInsets.symmetric(vertical: 40.0),
          decoration: BoxDecoration(color: Colors.red,),
          child:
          new LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Wrap
                  (children: [
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xF0F8FF00),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xB86B9700),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth,sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Colors.blue)),
                ]);
              }

          ),
        ),
        Container(
          margin:const EdgeInsets.symmetric(vertical: 40.0),
          decoration: BoxDecoration(color: Colors.red,),
          child:
          new LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Wrap
                  (children: [
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xF0F8FF00),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xB86B9700),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth,sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Colors.blue)),
                ]);
              }

          ),
        ),
        Container(
          margin:const EdgeInsets.symmetric(vertical: 40.0),
          decoration: BoxDecoration(color: Colors.red,),
          child:
          new LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Wrap
                  (children: [
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xF0F8FF00),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xB86B9700),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth,sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Colors.blue)),
                ]);
              }

          ),
        ),
        Container(
          margin:const EdgeInsets.symmetric(vertical: 40.0),
          decoration: BoxDecoration(color: Colors.red,),
          child:
          new LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Wrap
                  (children: [
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xF0F8FF00),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Color(0xB86B9700),)),
                  Container(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), width:SizeConfig.init(constraints.maxWidth,sm: 12,md: 6,lg: 4) ,decoration: BoxDecoration(color: Colors.blue)),
                ]);
              }

          ),
        ),
      ]);
  }
}
