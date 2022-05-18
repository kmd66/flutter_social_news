import 'dart:async';
import 'package:flutter_social_news/core/bloc/afterSplashBloc.dart';
import 'package:flutter_social_news/core/bloc/menuBloc.dart';
import 'package:flutter_social_news/core/bloc/routeBloc.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_social_news/core/Widgets/showObj.dart';
import '../events.dart';


class AppBarMainPage extends StatefulWidget implements PreferredSizeWidget {
  AppBarMainPage({Key key,this.backPress}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  final Function()backPress;

  @override
  _AppBarMainPage createState() => _AppBarMainPage();
}

class _AppBarMainPage extends State<AppBarMainPage>{

  @override
  void initState() {
    chengStateAppBarController = StreamController<StateType>();
    chengStateAppBarController.stream.listen((value){
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      ShowObj(
        animat: true,
        isShow: context.watch<AfterSplashBloc>().isVisibleAppBar && context.watch<AfterSplashBloc>().isScrolAppBar,
        obj:AppBar(
            centerTitle: true,
            backgroundColor: ObjectColor.base,
            shadowColor:Colors.transparent,
            title: Text(context.watch<RouteBloc>().routeTitle),
            leading: Container(
              margin: const EdgeInsets.only(top: 0, right: 10.0, bottom: 0, left: 10.0),
              child:
              IconButton(
                onPressed: () =>widget.backPress(),
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.all(10.0),
                child:
                Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ]
        ),
      );
  }

  @override
  void dispose() {
    chengStateAppBarController.close();
    super.dispose();
  }
}
