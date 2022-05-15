import 'package:flutter_social_news/core/Widgets/card/cardIcon.dart';
import 'package:flutter_social_news/core/Widgets/card/cardVertical.dart';
import 'package:flutter_social_news/core/bloc/afterSplashBloc.dart';
import 'package:flutter_social_news/core/bloc/routeBloc.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/model/message.dart' as msgModel;
import 'package:flutter_social_news/core/apiModel.dart' as apiModel;
import 'package:provider/src/provider.dart';

import '../../helper/appPropertis.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => new _HomePage();
}

class _HomePage extends State<HomePage> {
  int i =0;

  @override
  void initState() {
    context.read<AfterSplashBloc>().visible(true,true, true);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child:
              Text(
                'پرکاربردها',
                style: Style.h4(fontWeight: FontWeight.bold, color: ObjectColor.base),
              ),
            ),
            Row(children: [
              CardIcon(
                title: 'فیش حقوق',
                icon: 'assets/img/Vector01.png',
                width:  (MediaQuery.of(context).size.width / 3) - 15,
                iconSize: 36,
              )
              ,CardIcon(
                icon: 'assets/img/Vector02.png',
                width:  (MediaQuery.of(context).size.width / 3),
                iconSize: 36,
                title: 'رمز پویا',
                onPress: ()=> context.read<RouteBloc>().chengView(RouteList.DynamicPasswordPage),
              )
              ,CardIcon(
                icon: 'assets/img/Vector03.png',
                width:  (MediaQuery.of(context).size.width / 3) - 15,
                iconSize: 36,
                title: 'حکم حقوق',
              ),
            ],),
            AppPropertis.isAndroid ?
            CardIcon(
              icon: 'assets/img/Vector03.png',
              width:  (MediaQuery.of(context).size.width / 3) - 15,
              iconSize: 36,
              title: 'اسکن QR',
            ): Container(width: 0,height: 0,),
            
            Container(
              margin: const  EdgeInsets.only(top: 20) ,
              width: MediaQuery.of(context).size.width,
              child:
              Text(
                'آخرین اطلاعیه ها',
                style: Style.h4(fontWeight: FontWeight.bold, color: ObjectColor.base),
              ),
            ),
            CardVertical(imgUrl: 'assets/login.png',title: 'دریافت حکم حقوقی از سامانه'),

          ]
      );
  }

}
