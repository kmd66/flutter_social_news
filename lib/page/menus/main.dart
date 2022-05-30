import 'package:flutter_social_news/core/Widgets/menuItem.dart';
import 'package:flutter_social_news/core/abstract/basePopupState.dart';
import 'package:flutter_social_news/core/bloc/menuBloc.dart';
import 'package:flutter_social_news/core/bloc/routeBloc.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/sizeConfig.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter_social_news/page/main/events.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/Widgets/accordion.dart';
import '../../core/Widgets/getImage.dart';
import '../../helper/menu.dart' as menuHelper;


class MainMenuWidget extends StatefulWidget {
  @override
  _MainWidgetWidget createState() => _MainWidgetWidget('منو',true);
}

class _MainWidgetWidget extends BasePopupState<MainMenuWidget> {
  _MainWidgetWidget(String appBarTitle, bool visibleNavigationBar) : super(appBarTitle, visibleNavigationBar);
  final double size = 100;
  final double margin = 12;


  void itemPresseRoute (RouteList route) {
    close();
    context.read<RouteBloc>().chengView(route);
    context.read<MenuBloc>().chengView(MenuList.hide);
    if (chengStateNavigationBarController != null)
      chengStateNavigationBarController.add(null);

  }

  @override
  void  close(){
    context.read<MenuBloc>().chengView(MenuList.hide);
    super.close();
  }

  @override
  Widget popupBuild(BuildContext context) {
    return
      Stack(children: [

        Container(
            height:80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ObjectColor.base,
            )
        ),
        Center(child:
        Container(
          width:AppPropertis.bodyWidth,
          margin: EdgeInsets.only(top: 80),
          child:
          Column(
            children: [
              Container(
                transform: Matrix4.translationValues(0.0, -60, 0.0),
                child:
                ClipOval(
                  child: GetImage('http://localhost:8080/defaultUser.jpg',
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                transform: Matrix4.translationValues(0.0, -50, 0.0),
                child: Text('اسم و فامیل',style: Style.h4()),
              ),

              Column(children: listmenu(context)),

              Container(margin:EdgeInsets.only(bottom: 60) ,),
              MenuItem(label: 'صفحه اصلی',onPress:()=>itemPresseRoute(RouteList.HomePage)),
              MenuItem(label: 'درباره ما',onPress:()=>itemPresseRoute(RouteList.AboutPage)),
              MenuItem(label: 'خروج',margin:const EdgeInsets.only(top: 40),onPress:()
              {
                context.read<MenuBloc>().chengView(MenuList.hide);
                loginController.add(LoginType.Exit);
              }
              ),

            ],
          ),
        ),)
      ],);
  }

  List<Widget> listmenu(BuildContext context) {
    List<Widget> list = [];
    menuHelper.Menu.map((x)
    {
      if(x.type == menuHelper.MenuType.Sid){
        if(x.child != null)
        {
          List<Widget> child = [];
          x.child.map((c){
            child.add(MenuItem(label: c.title, icon: c.icon,
                onPress:()=> c.route != null ?
                itemPresseRoute(c.route): context.read<MenuBloc>().chengView(c.menu)
                    ));
          }).toList();
          list.add(Accordion(
              label:x.title,
              icon: x.icon,
              obj:Column(children:child,)
          )
          );
        }
        else{
          list.add(
              MenuItem(label: x.title, icon: x.icon,
                  onPress:()=> x.route != null ?
                  itemPresseRoute(x.route): context.read<MenuBloc>().chengView(x.menu)
              )
          );
        }
      }

    }).toList();
    return list;
  }
}