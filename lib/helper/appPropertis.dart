import 'dart:convert';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/core/model/navigation.dart';
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;

class AppPropertis {
  static double maxWidth = 1024.0;
  static double bodyWidth = maxWidth;
  static RouteList currentRoute = RouteList.HomePage;
  static StateType currentState = StateType.Main;
  static List<Navigation> navigations = [Navigation(route: RouteList.HomePage)];

  static bool get isAndroid => !kIsWeb && Platform.isAndroid;

  // ------------

  static dynamic currentUsers;

  static dynamic currentUser;
  static dynamic accessToken;

  static dynamic objectToken() =>
      accessToken != null ? json.decode(accessToken) : null;

  static dynamic Authorization() =>
      accessToken != null ? 'Bearer ${json.decode(accessToken)['access_token']}' : null;
}