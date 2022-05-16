import 'dart:async';
import 'dart:convert';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter_social_news/helper/appSettings.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter_social_news/helper/language.dart';
import 'States/afterSplash.dart';
import 'events.dart';
import 'package:flutter_social_news/core/apiModel.dart' as apiModel;

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => new _MainPage();
}

class _MainPage extends State<MainPage> {

  Future<Widget> loadFromFuture() async {
    await getData();
    await Language.set();
    await AppStrings.loadJson();

    // return Future.value(new Login());
    return Future.value(new AfterSplash());
  }

  Future<void>  getData() async{
    SharedPreferences local = await SharedPreferences.getInstance();
    if(local.containsKey('accessToken') && local.containsKey('currentUser')){
      AppPropertis.accessToken = jsonDecode(local.getString('accessToken'));
      AppPropertis.currentUser = jsonDecode(local.getString('currentUser'));
    }
  }


  @override
  void initState() {

    chengStateMainPageController = StreamController<StateType>();
    chengStateMainPageController.stream.listen((value) {
      setState(() {});
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        navigateAfterFuture: loadFromFuture(),
        title: new Text('خوش آمدید',
          style:Style.textSplashScreen
        ),

        image: Image.asset('assets/logo.png'),
        //new Image.network('https://dad.mefa.ir/app/assets/images/app-logo-white.png'),
        backgroundColor: Color.fromRGBO(55,71,79,1),
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor:ObjectColor.base
    );
  }

  @override
  void dispose() {
    chengStateMainPageController.close();
    super.dispose();
  }
}