import 'dart:async';
import 'package:flutter/rendering.dart';
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
import '../../menus/main.dart';
import '../../menus/sideMain.dart';
import '../events.dart';

class BodyMainPage extends StatefulWidget {
  BodyMainPage({Key key}) :  super(key: key);

  @override
  _BodyMainPage createState() => _BodyMainPage();
}

class _BodyMainPage extends State<BodyMainPage>{
  final _scrollController =RouteBloc.scrollController;
  Timer timer;
  bool _scrollListener = true;
  bool _scrollTop = true;
  bool _scrollBottom = true;
  double _scrollHide = 3;

  @override
  void initState() {
    chengStateBodyController = StreamController<StateType>();
    chengStateBodyController.stream.listen((value){
      setState(() {});
    });
    startTimer();
    scroll();
    super.initState();
  }

  void startTimer() {
    Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      _scrollListener=true;
      if(_scrollTop || _scrollBottom || SizeConfig.sizeType == SizeType.Lg || _scrollController.position.maxScrollExtent < 130)
        _scrollHide = 3;
      else {
        if(_scrollHide == 0){
          if (context.read<AfterSplashBloc>().isScrolAppBar || context.read<AfterSplashBloc>().isScrolAppBar){
            context.read<AfterSplashBloc>().scrollVisible(false, false);_scrollListener=false;
          }
        }
        else _scrollHide--;
      }
    });

  }

  void scroll() {
    context.read<AfterSplashBloc>().scrollVisible(true, true);
    _scrollController.addListener(() {

      _scrollTop = false;
      _scrollBottom = false;

      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels == 0)
          _scrollTop = true;
        else
          _scrollBottom = true;
      }

      if(!_scrollListener)
        return;

      if(!context.read<AfterSplashBloc>().isScrolAppBar)
        context.read<AfterSplashBloc>().scrollVisible(true, true);

      if(!_scrollTop && !_scrollBottom ){
        _scrollHide = 3;

        // if(_scrollController.offset + 120 < _scrollController.position.maxScrollExtent)
        // if (!context.read<AfterSplashBloc>().isScrolAppBar)
        //   context.read<AfterSplashBloc>().scrollVisible(true, true);
        //
        // if(_scrollController.position.userScrollDirection == ScrollDirection.forward
        //     && _scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        //   if (context.read<AfterSplashBloc>().isScrolAppBar)
        //     context.read<AfterSplashBloc>().scrollVisible(false, null);
        //   if (!context.read<AfterSplashBloc>().isScrolNavigationBar)
        //     context.read<AfterSplashBloc>().scrollVisible(null, true);
        // }
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
          obj:Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                constraints:  BoxConstraints(minWidth: SizeConfig.minWidth - 24, maxWidth: SizeConfig.maxWidth - 24),
                child:LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return Row(children: [
                        SizeConfig.sizeType == SizeType.Lg ?
                        Container(
                          width:SizeConfig.init(constraints.maxWidth, lg: 3),
                          decoration: BoxDecoration(
                            color: ObjectColor.rightMenuBackground,
                          ),
                          child: SideMain(),
                        ):Container(width: 0,height: 0,),
                        Container(
                          width:SizeConfig.init(constraints.maxWidth, sm: 12,md: 12,lg: 9),
                          child: main(context, bl),
                        ),
                      ],);
                    }

                ) ,
              )
          )
      );

  }
  Widget main(BuildContext context, RouteBloc bl) {
    return
      Stack(
        children: [
          Scrollbar(
            // isAlwaysShown: true,
            controller: _scrollController, // <---- Here, the controller
            child:RawScrollbar(
              isAlwaysShown: true,
              controller: _scrollController,
              thumbColor:ObjectColor.shadowBackground(.2),
              radius: Radius.circular(20),
              thickness: 10,
              child:
              SingleChildScrollView(
                // scrollDirection: Axis.vertical,
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
      );

  }

  @override
  void dispose() {
    chengStateBodyController.close();
    timer?.cancel();
    super.dispose();
  }
}


