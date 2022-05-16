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
import 'package:flutter_social_news/core/model/languageEnums.dart';
import 'package:flutter_social_news/helper/language.dart';
import 'states/main.dart';
import 'states/secretStampSms.dart';
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
                  Container(

                      width:  MediaQuery.of(context).size.width ,
                      height: MediaQuery.of(context).size.height ,
                      decoration: BoxDecoration(
                        color: ObjectColor.baseBackground,
                        image: DecorationImage(
                          image: AssetImage("assets/login.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child:Center(
                          child:  Container(
                              constraints: BoxConstraints(maxHeight: 580, maxWidth: 400),
                              padding: EdgeInsets.all(12),
                              margin: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: ObjectColor.nightType == NightType.Dark? Color.fromRGBO(0, 0, 0, .4):Color.fromRGBO(255,255,255, .4)
                              ),
                              child: Column(children: [
                                Container(
                                  transform: Matrix4.translationValues(0.0, -46, 0.0),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ObjectColor.base,
                                  ),
                                  child:  ClipOval(
                                    child: Image.asset(
                                      'assets/logo.png',
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Text(Language.get(Textuality.SoftwareName),style: Style.h4(),),
                                view(),

                                popupMenuWidget(),
                              ])
                          )
                      )
                  )
              ),
            ),
          )

      )
      );
  }

  Widget view() {
    if(stateType ==  StateType.Main) return Main(obj);
    else return secretStampSms(obj);
  }

  Widget popupMenuWidget(){
    return PopupMenuButton<LanguageType>(
      onSelected: (LanguageType value) async{
        if(value != Language.language) {
          await Language.change(value);
          streamChengState.add(new ChengState(StateType.None));
        }
      },
      child:Padding(
        padding: EdgeInsets.all(10),
        child: Text(Language.get(Textuality.Language),style: Style.h5()),
      ),
      // icon:Icon(Icons.more_vert ,color: Color.fromRGBO(210, 215, 217, 1.0),),
      iconSize: 18,
      color: Color.fromRGBO(22, 27, 28, 1.0),

      itemBuilder: (BuildContext context) => <PopupMenuEntry<LanguageType>>[
        PopupMenuItem<LanguageType>(
          value: LanguageType.Persian,
          child: Directionality(textDirection: TextDirection.rtl,
            child:  Text(Language.get(Textuality.Persian),style: Style.h5(color: Color.fromRGBO(210, 215, 217, 1.0))),
          ),
        ),
        PopupMenuItem<LanguageType>(
          value: LanguageType.English,
          child: Directionality(textDirection: TextDirection.rtl,
            child:  Text(Language.get(Textuality.English),style: Style.h5(color: Color.fromRGBO(210, 215, 217, 1.0))),
          ),
        ),
      ],
    );
  }

  Future<void> checkLogin() async {
  }

}
