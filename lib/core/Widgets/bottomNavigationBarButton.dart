import 'package:flutter_social_news/core/bloc/routeBloc.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter_social_news/page/main/events.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//ignore: must_be_immutable
class BottomNavigationBarButton extends StatelessWidget {
  BottomNavigationBarButton({
    bool isSelect = false,
    this.btnIcon,
    String title,
    var onPress
  }){
    this.isSelect = isSelect;
    this.onPress = onPress;
    this.title=title;
  }

  String btnIcon;
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
            border: Border.all(width: 5, color:ObjectColor.baseBackground)
        ),
        child: Center(
          child:
          btnIcon !=null?
          Image.asset(btnIcon ,
            height: 27,
            width: 27,
            fit: BoxFit.fitWidth,
          ):
          Icon(Icons.home,
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
        Column(

            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child:
                btnIcon !=null?
                Image.asset(btnIcon ,
                  height: 27,
                  width: 27,
                  fit: BoxFit.fitWidth,
                ):
                Icon(Icons.home,
                  color: ObjectColor.baseIcon,
                ),
              ) ,
              Center(
                child:
                Text(title,style: Style.h6(color: Colors.white))
              ) ,
            ]),
      );
  }

}