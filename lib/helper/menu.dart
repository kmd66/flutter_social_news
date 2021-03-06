import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/model/enums.dart';
import 'kamaFont.dart';

List<MenuItem> Menu = [
  MenuItem(MenuType.Nav, title:'صفحه اصلی', route: RouteList.HomePage, icon: Icons.home)
  , MenuItem(MenuType.Nav, title:'پروفایل', route: RouteList.PofilePage, icon: KamaFont.user_shield)
  , MenuItem(MenuType.Nav, title:'درباره ما', route: RouteList.AboutPage, icon: Icons.info_outline)
  , MenuItem(MenuType.Nav, title:'منو', menu: MenuList.Main, icon: Icons.menu, reghtMenu: false)

  , MenuItem(MenuType.Sid, title:'منو0', menu: MenuList.Setting, icon: Icons.settings, reghtMenu: false)
  , MenuItem(MenuType.Sid, title:'منو1 ', route: RouteList.HomePage, icon: Icons.menu)
  , MenuItem(MenuType.Sid, title:'منو2 ', route: RouteList.HomePage, icon: Icons.app_blocking_outlined)

  , MenuItem(MenuType.Sid, title:'منو3 ',icon: Icons.supervised_user_circle,
      child: [
        MenuItem(MenuType.Sid, title:'منو4 ',icon: Icons.title, route: RouteList.HomePage),
        MenuItem(MenuType.Sid, title:'منو5 ', route: RouteList.AboutPage, icon: Icons.account_box_outlined),
      ]
  )
];

class MenuItem {

  final MenuType type;
  final List<MenuItem> child;
  final String title;
  final RouteList route;
  final MenuList menu;
  final IconData icon;
  final bool reghtMenu;

  MenuItem(this.type, {this.child, this.title, this.route, this.menu, this.icon, this.reghtMenu = true});
}
enum MenuType {
  Nav,
  Sid,
}