import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/Widgets/hederTitle.dart';
import 'package:flutter_social_news/core/Widgets/textInput.dart';
import 'package:flutter_social_news/core/Widgets/textInputBorder.dart';
import 'package:flutter_social_news/core/abstract/baseState.dart';
import 'package:flutter_social_news/core/model/chengState.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter_social_news/page/login/states/main.dart';
import 'package:flutter_social_news/page/login/states/secretStampSms.dart';

import 'map.dart';
import 'obj.dart';

class Login extends  BaseStatefulWidget {
  Login(ChengState chengState) : super(chengState);


  @override
  _Login createState() {
    // if(streamChengState.hasListener == true)
    //   streamChengState.close();

    return _Login(chengState);
  }
}

class _Login extends BaseState<Login> {
  _Login(ChengState chengState) : super(streamChengState =  StreamController<ChengState>(),RouteList.LoginPage, chengState);

  final _scrollController =  ScrollController();
  Obj obj = new Obj();

  @override
  void initState() {
    obj.loginModel.username ='1462094163';
    super.initState();
  }

  @override
  void changeState(ChengState value ,{navigationsAdd = true}) {
    super.changeState(value);
    switch (stateType) {
      case StateType.Content:
        contentState(value);
        break;
      default:
        contentState(value);
        break;
    }
    setState(() {
    });
  }


  void contentState(ChengState value) {

  }

  @override
  Widget build(BuildContext context) {
    // return map();
    return
      Scaffold(body:
      Container(
          width:  MediaQuery.of(context).size.width ,
          height: MediaQuery.of(context).size.height ,
          decoration: BoxDecoration(
            color: ObjectColor.baseBackground,
          ),
          child:


          Scrollbar(
            // isAlwaysShown: true,
            controller: _scrollController, // <---- Here, the controller
            child:RawScrollbar(
              controller: _scrollController,
              thumbColor:ObjectColor.shadowBackground(.6),
              radius: Radius.circular(20),
              thickness: 5,
              child:
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  controller: _scrollController, // <---- Same as the Scrollbar controller
                  child:
                  Center(
                    child:
                    view()
                  )
              ),
            ),
          )

      )
      );
  }

  Widget view() {
    if(stateType ==  StateType.Main)
     return Main(obj);
    else return secretStampSms(obj);
  }

}
