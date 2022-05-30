import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/Widgets/getImage.dart';
import '../../../core/bloc/afterSplashBloc.dart';
import '../../../core/model/chengState.dart';
import '../../../core/model/enums.dart';
import '../../../helper/objectColor.dart';
import '../../../helper/sizeConfig.dart';
import '../../../helper/textStyle.dart';
import '../obj.dart';


class Main extends StatefulWidget {
  Main(this.obj);
  final Obj obj;
  @override
  _Main createState() => new _Main();
}

class _Main extends State<Main> {

  List<ChatModel> list = [];

  @override
  void initState() {
    context.read<AfterSplashBloc>().visible(true,true, true);
    listAdd();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints)
          {
            return
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                controller: ScrollController(),
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, i) {
                  return item(context, constraints, i);
                },
              );
          });
  }

  Widget item(BuildContext context, BoxConstraints constraints, int i) {
    double _imgSize = 25;
    const EdgeInsets p1 =  EdgeInsets.symmetric(horizontal: 12.0);

    const EdgeInsets m1 =  EdgeInsets.symmetric(vertical: 12.0);
    var t = GetImage(list[i].Img);

    return
      Row(
        children: [
          InkWell(
            onTap: ()=>rote(context),
            child:
            Container(
              margin: m1,
              padding:p1 ,
              child: CircleAvatar(
                radius: _imgSize,
                backgroundColor: ObjectColor.base ,
                child: CircleAvatar(
                  child: ClipOval(child:GetImage(list[i].Img)),
                  radius: _imgSize - 1,
                ),
              ),
            ),
          ),

            Expanded(
              child:
              InkWell(
                onTap: ()=>rote(context),
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
          ),

          IconButton(
              icon: Icon(Icons.more_vert,color: ObjectColor.baseTextColor,),
              onPressed: (){setState(() {});
              }),

        ],
      );
  }

  void listAdd() {
    List<String> Name =[
      'تست 1',
      'تست 2',
      'تست 3',
    ];
    List<String> Msg =[
      'دکمه سبز رنگ ',
      'ه به گوش همه شما خورده است. فالو یک کلمه‌ای انگلیسی است و معنی شما خورده است. فالو یک کلمه‌ای انگلیسی است و معنی فالو در لغت',
      'در این مطلب تفاوت های فالوور و فال',
    ];
    List<String> date =[
      '1400/2/2',
      '1401/2/2',
      '1400/12/12',
    ];
    List<String> Img =[
      'http://localhost:8080/User1.png',
      'http://localhost:8080/User2.jpg',
      'http://localhost:8080/Usqer3.png',
    ];

    for (int i = 0; i < 3; i++) {
      list.add(
          ChatModel.setProperty(
            Name: Name[i],
            Msg: Msg[i],
            Img: Img[i],
            Date: date[i],
          )
      );

    }
  }

  void rote(BuildContext context) {
    context.read<AfterSplashBloc>().visible(false,false, false);
    streamChengState.add(new ChengState(StateType.Content, navigationsAdd : false));
  }

}
