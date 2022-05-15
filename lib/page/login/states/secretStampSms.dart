import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/Widgets/counDown.dart';
import 'package:flutter_social_news/core/Widgets/hederTitle.dart';
import 'package:flutter_social_news/core/Widgets/textInputBorder.dart';
import 'package:flutter_social_news/core/apiModel.dart' as apiModel;
import 'package:flutter/cupertino.dart';
import 'package:flutter_social_news/core/bloc/events.dart';
import 'package:flutter_social_news/core/model/chengState.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter_social_news/page/main/events.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_social_news/core/model/message.dart' as msgModel;


import '../obj.dart';

class secretStampSms extends StatelessWidget{
  secretStampSms(this.obj);
  final Obj obj;

  Widget build(BuildContext context) {
    return Column(children: [
      HederTitle(img: "assets/img/b2.jpg",title: 'سامانه جامع کارمند ایران',),
      Container(
          padding: const EdgeInsets.only(top: 0.0, right: 10.0, bottom: 2.0, left: 10.0), child:
      Column(children: [
        Center(child: Text('رمز عبور موقت برای شما ارسال گردید.',style: Style.h4(fontWeight:FontWeight.bold ),),),

        new TextInputBorder('رمز عبور موقت',hintLabel:'- - - - - -',textInputType: TextInputType.number,model: obj.loginModel.SecurityStamp,onChange: (x)=> obj.loginModel.SecurityStamp = x),
        CounDown(seconds: 120,label:'زمان باقی مانده'),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child:
          ElevatedButton(

            child:
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:Center( child:Text('ورود به پلتفرم',)),
            ),
            onPressed: ()=>  checkUser(),
            style: ElevatedButton.styleFrom(
              primary: BaseColor,
              textStyle: Style.h4(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child:
          ElevatedButton(
            child:
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:Center( child:Text('انصراف',style:  Style.h4(color:BaseColor), )),
            ),
            onPressed: ()=> {streamChengState.add(new ChengState(StateType.Main))},
            style: ElevatedButton.styleFrom(
              primary: BaseBackground,
              textStyle: Style.h4(color: Colors.white),
            ),
          ),
        ),
      ])
      ),
    ]);
  }

  Future<void> checkUser() async {
  }

  Future<void> checkLogin() async {
  }
}