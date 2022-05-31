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
                                  child: Column(children:
                                  list.map((model) => item(size.width, model)).toList()
                                  ),
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
        padding: const EdgeInsets.only(top: 18),
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
                          child: ClipOval(child:GetImage('http://localhost:8080/User1.png')),
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

  Widget item(double size, ChatModel model) {
    return Container(
      width: size,
      child: Align(
        alignment: model.b ? Alignment.topLeft:Alignment.topRight,
        child:Container(
            padding: const EdgeInsets.all(7.0),
            margin: const EdgeInsets.all( 4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
              color: model.b ?teal:blueGrey,
            ),
            constraints:  BoxConstraints(maxWidth: ((size *70 )/100)),
            child:
            Stack(
                children : [
                  Text('${model.Msg} - ${model.Date}',style: Style.h5(color: white),),
                  Positioned(
                      left: model.b? 0:null,
                      child: CustomPaint(painter: ChatBubbleTriangle(model.b),)
                  )
                ]
            )
        ),
      ),
    );
  }

  Widget btn(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      constraints:  BoxConstraints(minWidth: 500, maxWidth: 500),
      color: ObjectColor.baseBackground,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child:Row(children: [
          Expanded(
            child:Container(
              decoration: BoxDecoration(
                color: ObjectColor.cardBackground,
                borderRadius: BorderRadius.all(const Radius.circular(20.0)),
              ),
              child: Row(children: [

                IconButton(
                    icon:Icon(Icons.send, color: ObjectColor.baseTextColor , size: 16,),
                    onPressed: () {
                    }
                ),
                Expanded(
                    child:input()
                ),
                IconButton(
                    icon:Icon(Icons.insert_emoticon, color: ObjectColor.baseTextColor , size: 16, ),
                    onPressed: () {
                    }
                ),

              ],) ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundColor: ObjectColor.base,
              child: IconButton(
                  icon:Icon(Icons.navigate_next, color: white, ),
                  onPressed: () {
                    streamChengState.add(new ChengState(StateType.Main, navigationsAdd: false));
                    context.read<AfterSplashBloc>().visible(true,true, true);
                  }
              ),
            ),
          )
        ],),
      ),
    );
  }

  void listAdd() {
    Random re = new Random();
    List<String> Msg =[
      'دکمه سبز رنگ ',' connection from deb','Performing hot restart...','estarted application',
      'مخفی کردن فالویینگ. بنابراین، ما می‌دانیم که نگرانی شما این است که از',
      ' مون چقدر باشد؟ اولین دیدگاه غلط اینه که افراد فکر میکنند با اول ',
      'در این مطلب تفاوت های فالوور و فال',
    ];
    var now = new DateTime.now();

    list.add(ChatModel.setProperty(Msg: 'پیام اول', b: true,Date: now.toString() ));
    for (int i = 0; i < 70; i++) {
      DateTime d = now.add(Duration(minutes: -1*i));
      int b =re.nextInt(2);
      list.add(ChatModel.setProperty(Msg: Msg[re.nextInt(Msg.length - 1)],b: b==1?true:false,Date: d.toString()));

    }
    list.add(ChatModel.setProperty(Msg: 'پیام آخر',b: true,Date: now.add(Duration(days: -70)).toString()));
  }

  Widget input() {
   return TextFormField(
     style: TextStyle(
       color: ObjectColor.baseTextColor,
       fontSize: 14,
       height: 0.8,
     ),
     onChanged: (value) {
       // if(onChange != null)onChange(value);
     } ,
     decoration: InputDecoration(
       border: InputBorder.none,
       //border: OutlineInputBorder(),
     ),
   );
  }

}
class ChatBubbleTriangle extends CustomPainter {
  final bool b ;

  ChatBubbleTriangle(this.b);

  @override
  void paint(Canvas canvas, Size size) {
    double i = b? -10:10;
    var paint = Paint()..color = b ?teal:blueGrey ;//

    var path = Path();
    path.lineTo(i, -7);
    path.lineTo(0, 0);
    path.lineTo(0, -7);
    path.lineTo(i, -7);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}