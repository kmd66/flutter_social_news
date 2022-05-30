import 'dart:async';
import 'package:flutter_social_news/core/Widgets/loading.dart';
import 'package:flutter_social_news/core/Widgets/message.dart';
import 'package:flutter_social_news/core/bloc/afterSplashBloc.dart';
import 'package:flutter_social_news/core/bloc/events.dart';
import 'package:flutter_social_news/core/bloc/menuBloc.dart';
import 'package:flutter_social_news/core/bloc/routeBloc.dart';
import 'package:flutter_social_news/core/model/chengState.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/core/model/navigation.dart';
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter/services.dart';
import 'package:flutter_social_news/page/login/login.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../events.dart';
import 'appBar.dart';
import 'body.dart';
import 'navigationBar.dart';


class AfterSplash extends StatefulWidget {
  @override
  _AfterSplash createState() => _AfterSplash();
}

class _AfterSplash extends State<AfterSplash> {
  var _appBar = AppBarMainPage();
  var _navigationBar = NavigationBarPage();
  var _body = BodyMainPage();

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    context.read<AfterSplashBloc>().visible(true,true, true);

    chengStateAfterSplashController = StreamController<StateType>();
    chengStateAfterSplashController.stream.listen((value){
      _appBar = AppBarMainPage();
      _navigationBar = NavigationBarPage();
      _body = BodyMainPage();
      setState(() {});
    });

    loginController = StreamController<LoginType>();
    loginController.stream.listen((value){
      login(value);
    });
    streamonWillPopNavigation = StreamController<Navigation>();
    streamonWillPopNavigation.stream.listen((value){
      navigation();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return view();
  }

  @override
  void dispose() {
    chengStateAfterSplashController.close();
    loginController.close();
    streamNavigation.close();
    super.dispose();
  }

  Widget view() {
    _appBar = AppBarMainPage(backPress: ()=> navigation(),);
    _navigationBar = NavigationBarPage();
    _body = BodyMainPage();

    if(AppPropertis.accessToken == null)
      return Directionality(textDirection: TextDirection.rtl,
          child: Stack(
            children: [
              Login(new ChengState(StateType.Main)),
              LoadinWidget(),
              MessageWidget(),
            ],
          )
      );
    else
      return Directionality(textDirection: TextDirection.rtl,
          child: WillPopScope(
              child:Stack(
                children: [
                  Scaffold(
                    backgroundColor: ObjectColor.baseBackground,
                    appBar:_appBar,
                    body: _body,
                    bottomNavigationBar:_navigationBar, // This trailing comma makes auto-formatting nicer for build methods.
                  ),
                  context.watch<MenuBloc>().view,
                  LoadinWidget(),
                  MessageWidget(),
                ],
              ),
              onWillPop: (){
                if(AppPropertis.isWillPopScope)
                  navigation();
                return Future.value(false);
              })
      );
  }

  void navigation() {
    Navigation nav;

    if(AppPropertis.navigations.length > 0 ) {
        context.read<AfterSplashBloc>().visible(true, true, true);
    }

    if(AppPropertis.navigations.length > 0 && AppPropertis.navigations[AppPropertis.navigations.length -  1].route == RouteList.PopupPage ) {
      streamClosePopupState.add('event');
    }
    else if(AppPropertis.navigations.length > 1 ) {
      AppPropertis.navigations.remove(AppPropertis.navigations[AppPropertis.navigations.length - 1]);
      nav = AppPropertis.navigations[AppPropertis.navigations.length -  1];
    }
    else if(AppPropertis.navigations.length == 1 ) {
      nav = AppPropertis.navigations[0];
    }

    if(nav != null) {
      if (nav.route != AppPropertis.currentRoute)
      {
        context.read<RouteBloc>().chengView(nav.route, navigationsAdd: false,chengState: nav.chengState);
      }
      else{
        streamNavigation.add(nav);
      }
    }
  }

  Future<void>  login(value) async{
    if(value == LoginType.Exit) {
      AppPropertis.navigations  = [Navigation(route: RouteList.HomePage)];
      SharedPreferences local = await SharedPreferences.getInstance();
      if(local.containsKey('accessToken'))
        await local.remove("accessToken");
      if(local.containsKey('currentUser'))
        await local.remove("currentUser");
      AppPropertis.accessToken = null;
      AppPropertis.currentUser = null;
    }
    setState(() {});
  }
}
