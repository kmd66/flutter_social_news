import 'package:flutter_social_news/page/menus/main.dart';
import 'package:flutter_social_news/page/menus/settings.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MenuBloc with ChangeNotifier, DiagnosticableTreeMixin {
  Widget _view = Container(height: 0,width: 0,);
  Widget get view => _view;

  void chengView(MenuList menu) {
    switch (menu) {
      case MenuList.hide:
        _view= Container(height: 0,width: 0,);
        break;
      case MenuList.Setting:
        _view= SettingsWidget();
        break;
      case MenuList.Main:
        _view= MainMenuWidget();
        break;
      default:
        Container(height: 0,width: 0,);
        break;
    }
    notifyListeners();
  }
}