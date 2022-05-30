import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/Widgets/showObj.dart';
import 'package:provider/provider.dart';
import '../../../core/Widgets/getImage.dart';
import '../../../core/bloc/afterSplashBloc.dart';
import '../../../core/model/chengState.dart';
import '../../../core/model/enums.dart';
import '../../../helper/objectColor.dart';
import '../../../helper/sizeConfig.dart';
import '../../../helper/textStyle.dart';
import '../obj.dart';


class Content extends StatefulWidget {
  Content(this.obj);
  final Obj obj;

  @override
  _Content createState() => new _Content();
}

class _Content extends State<Content> {
  bool _afterBuild = false;
  List<ChatModel> list = [];

  @override
  void initState() {
    context.read<AfterSplashBloc>().visible(false,false, false);
    listAdd();
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // setState(()=>_afterBuild = true);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return
      ShowObj(
        isShow: !_afterBuild,
        obj:
        Directionality(textDirection: TextDirection.rtl,
          child:Stack(
              children: [
                Column(children: [
                  hed(context,size.width),
                  Expanded(
                    child:
                    Scrollbar(
                      child:RawScrollbar(
                        isAlwaysShown: true,
                        thumbColor:ObjectColor.shadowBackground(.2),
                        radius: Radius.circular(20),
                        thickness: 10,
                        child:SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(children: [
                              Text('You have pressed the button  times.'),
                            ]),
                          )
                        ),
                      ),
                    ),
                  ),
                  btn(context),
                ],),
              ]),
        ),
      );
  }

  Widget hed(BuildContext context, double width) {
    double _imgSize = 12;
    const EdgeInsets p1 =  EdgeInsets.symmetric(horizontal: 12.0);
    const EdgeInsets m1 =  EdgeInsets.symmetric(vertical: 7.0);

    return
      Container(
          width: width,
          color: ObjectColor.base,
          child: Center(child: Container(
              constraints:  BoxConstraints(minWidth: SizeConfig.minWidth - 24, maxWidth: SizeConfig.maxWidth - 24),
              child:
              Row(
                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon:Icon(Icons.arrow_back_ios, color: white ,),
                      onPressed: () {
                        streamChengState.add(new ChengState(StateType.Main, navigationsAdd: false));
                        context.read<AfterSplashBloc>().visible(true,true, true);
                      }
                  ),

                  Container(
                    margin: m1,
                    child:
                    Column(children: [
                      CircleAvatar(
                        radius: _imgSize,
                        backgroundColor: ObjectColor.base ,
                        child: CircleAvatar(
                          backgroundImage: GetImage.provider('http://localhost:8080/User1.png'),
                          radius: _imgSize - 1,
                        ),
                      ),
                      Text( 'تست 1', style: Style.h6(color: white)),
                    ],),

                  ),

                  IconButton(
                      icon: Icon(Icons.more_vert,color: white,),
                      onPressed: (){setState(() {});}
                  ),

                ],
              )
          ),)
      );
  }

  Widget item(BuildContext context, BoxConstraints constraints, int i) {
    double _imgSize = 25;
    const EdgeInsets p1 =  EdgeInsets.symmetric(horizontal: 12.0);

    const EdgeInsets m1 =  EdgeInsets.symmetric(vertical: 12.0);

    return
      Row(
        children: [
          Container(
            margin: m1,
            padding:p1 ,
            child: CircleAvatar(
              radius: _imgSize,
              backgroundColor: ObjectColor.base ,
              child: CircleAvatar(
                backgroundImage: GetImage.provider(list[i].Img),
                radius: _imgSize - 1,
              ),
            ),
          ),

          Expanded(
            child:
            Container(
              // width: constraints.maxWidth -(p1.left +p1.right + (_imgSize*2)),
              child:
              Column(
                crossAxisAlignment : CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment : MainAxisAlignment.spaceBetween,
                    children: [
                      Text( list[i].Name, style: Style.h4()),
                      Text( list[i].Date, style: Style.h6()),
                    ],),
                  Text( list[i].Msg, style: Style.h6(overflow: TextOverflow.ellipsis)),
                ],),
            ),
          ),

          IconButton(
              icon: Icon(Icons.more_vert,color: ObjectColor.baseTextColor,),
              onPressed: (){setState(() {});
              }),

        ],
      );
  }

  Widget btn(BuildContext context) {

    return Container(
      color: ObjectColor.cardBackground,
      height: 50,
      width: MediaQuery.of(context).size.width,
    );
  }

  void listAdd() {
    Random re = new Random();
    List<String> Msg =[
      'دکمه سبز رنگ ',
      'دکمه سبز رنگ ',
      'مخفی کردن فالویینگ. بنابراین، ما می‌دانیم که نگرانی شما این است که از',
      ' مون چقدر باشد؟ اولین دیدگاه غلط اینه که افراد فکر میکنند با اول ',
      'در این مطلب تفاوت های فالوور و فال',
    ];

    for (int i = 0; i < 50; i++) {
      int b =re.nextInt(1);
      list.add(
          ChatModel.setProperty(
              Msg: Msg[re.nextInt(Msg.length - 1)],
              b: b==1?true:false
          )
      );

    }
  }

}
