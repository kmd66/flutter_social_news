import 'package:flutter/material.dart';
import 'package:flutter_social_news/page/main/mainPage.dart';
import 'package:provider/provider.dart';
import 'core/bloc/afterSplashBloc.dart';
import 'core/bloc/menuBloc.dart';
import 'core/bloc/routeBloc.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RouteBloc()),
        ChangeNotifierProvider(create: (_) => AfterSplashBloc()),
        ChangeNotifierProvider(create: (_) => MenuBloc()),
      ],
      child: new MaterialApp(
        theme: ThemeData(fontFamily: 'Vazir'),
        debugShowCheckedModeBanner: false,
        // home:Directionality(textDirection: TextDirection.rtl,child:Scaffold(body: VideoPlayerScreen(),),)
        //  home:TestListInFolder()
        home: new MainPage(),
      ),
    ),
  );
}