import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/Widgets/TextInput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_social_news/core/bloc/events.dart';
import 'package:flutter_social_news/core/model/chengState.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter_social_news/core/model/languageEnums.dart';
import 'package:flutter_social_news/helper/language.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_social_news/page/main/events.dart';
import '../obj.dart';

class secretStampSms extends StatelessWidget{
  secretStampSms(this.obj);
  final Obj obj;

  Widget build(BuildContext context) {

    return
      Column(children: [
        new TextInput(Language.get(Textuality.SecurityCode),textInputType: TextInputType.number,model: obj.loginModel.CellPhone,onChange: (x)=> obj.loginModel.CellPhone = x,),
        Container(
          constraints: BoxConstraints( maxWidth: 400),
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(5),
          child:ElevatedButton(
            child: Center( child:Text(Language.get(Textuality.Login),)),
            onPressed: ()=> getToken(),
            style: ElevatedButton.styleFrom(
              primary: ObjectColor.base,
              textStyle: Style.h4(color: Colors.white),
            ),
          ),
        ),
        Container(
          constraints: BoxConstraints( maxWidth: 400),
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(5),
          child:ElevatedButton(
            child: Center( child:Text(Language.get(Textuality.ComingBack),style: Style.h4())),
            onPressed: ()=>streamChengState.add(new ChengState(StateType.Main, navigationsAdd: false,getList: false)),
            style: ElevatedButton.styleFrom(
              primary: white,
              textStyle: Style.h4(color: Colors.white),
            ),
          ),
        ),
      ]);
  }
  Future<void> getToken() async {
    AppPropertis.accessToken = 'value';
    checkLogin();
  }

  Future<void> checkLogin() async {
    SharedPreferences local = await SharedPreferences.getInstance();

    local.setString("currentUser", jsonEncode(AppPropertis.currentUser));
    local.setString("accessToken", jsonEncode(AppPropertis.accessToken));

    loginController.add(LoginType.Enter);
    streamLoad.add(null);
  }

}