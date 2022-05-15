import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/Widgets/hederTitle.dart';
import 'package:flutter_social_news/core/Widgets/textInputBorder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_social_news/core/bloc/events.dart';
import 'package:flutter_social_news/core/model/chengState.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/core/model/message.dart' as msgModel;
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';


import '../obj.dart';

class Main extends StatelessWidget{
  Main(this.obj);
  final Obj obj;

  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: const EdgeInsets.only(top: 0.0, right: 10.0, bottom: 2.0, left: 10.0), child:
      Column(children: [
        Center(child: Text('خوش آمدید!',style: Style.h3(fontWeight:FontWeight.bold ),),),
        Text('همکار گرامی، شما می توانید با وارد کردن کد ملی و شماره موبایل خود و دریافت رمز عبور موقت، وارد پنل کاربری خود شوید.',style: Style.h5(),),
        new TextInputBorder('کد ملی',textInputType: TextInputType.number,hintLabel:'کد ملی خود را وارد کنید',modelLabel:'UserName', model: obj.loginModel.username,onChange: (x)=> obj.loginModel.username = x,),
        new TextInputBorder('تلفن همراه',textInputType: TextInputType.number,hintLabel:'تلفن همراه خود را وارد کنید',model: obj.loginModel.CellPhone,onChange: (x)=> obj.loginModel.CellPhone = x,),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child:
          ElevatedButton(

            child:
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:Center( child:Text('دریافت رمز عبور موقت',)),
            ),
            onPressed: ()=> checkUser(),
            style: ElevatedButton.styleFrom(
              primary: BaseColor,
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

}