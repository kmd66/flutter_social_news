import 'dart:async';
import 'package:flutter_social_news/core/Widgets/bottomNavigationBarButton.dart';
import 'package:flutter_social_news/core/bloc/afterSplashBloc.dart';
import 'package:flutter_social_news/core/bloc/menuBloc.dart';
import 'package:flutter_social_news/core/bloc/routeBloc.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_social_news/core/Widgets/showObj.dart';
import '../../../helper/menu.dart';
import '../events.dart';

class NavigationBarPage extends StatefulWidget implements PreferredSizeWidget{
  NavigationBarPage({Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);


  @override
  final Size preferredSize; // default is 56.0

  @override
  _NavigationBar createState() => _NavigationBar();
}

class _NavigationBar extends State<NavigationBarPage>{
  bool  isAppbar = false;

  @override
  void initState() {
    chengStateNavigationBarController = StreamController<StateType>();
    chengStateNavigationBarController.stream.listen((value){
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AfterSplashBloc bl = Provider.of<AfterSplashBloc>(context, listen:true);
    isAppbar = !bl.isVisibleAppBar;
    return
      ShowObj(
        animat: context.watch<AfterSplashBloc>().isVisibleNavigationBar,
        isShow: bl.isVisibleNavigationBar && bl.isShowNavigationBar && bl.isScrolNavigationBar,
        obj: Container(
          decoration: BoxDecoration(
              color: ObjectColor.cardBackground,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: ObjectColor.baseBorder2,
                    blurRadius: 0.0,
                    offset: Offset(0.0, 0.0),
                    spreadRadius: 1.0
                ),
              ]
          ),
          child: Row(
            children:
            listmenu(context) ,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),

        ),
      );
  }

  @override
  void dispose() {
    chengStateNavigationBarController.close();
    super.dispose();
  }

  List<Widget> listmenu(BuildContext context) {
    List<Widget> list = [];
    Menu.map((x) =>
    {
      if(x.type == MenuType.Nav )
        list.add(
            BottomNavigationBarButton(
                btnIcon: x.icon,
                title: x.title,
                onPress: ()=> x.route != null ?
                context.read<RouteBloc>().chengView(x.route )
                    : context.read<MenuBloc>().chengView(x.menu)
            )
        )
    }).toList();
    return list;
  }
}
