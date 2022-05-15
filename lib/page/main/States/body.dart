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

    return context.watch<AfterSplashBloc>().isVisibleBody  ==  true?
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
                child:   Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    context.watch<AfterSplashBloc>().isVisibleAppBar  == true ?
                    Container(height: 0,width: 0,):HederTitle(img: "assets/img/b1.jpg",title: bl.routeTitle,),
                    Container(
                        margin:const EdgeInsets.only(top: 30.0, right: 0.0, bottom: 20.0, left: 0.0),
                        padding: const EdgeInsets.only(top: 25.0, right: 15, bottom: 10.0, left: 15.0),
                        decoration: BoxDecoration(
                          color: ObjectColor.baseBackground,
                        ),
                        child:bl.view
                    )
                  ],
                ),
              )
          ),
          ),
        ),
      ],
    ): Container(height: 0,width: 0,);
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


