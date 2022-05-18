import 'package:flutter_social_news/core/bloc/routeBloc.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/page/main/events.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//ignore: must_be_immutable
class BottomNavigationBarButton extends StatelessWidget {
  BottomNavigationBarButton({
    bool isSelect = false,
    IconData btnIcon = Icons.home,
    String title,
    var onPress
  }){
    this.isSelect = isSelect;
    this.onPress = onPress;
    this.title=title;
    this.btnIcon = btnIcon;
  }

  IconData btnIcon;
  bool isSelect;
  Function onPress;
  String title;

  @override
  Widget build(BuildContext context) {
    if(isSelect == false && title == context.read<RouteBloc>().routeTitle)
      isSelect = true;
    return
      isSelect == true?
      Container(
        transform: Matrix4.translationValues(0.0, -15, 0.0),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ObjectColor.base,
            border: Border.all(width: 4, color:ObjectColor.baseBorderButton)
        ),
        child: Center(
          child:
          Icon(btnIcon,
            color: ObjectColor.baseIcon,
          ),
        ) ,
      ) :
      InkWell(
        onTap: (){
          if(onPress != null) {
            onPress();
            if(chengStateNavigationBarController != null )
              chengStateNavigationBarController.add(null);
          }
        },
        child:
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Center(

            child:
            Icon(
              btnIcon,
              color: ObjectColor.baseIcon,
            ),
          ) ,
        ) ,
      );
  }

}