import 'dart:async';
import 'package:flutter_social_news/core/Widgets/hederTitle.dart';
import 'package:flutter_social_news/core/bloc/afterSplashBloc.dart';
import 'package:flutter_social_news/core/bloc/routeBloc.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:flutter_social_news/core/Widgets/showObj.dart';
import 'package:flutter_social_news/helper/sizeConfig.dart';
import '../events.dart';

class BodyMainPage extends StatefulWidget {
  BodyMainPage({Key key}) :  super(key: key);

  @override
  _BodyMainPage createState() => _BodyMainPage();
}

class _BodyMainPage extends State<BodyMainPage>{
  final _scrollController =RouteBloc.scrollController;

  @override
  void initState() {
    chengStateBodyController = StreamController<StateType>();
    chengStateBodyController.stream.listen((value){
      setState(() {});
    });
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels == 0) {
          print('up');
        } else {
          print('do');

        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    RouteBloc bl = Provider.of<RouteBloc>(context, listen:true);
    SizeConfig.context(context);
    return
      ShowObj(
        isShow: context.watch<AfterSplashBloc>().isVisibleBody ,
        obj:
        Stack(
          children: [
            Scrollbar(
              // isAlwaysShown: true,
              controller: _scrollController, // <---- Here, the controller
              child:RawScrollbar(
                controller: _scrollController,
                thumbColor:ObjectColor.shadowBackground(.6),
                radius: Radius.circular(20),
                thickness: 5,
                child:
                SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    controller: _scrollController, // <---- Same as the Scrollbar controller
                    child:
                    Center(
                        child:Container(
                            constraints:  BoxConstraints(minWidth: SizeConfig.minWidth - 24, maxWidth: SizeConfig.maxWidth - 24),
                            // margin:const EdgeInsets.symmetric(vertical: 20.0),
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: ObjectColor.baseBackground,
                            ),
                            child:bl.view
                        )
                    )
                ),
              ),
            ),
          ],
        ),
      );

  }

  double width(double parentWidth) {
    if(parentWidth > AppPropertis.maxWidth)
      AppPropertis.bodyWidth = AppPropertis.maxWidth;
    else if(parentWidth < 320)
      AppPropertis.bodyWidth = 320;
    else
      AppPropertis.bodyWidth = parentWidth;
    return AppPropertis.bodyWidth;
  }

  @override
  void dispose() {
    chengStateBodyController.close();
    super.dispose();
  }
}


