import 'package:flutter_social_news/core/Widgets/groupBox.dart';
import 'package:flutter_social_news/core/Widgets/redoButton.dart';
import 'package:flutter_social_news/core/bloc/menuBloc.dart';
import 'package:flutter_social_news/core/bloc/routeBloc.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/page/main/events.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class TestWidget extends StatefulWidget {
  @override
  _MainWidgetWidget createState() => _MainWidgetWidget();
}

class _MainWidgetWidget extends State<TestWidget> {
  final _scrollController = ScrollController();
  final double size = 100;
  final double margin = 12;

  Future<void> setData() async{
    SharedPreferences local = await SharedPreferences.getInstance();
    String _colerType = ColerType.values.string(ObjectColor.colerType);
    String _nightType = NightType.values.string(ObjectColor.nightType);
    local.setString("ColerType", _colerType);
    local.setString("NightType",_nightType);
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
                title: Text('منو'),
              ),
              body: Scrollbar(
                controller: _scrollController, // <---- Here, the controller
                isAlwaysShown: true, // <---- R
                child:
                SingleChildScrollView(
                    controller: _scrollController, // <---- Same as the Scrollbar controller
                    child:
                    Center(
                      child:
                      Column(
                        children: [
                          Container(
                            width: size,margin: EdgeInsets.all(margin),
                          ),
                          GroupBox(
                            value:  ObjectColor.nightType == NightType.Bright? 1: 2,
                            label: 'رنگ پسزمینه',
                            listRedoButton: [
                              RedoButton(label: 'روشن',value:1, margin: EdgeInsets.all(5.0),),
                              RedoButton(label: 'تاریک',value:2, margin: EdgeInsets.all(5.0),),
                            ],
                            onChange: (v){
                              setState(() {
                                if(v == 1)
                                  ObjectColor.nightType = NightType.Bright;
                                else
                                  ObjectColor.nightType = NightType.Dark;
                              });
                              setData();
                            },
                          ),

                          Container(
                            width: size,margin: EdgeInsets.all(margin),
                          ),
                        ],
                      ),
                    )
                ),
              ),
              bottomNavigationBar: Container(
                margin: const EdgeInsets.all(10.0),
                child:
                FloatingActionButton(
                  child: Icon(
                    Icons.close,
                    color: ObjectColor.baseIcon,
                  ),
                  backgroundColor: ObjectColor.base,
                  onPressed:(){
                    context.read<RouteBloc>().chengView(RouteList.HomePage);
                    if(chengStateAfterSplashController != null )
                      chengStateAfterSplashController.add(null);
                    context.read<MenuBloc>().chengView(MenuList.hide);
                  },
                ),
              )
          )
      );

  }

}