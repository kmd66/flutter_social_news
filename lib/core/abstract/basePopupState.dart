import 'dart:async';
import 'package:flutter_social_news/core/bloc/events.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/core/model/navigation.dart';
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class BasePopupState<T extends StatefulWidget> extends State<T> {
  BasePopupState(this.appBarTitle, this.visibleNavigationBar);
  final _scrollController = ScrollController();
  final String appBarTitle;
  final bool visibleNavigationBar;



  @protected
  Widget popupBuild(BuildContext context);



  @protected
  @mustCallSuper
  void initState() {
    AppPropertis.navigations.add(Navigation(route: RouteList.PopupPage ));

    if(streamClosePopupState.hasListener == true)
      streamClosePopupState.close();
    streamClosePopupState = StreamController<String>();
    streamClosePopupState.stream.listen((value){
      close();
    });

    super.initState();
  }

  @protected
  @mustCallSuper
  void close(){
    if(AppPropertis.navigations.length > 0) {
      Navigation nav = AppPropertis.navigations[AppPropertis.navigations.length -  1];
      if(nav.route == RouteList.PopupPage)
        AppPropertis.navigations.remove(AppPropertis.navigations[AppPropertis.navigations.length - 1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return

      Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromARGB(255,0,0,0),
          ),
          child:
          Scaffold(
              backgroundColor: ObjectColor.baseBackground,
              appBar:AppBar(
                centerTitle: true,
                backgroundColor: ObjectColor.base,
                shadowColor:Colors.transparent,
                title: Text(appBarTitle),
              ),
              body: Scrollbar(
                controller: _scrollController, // <---- Here, the controller
                isAlwaysShown: true, // <---- R
                child:
                SingleChildScrollView(
                    controller: _scrollController, // <---- Same as the Scrollbar controller
                    child:popupBuild(context)
                ),
              ),
              bottomNavigationBar:
              visibleNavigationBar == true ? Container(
                margin: const EdgeInsets.all(10.0),
                child:
                FloatingActionButton(
                  child: Icon(
                    Icons.close,
                    color: ObjectColor.baseIcon,
                  ),
                  backgroundColor: ObjectColor.base,
                  onPressed:()=>close(),
                ),
              )
                  :Container(width: 0,height: 0,)
          )
      );

  }

}