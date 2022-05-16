import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/Widgets/hederTitle.dart';
import 'package:flutter_social_news/core/Widgets/TextInput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_social_news/core/bloc/events.dart';
import 'package:flutter_social_news/core/model/chengState.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/core/model/message.dart' as msgModel;
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';


import 'package:flutter_social_news/core/model/languageEnums.dart';
import 'package:flutter_social_news/helper/language.dart';
import '../obj.dart';

class Main extends StatelessWidget{
  Main(this.obj);
  final Obj obj;

  Widget build(BuildContext context) {
    return
      Column(children: [
        new TextInput(Language.get(Textuality.PhoneNumber),textInputType: TextInputType.number,model: obj.loginModel.CellPhone,onChange: (x)=> obj.loginModel.CellPhone = x,),
        Container(
          constraints: BoxConstraints( maxWidth: 400),
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(vertical: 12 ,horizontal: 5),
          child:ElevatedButton(
            child: Center( child:Text(Language.get(Textuality.GetSecurityCode),)),
            onPressed: ()=> getSecurityCode(),
            style: ElevatedButton.styleFrom(
              primary: ObjectColor.base,
              textStyle: Style.h4(color: Colors.white),
            ),
          ),
        ),
      ]);
  }

  Future<void> getSecurityCode() async {
    print('SecretStampSms');
    streamChengState.add(new ChengState(StateType.SecretStampSms, navigationsAdd: false,getList: false));
  }

}