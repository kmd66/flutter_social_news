import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../core/bloc/afterSplashBloc.dart';


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

      if (_mediaQueryData.size.width < 576)
        sizeType = SizeType.Sm;
      else if (_mediaQueryData.size.width >= 576 && _mediaQueryData.size.width < 992)
        sizeType = SizeType.Md;
      else if (_mediaQueryData.size.width >= 992)
        sizeType = SizeType.Lg;
  }
  static double init(double cw,{ int sm,int md,int lg}){

    if(cw != null )
      screenWidth = cw;
    else
      screenWidth = _mediaQueryData.size.width;

    if(sizeType == SizeType.Md){
      _md(sm,md,lg);
    }
    else if(sizeType == SizeType.Lg){
      _lg(sm,md,lg);
    }
    else
      _sm(sm,md,lg);

    return width;
  }

  static double init2(double cw,{ WidthType sm,WidthType md, WidthType lg}){

    if(cw != null )
      screenWidth = cw;
    else
      screenWidth = _mediaQueryData.size.width;
    int ism;
    int imd;
    int ilg;

    if(ism != null)
      ism  = sm.index + 1;
    if(imd != null)
      imd  = md.index + 1;
    if(ism != null)
      ilg  = lg.index + 1;

    if(_mediaQueryData.size.width < 576){
      _sm(ism,imd,ilg);
    }
    else if(_mediaQueryData.size.width >=  576 && _mediaQueryData.size.width < 992){
      _md(ism,imd,ilg);
    }
    else if(_mediaQueryData.size.width >=  992){
      _lg(ism,imd,ilg);
    }

    return width;
  }

  static _sm(int sm,int md,int lg){
    if(sm == null ){
      if(md != null )
        width = _convert(md).floor().toDouble();
      else if(lg != null )
        width = _convert(lg).floor().toDouble();
      else
        width = screenWidth;
    }

    else
      width = _convert(sm).floor().toDouble();
  }

  static _md(int sm,int md,int lg){
    if(md == null ){
      if(lg != null )
        width = _convert(lg).floor().toDouble();
      else if(sm != null )
        width = _convert(sm).floor().toDouble();
      else
        width = screenWidth;
    }

    else
      width = _convert(md).floor().toDouble();
  }

  static _lg(int sm,int md,int lg){
    if(lg == null ){
      if(md != null )
        width = _convert(md).floor().toDouble();
      else if(sm != null )
        width = _convert(sm).floor().toDouble();
      else
        width = screenWidth;
    }

    else
      width = _convert(lg).floor().toDouble();
  }

  static double _convert(int i){
    return (screenWidth * (8.333333333 * i)) / 100;
  }

}

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
  w7,
  w8,
  w9,
  w10,
  w11,
  w12,
}