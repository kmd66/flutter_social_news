import 'package:flutter_social_news/core/Widgets/menuItem.dart';
import 'package:flutter_social_news/core/abstract/basePopupState.dart';
import 'package:flutter_social_news/core/bloc/menuBloc.dart';
import 'package:flutter_social_news/core/bloc/routeBloc.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/sizeConfig.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter_social_news/page/main/events.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/Widgets/accordion.dart';
import '../../helper/menu.dart' as menuHelper;


class SideMain extends StatefulWidget {
  @override
  _SideMain createState() => _SideMain();
}

class _SideMain extends State<SideMain> {
  final double size = 100;
  final double margin = 12;

  @override
  void  close(){

  }

  @override
  Widget build(BuildContext context)  {
    return
          Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(5),
                child:   Column(
                    children: [
                      Container(
                        child:
                        ClipOval(
                          child: Image.network('http://localhost:8080/p.jpg',
                            height: 120,
                            width: 120,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        child: Text('اسم و فامیل',style: Style.h4()),
                      ),
                    ]),
              ),
              Expanded(
                child:
                Scrollbar(
                  child:RawScrollbar(
                    isAlwaysShown: true,
                    thumbColor:ObjectColor.shadowBackground(.2),
                    radius: Radius.circular(20),
                    thickness: 10,
                    child:SingleChildScrollView(
                      child: Column(children: listmenu(context)),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color:ObjectColor.base ,
                ),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children: [
                    // IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app, color: ObjectColor.baseIcon) ),
                    TextButton.icon(onPressed: (){}, icon: Icon(Icons.exit_to_app, color: ObjectColor.baseIcon),label: Text('خروج', style: Style.h5(color:ObjectColor.baseIcon) ), ),
                    // IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app, color: ObjectColor.baseIcon) ),
                  ]),
              ),

            ],);
  }
  List<Widget> listmenu(BuildContext context) {
    List<Widget> list = [];
    menuHelper.Menu.map((x)
    {

      if(x.reghtMenu){
        if(x.child != null)
        {
          List<Widget> child = [];
          x.child.map((c){
            child.add(MenuItem(label: c.title, icon: c.icon,
                onPress: ()=> x.route != null ?
                context.read<RouteBloc>().chengView(x.route )
                    : context.read<MenuBloc>().chengView(x.menu)
            ));
          }).toList();
          list.add(Accordion(
              label:x.title,
              icon: x.icon,
              obj:Column(children:child,)
          )
          );
        }
        else{
          list.add(
              MenuItem(label: x.title, icon: x.icon,
                  onPress: ()=> x.route != null ?
                  context.read<RouteBloc>().chengView(x.route )
                      : context.read<MenuBloc>().chengView(x.menu)
              )
          );
        }
      }
    }).toList();
    return list;
  }

}