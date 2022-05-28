import 'package:flutter_social_news/core/model/chengState.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/core/model/navigation.dart';
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter_social_news/page/about.dart';
import 'package:flutter_social_news/page/main/events.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/page/home/homePage.dart';
import '../../page/profile/profilePage.dart';

class RouteBloc with ChangeNotifier, DiagnosticableTreeMixin {
  static ScrollController scrollController = ScrollController();

  Widget _view = ProfilePage() ;
  Widget get view => _view;

  String _routeTitle = 'صفحه اصلی';
  String get routeTitle => _routeTitle;

  String _routeUrl = '';
  String get routeUrl => _routeUrl;

  void chengView(RouteList route, {bool navigationsAdd = true, ChengState chengState}) {
    if (scrollController.hasClients)
      scrollController.jumpTo(0.0);
    // RouteBloc.scrollController.animateTo(0.0,
    //     duration: Duration(milliseconds: 500), curve: Curves.ease)

    if(chengState == null)
      chengState = new ChengState(StateType.Main);

    if(navigationsAdd )
      AppPropertis.navigations.add(
          new Navigation(
              route: route,
              chengState: chengState
          )
      );

    switch (route) {
      case RouteList.HomePage:
      case RouteList.AboutPage:
        break;

      case RouteList.DynamicPasswordPage:
        break;
    }

    AppPropertis.currentRoute = route;
    chengStateNavigationBarController.add(null);

    switch (route) {
      case RouteList.HomePage:
        _routeTitle = 'صفحه اصلی';
        _view= HomePage();
        break;
      case RouteList.AboutPage:
        _routeTitle = 'درباره ما';
        _view = About();
        break;
      case RouteList.PofilePage:
        _routeTitle = 'پروفایل';
        _view = ProfilePage();
        break;

      default :
        _routeTitle = 'صفحه اصلی';
        _view= HomePage();
        break;
    }

    notifyListeners();
  }
}