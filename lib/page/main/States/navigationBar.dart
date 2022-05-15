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
    return bl.isVisibleNavigationBar == true ?
    Container(
      constraints: BoxConstraints(minWidth: 320, maxWidth: AppPropertis.maxWidth, ),
      decoration: BoxDecoration(
          color: Color.fromRGBO(5,23,84,1.0),
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
        children: [
          BottomNavigationBarButton(
              title: 'پروفایل',
              btnIcon: 'assets/img/Vector04.png',
              onPress: ()=> context.read<RouteBloc>().chengView(RouteList.PofilePage)),
          BottomNavigationBarButton(
              title: 'فیش حقوق',
              btnIcon: 'assets/img/Vector01.png',
              onPress: ()=>{
              }
          ),
          BottomNavigationBarButton(
              title: 'صفحه اصلی',
              onPress: ()=> context.read<RouteBloc>().chengView(RouteList.HomePage)
          ),
          BottomNavigationBarButton(
              title: 'رمز پویا',
              btnIcon: 'assets/img/Vector02.png',
              onPress: ()=> context.read<RouteBloc>().chengView(RouteList.DynamicPasswordPage)
            // onPress: ()=>context.read<AfterSplashBloc>().visible(isAppbar,true, true)
          ),
          BottomNavigationBarButton(
              title: 'حکم حقوق',
              btnIcon: 'assets/img/Vector03.png',
              onPress: ()=>{
              }
            // onPress:()=>context.read<MenuBloc>().chengView(MenuList.Main),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),

    ): Container(height: 0,width: 0,);
  }

  @override
  void dispose() {
    chengStateNavigationBarController.close();
    super.dispose();
  }
}
