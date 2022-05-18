import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/model/enums.dart';

List<MenuItem> NaveMenu = [
  MenuItem(title:'درباره ما', route: RouteList.AboutPage, icon: Icons.app_blocking_outlined)
  , MenuItem(title:'صفحه اصلی', route: RouteList.HomePage, icon: Icons.home)
  , MenuItem(title:'منو', menu: MenuList.Main, icon: Icons.menu)
];
List<MenuItem> SideMenu= [];

class MenuItem {
  final String title;
  final RouteList route;
  final MenuList menu;
  final IconData icon;

  MenuItem({this.title, this.route, this.menu, this.icon});
}