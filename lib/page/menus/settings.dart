import 'package:flutter_social_news/core/Widgets/redoButton.dart';
import 'package:flutter_social_news/core/abstract/basePopupState.dart';
import 'package:flutter_social_news/core/bloc/menuBloc.dart';
import 'package:flutter_social_news/core/bloc/routeBloc.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/page/main/events.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/Widgets/groupBox.dart';
import '../../core/Widgets/hr.dart';
import '../../helper/sizeConfig.dart';

class SettingsWidget extends StatefulWidget {
  @override
  _SettingsWidget createState() => _SettingsWidget('Setting', true);
}

class _SettingsWidget extends BasePopupState<SettingsWidget> {
  _SettingsWidget(String appBarTitle, bool visibleNavigationBar) : super(appBarTitle, visibleNavigationBar);

  final double size = 100;
  final double margin = 12;
  bool chaeng = false;



  void _setColer (ColerType colerType) {
    _setData();
    setState(() {
      ObjectColor.colerType =colerType;
    });
  }

  Future<void> _setData() async{
    chaeng = true;
    SharedPreferences local = await SharedPreferences.getInstance();
    String _colerType = ColerType.values.string(ObjectColor.colerType);
    String _nightType = NightType.values.string(ObjectColor.nightType);
    local.setString("ColerType", _colerType);
    local.setString("NightType",_nightType);
  }


  @override
  Widget popupBuild(BuildContext context) {
    return
      Center(
          child:
          Container(
            padding: const EdgeInsets.all(12.0),
            constraints:  BoxConstraints(minWidth: SizeConfig.minWidth - 24, maxWidth: SizeConfig.maxWidth - 24),
            child:
            Column(
              children: [
                Container(
                  width: size,margin: EdgeInsets.all(margin),
                ),
                GroupBox(
                  value:  ObjectColor.nightType == NightType.Bright? 1: 2,
                  label: '?????? ??????????????',
                  listRedoButton: [
                    RedoButton(label: '????????',value:1, margin: EdgeInsets.all(5.0),),
                    RedoButton(label: '??????????',value:2, margin: EdgeInsets.all(5.0),),
                  ],
                  onChange: (v){
                    setState(() {
                      if(v == 1)
                        ObjectColor.nightType = NightType.Bright;
                      else
                        ObjectColor.nightType = NightType.Dark;
                    });
                    _setData();
                  },
                ),
                Container(
                  width: size,margin: EdgeInsets.all(margin),
                ),
                HrText(height: 10.0,label: '?????? ????????',lineColor:ObjectColor.baseTextColor ,),
                Wrap(
                  children: [
                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('????????'),
                        backgroundColor: Color.fromRGBO(239, 83, 80, 1),
                        onPressed:()=>_setColer (ColerType.Red),
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('????????????'),
                        backgroundColor: Color.fromRGBO(255, 112, 67, 1),
                        onPressed:()=>_setColer (ColerType.Orange),
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('??????'),
                        backgroundColor: Color.fromRGBO(66, 165, 245, 1),
                        onPressed:()=>_setColer (ColerType.Blue),
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('?????? ????????'),
                        backgroundColor: Color.fromRGBO(38, 166, 154, 1),
                        onPressed:()=>_setColer (ColerType.Teal),
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('??????????'),
                        backgroundColor: Color.fromRGBO(236, 64, 122, 1),
                        onPressed:()=>_setColer (ColerType.Pink),
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('??????'),
                        backgroundColor: Color.fromRGBO(102, 187, 106, 1),
                        onPressed:()=>_setColer (ColerType.Green),
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('?????? ????????'),
                        backgroundColor: Color.fromRGBO(174, 213, 129, 1),
                        onPressed:()=>_setColer (ColerType.LightGreen),
                      ),
                    ),

                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('??????????'),
                        backgroundColor: Color.fromRGBO(171, 71, 189, 1),
                        onPressed:()=>_setColer (ColerType.Violet),
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('??????????????'),
                        backgroundColor: Color.fromRGBO(126 ,87 ,194, 1),
                        onPressed:()=>_setColer (ColerType.Purole),
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('??????'),
                        backgroundColor: Color.fromRGBO(255 ,179 ,0, 1),
                        onPressed:()=>_setColer (ColerType.Yellow),
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('????????'),
                        backgroundColor: Color.fromRGBO(63 ,81 ,181, 1),
                        onPressed:()=>_setColer (ColerType.Indigo),
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('?????? ??????????????'),
                        backgroundColor: Color.fromRGBO(120 ,144 ,156, 1),
                        onPressed:()=>_setColer (ColerType.BlueGrey),
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('???????? ????'),
                        backgroundColor: Color.fromRGBO(141 ,110 ,99, 1),
                        onPressed:()=>_setColer (ColerType.Brown),
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,margin: EdgeInsets.all(margin),
                      child:
                      FloatingActionButton(
                        child: Text('???????????? ????'),
                        backgroundColor: Color.fromRGBO(0 ,188 ,212, 1),
                        onPressed:()=>_setColer (ColerType.Cyan),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
      );
  }

  @override
  void  close(){
    super.close();
    if(chaeng == true) {
      context.read<RouteBloc>().chengView(RouteList.HomePage);
      if (chengStateAfterSplashController != null)
        chengStateAfterSplashController.add(null);
    }
    context.read<MenuBloc>().chengView(MenuList.hide);
    chaeng = false;

  }

}