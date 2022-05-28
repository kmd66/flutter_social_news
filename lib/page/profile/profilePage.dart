import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter_social_news/core/Widgets/card/cardIcon.dart';
import 'package:flutter_social_news/core/Widgets/card/cardVertical.dart';
import 'package:flutter_social_news/core/Widgets/showObj.dart';
import 'package:flutter_social_news/core/bloc/afterSplashBloc.dart';
import 'package:flutter_social_news/core/bloc/routeBloc.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/model/message.dart' as msgModel;
import 'package:flutter_social_news/core/apiModel.dart' as apiModel;
import 'package:provider/src/provider.dart';
import '../../core/Widgets/hr.dart';
import '../../core/Widgets/imgSlide.dart';
import '../../core/model/list.dart';
import '../../helper/appPropertis.dart';
import '../../helper/sizeConfig.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePage createState() => new _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {


  @override
  void initState() {

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
          children: [
            Image.network('http://localhost:8080/delafltbaner.jpg',
              fit: BoxFit.fill,
            )
          ]);
      LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints)
          {
            var size = SizeConfig.init(constraints.maxWidth, sm:12);
            return Column(
                children: [
                  Image.network('http://localhost:8080/delafltbaner.jpg',
                    width: size,
                    fit: BoxFit.fill,
                  ),
                  Expanded(
                      child: Container()
                  )
                ]);
          });
  }

}
