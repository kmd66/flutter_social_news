import 'dart:async';
import 'package:flutter_social_news/core/model/chengState.dart';
import 'package:flutter_social_news/core/apiModel.dart' as apiModel;
import 'package:flutter_social_news/core/model/token.dart';

StreamController<ChengState> streamChengState;

class Obj {

  Token loginModel = Token();
  apiModel.User user;
}