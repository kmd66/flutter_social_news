import 'dart:async';
import 'package:flutter_social_news/core/model/chengState.dart';

StreamController<ChengState> streamChengState;

class Obj {
}

class ChatModel {
  String Img;
  String Msg;
  String Name;
  String Date;
  bool b ;

  ChatModel.setProperty({this.Img, this.Msg, this.Name, this.Date, this.b = false});
}