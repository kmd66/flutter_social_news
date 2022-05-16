import 'dart:async';
import 'package:flutter_social_news/core/bloc/events.dart';
import 'package:flutter_social_news/core/model/chengState.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/core/model/navigation.dart';
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter/cupertino.dart';

import '../bloc/routeBloc.dart';

abstract class BaseStatefulWidget extends StatefulWidget {
  BaseStatefulWidget(ChengState _chengState): chengState=new ChengState(_chengState.stateType,data: _chengState.data);
  final ChengState chengState;

  @protected
  State<StatefulWidget> createState() ;

}

abstract class BaseState<T extends BaseStatefulWidget> extends State<T> {
  BaseState(this.streamChengState, this.route, ChengState chengState )
    :this.chengState = chengState;

  // StateType stateType= StateType.Main;

  ChengState chengState;

  StateType get stateType => chengState.stateType;
  set stateType (StateType x) => chengState.stateType = x;

  bool navigationsAdd = true;
  final StreamController<ChengState> streamChengState ;
  RouteList route ;

  @protected
  Widget build(BuildContext context);

  @protected
  @mustCallSuper
  void initState() {
    navigationsAdd = false;
    changeState(chengState);
    navigationsAdd = true;

    if(streamChengState.hasListener != true) {
      streamChengState.stream.listen((value) {
        changeState(value);
      });
    }

    if(streamNavigation.hasListener == true)
      streamNavigation.close();
    streamNavigation = StreamController<Navigation>();
    streamNavigation.stream.listen((value){
      if(AppPropertis.currentRoute == route) {
        navigationsAdd = false;
        changeState(value.chengState);
      }
    });

    super.initState();
  }

  @protected
  @mustCallSuper
  void changeState(ChengState value){

    if(value.stateType != null && stateType != null && value.stateType == StateType.None) {
      value.navigationsAdd = false;
      value.getList = false;
      value.stateType = stateType;
    }

    if(value.navigationsAdd == false)
      navigationsAdd = false;

    if (RouteBloc.scrollController.hasClients && stateType != value.stateType)
      RouteBloc.scrollController.jumpTo(0.0);

    if(navigationsAdd && stateType != value.stateType) {
      AppPropertis.navigations.add(
          new Navigation(route: route, chengState: value));
    }
    else navigationsAdd = true;

    stateType = value.stateType;
  }

  @protected
  @mustCallSuper
  void dispose() {
    if(streamChengState.hasListener == true)
      streamChengState.close();
    super.dispose();
  }
}