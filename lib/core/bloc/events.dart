import 'dart:async';
import 'package:flutter_social_news/core/model/message.dart';
import 'package:flutter_social_news/core/model/navigation.dart';

StreamController<Message> streamMessage = StreamController<Message>();
StreamController<String> streamLoad = StreamController<String>();
StreamController<Navigation> streamNavigation = StreamController<Navigation>();
StreamController<Navigation> streamonWillPopNavigation = StreamController<Navigation>();
StreamController<String> streamClosePopupState = StreamController<String>();