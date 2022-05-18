import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../core/bloc/afterSplashBloc.dart';

enum SizeType {
  Non,
  Sm,
  Md,
  Lg
}
enum WidthType {
  w1,
  w2,
  w3,
  w4,
  w5,
  w6,
}

class SizeConfig {
  static SizeType sizeType = SizeType.Non;

  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double width;
  static double maxWidth = 1320;
  static double minWidth = 320;

  static double _safeAreaHorizontal;


  static void context(BuildContext context){

    _mediaQueryData = MediaQuery.of(context);

    if(sizeType == SizeType.Lg && context.read<AfterSplashBloc>().isShowNavigationBar)
      context.read<AfterSplashBloc>().showNavigationBar(false);
    else if(sizeType != SizeType.Lg && !context.read<AfterSplashBloc>().isShowNavigationBar)
      context.read<AfterSplashBloc>().showNavigationBar(true);
  }

  static double init(double cw,{ WidthType sm,WidthType md, WidthType lg}){

    if(cw != null )
      screenWidth = cw;
    else
      screenWidth = _mediaQueryData.size.width;

    if(_mediaQueryData.size.width < 576){
      _sm(sm,md,lg);
    }
    else if(_mediaQueryData.size.width >=  768 && screenWidth < 992){
      _md(sm,md,lg);
    }
    else if(_mediaQueryData.size.width >=  992){
      _lg(sm,md,lg);
    }

    return width;
  }

  static _sm(WidthType sm,WidthType md,WidthType lg){
    sizeType = SizeType.Sm;
    if(sm == null ){
      if(md != null )
        width = (screenWidth / _convert(md)).round().toDouble();
      else if(lg != null )
        width = (screenWidth / _convert(lg)).round().toDouble();
      else
        width = screenWidth;
    }

    else
      width = (screenWidth / _convert(sm)).round().toDouble();
  }

  static _md(WidthType sm,WidthType md,WidthType lg){
    sizeType = SizeType.Md;
    if(md == null ){
      if(lg != null )
        width = (screenWidth / _convert(lg)).round().toDouble();
      else if(sm != null )
        width = (screenWidth / _convert(sm)).round().toDouble();
      else
        width = screenWidth;
    }

    else
      width = (screenWidth / _convert(md)).round().toDouble();
  }

  static _lg(WidthType sm,WidthType md,WidthType lg){
    sizeType = SizeType.Lg;
    if(lg == null ){
      if(md != null )
        width = (screenWidth / _convert(md)).round().toDouble();
      else if(sm != null )
        width = (screenWidth / _convert(sm)).round().toDouble();
      else
        width = screenWidth;
    }

    else
      width = (screenWidth / _convert(lg)).round().toDouble();
  }

  static int _convert(WidthType type){
    return type.index + 1;
  }

}