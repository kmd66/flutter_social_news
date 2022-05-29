import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/abstract/baseState.dart';
import '../../core/model/chengState.dart';
import '../../core/model/enums.dart';
import 'states/main.dart';
import 'obj.dart';
import 'states/content.dart';


class ChatPage extends  BaseStatefulWidget {
  ChatPage(ChengState chengState) : super(chengState);
  @override
  _ChatPage createState() {
    return _ChatPage(chengState);
  }
}

class _ChatPage extends BaseState<ChatPage> {
  _ChatPage(ChengState chengState) : super(streamChengState =  StreamController<ChengState>(),RouteList.ChatPage, chengState);

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
        mainState(value);
        break;
    }
  }

  void mainState(ChengState value) async{
    setState(() {});
  }
  void contentState(ChengState value) async{
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return
      Container(
          child: view()
      );
  }


  Widget view() {
    if(stateType ==  StateType.Main)
      return Main(obj);
    else return Content(obj);
  }

}
