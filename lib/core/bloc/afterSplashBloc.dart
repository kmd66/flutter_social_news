import 'package:flutter_social_news/page/main/events.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AfterSplashBloc with ChangeNotifier, DiagnosticableTreeMixin {
  bool _isVisibleAppBar = false;
  bool get isVisibleAppBar => _isVisibleAppBar;

  double _heightAppBar = 0;
  double get heightAppBar => _heightAppBar;

  bool _isVisibleNavigationBar = false;
  bool get isVisibleNavigationBar => _isVisibleNavigationBar;

  bool _isVisibleBody = false;
  bool get isVisibleBody => _isVisibleBody;

  bool _isShowNavigationBar = false;
  bool get isShowNavigationBar => _isShowNavigationBar;

  bool _isScrolNavigationBar = false;
  bool get isScrolNavigationBar => _isScrolNavigationBar;

  bool _isScrolAppBar = false;
  bool get isScrolAppBar => _isScrolAppBar;


  void visible(bool isVisibleAppBar,bool isVisibleNavigationBar,bool isVisibleBody ) {
    _isVisibleAppBar = isVisibleAppBar;
    _isVisibleNavigationBar = isVisibleNavigationBar;
    _isVisibleBody = isVisibleBody;

    if(isVisibleAppBar == true)
      _heightAppBar = 150;
    else
    _heightAppBar = 0;

    if(chengStateAppBarController != null )
      chengStateAppBarController.add(null);
    if(chengStateBodyController != null )
      chengStateBodyController.add(null);
    if(chengStateNavigationBarController != null )
      chengStateNavigationBarController.add(null);
  }
  void appBar(bool isVisibleAppBar ) {
    _isVisibleAppBar = isVisibleAppBar;
    if(isVisibleAppBar == true)
      _heightAppBar = 150;
    else
      _heightAppBar = 0;

    if(chengStateAppBarController != null )
      chengStateAppBarController.add(null);
  }
  void navigationBar(bool isVisibleNavigationBar ) {
    _isVisibleNavigationBar = isVisibleNavigationBar;

    if(chengStateNavigationBarController != null )
      chengStateNavigationBarController.add(null);
  }
  void body(bool isVisibleBody ) {
    _isVisibleBody = isVisibleBody;

    if(chengStateBodyController != null )
      chengStateBodyController.add(null);
  }

  void showNavigationBar(bool isShowNavigationBar ) {
    _isShowNavigationBar = isShowNavigationBar;

    if(chengStateNavigationBarController != null )
      chengStateNavigationBarController.add(null);
  }

  void scrollVisible(bool isScrolAppBar, bool isScrolNavigationBar) {

   if(null != isScrolAppBar) _isScrolAppBar = isScrolAppBar;
   if(null != isScrolNavigationBar)  _isScrolNavigationBar = isScrolNavigationBar;

    if(null != isScrolAppBar && chengStateAppBarController != null )
      chengStateAppBarController.add(null);
    if(null != isScrolNavigationBar && chengStateNavigationBarController != null )
      chengStateNavigationBarController.add(null);
  }
}