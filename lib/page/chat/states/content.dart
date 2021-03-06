import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/Widgets/imageGif.dart';
import 'package:flutter_social_news/core/Widgets/showObj.dart';
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:provider/provider.dart';
import '../../../core/Widgets/getImage.dart';
import '../../../core/bloc/afterSplashBloc.dart';
import '../../../core/model/chengState.dart';
import '../../../core/model/enums.dart';
import '../../../helper/objectColor.dart';
import '../../../helper/sizeConfig.dart';
import '../../../helper/textStyle.dart';
import '../../../helper/tools.dart';
import '../obj.dart';


class Content extends StatefulWidget {
  Content(this.obj);
  final Obj obj;

  @override
  _Content createState() => new _Content();
}

class _Content extends State<Content> {
  final  _textController = TextEditingController();
  final _focusNode = FocusNode();
  bool _afterBuild = false;
  final _scrollController = ScrollController();
  bool _imojiBox = false;
  List<ChatModel> list = [];
  List<ChatModel> list2 = [];

  @override
  void initState() {
    context.read<AfterSplashBloc>().visible(false,false, false);
    listAdd();
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // setState(()=>_afterBuild = true);
      if(_scrollController.position.maxScrollExtent > 0){
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });

  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    _scrollController.dispose();
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
                  man(context,size.width),
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
                      Text( '?????? 1', style: Style.h6(color: white)),
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

  Widget man(BuildContext context, double width) {
    return
      Expanded(
        child:
        Container(
            constraints:  BoxConstraints(minWidth: SizeConfig.minWidth - 24, maxWidth: SizeConfig.maxWidth - 24),
            child:Padding(
                padding: const EdgeInsets.all(12),
                child: SingleChildScrollView(
                    controller: _scrollController,
                    physics: ScrollPhysics(),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      // controller: ScrollController(),
                      shrinkWrap: true,
                      itemCount: list2.length,
                      itemBuilder: (context, i) {
                        return item(width, list2[i]);
                      },
                    )
                )
            )
        ),
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
                  model.Msg.contains('<emj:')?
                  ImageGif(Tools.emoji(model.Msg), height: 70, width: 70)
                      :Text('${model.Msg} - ${model.Date}',style: Style.h5(color: white),),
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
    if(_imojiBox)
      return Container(
        constraints:  BoxConstraints(maxWidth: 500),
        height: 400,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(
          color: ObjectColor.baseBackground,
          border: Border.all(
              color: ObjectColor.baseBorder,
              width: 1.0,
              style: BorderStyle.solid
          ),
        ),

        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              var imgSize = constraints.maxWidth / 7;
              return Center(
                child: Column(children: [
                  Container(
                    color: ObjectColor.cardBackground,
                    child: IconButton(
                        icon: Icon(
                          Icons.close, color: ObjectColor.baseTextColor,),
                        onPressed: () {
                          setState(() => _imojiBox = false);
                        }
                    ),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                  ),
                  Expanded(
                    child: Container(
                      child: Wrap(children: [
                        emojiWidget('${AppPropertis.emojiUrl}/1.gif',imgSize),
                        emojiWidget('${AppPropertis.emojiUrl}/3.gif',imgSize),
                        emojiWidget('${AppPropertis.emojiUrl}/4.gif',imgSize),
                        emojiWidget('${AppPropertis.emojiUrl}/5.gif',imgSize),
                        emojiWidget('${AppPropertis.emojiUrl}/6.gif',imgSize),
                        emojiWidget('${AppPropertis.emojiUrl}/7.gif',imgSize),
                        emojiWidget('${AppPropertis.emojiUrl}/8.gif',imgSize),
                      ],),
                    ),
                  ),
                ],),
              );

            }
        )
      );

    else
      return Container(
        padding: const EdgeInsets.all(4.0),
        constraints:  BoxConstraints(maxWidth: 500),
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
                      onPressed: ()=>sendText(null)
                  ),
                  Expanded(
                      child:input()
                  ),
                  IconButton(
                      icon:Icon(Icons.insert_emoticon, color: ObjectColor.baseTextColor , size: 16, ),
                      onPressed: ()=>emojiBox()
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
      '???????? ?????? ?????? ',' connection from deb','Performing hot restart...','estarted application',
      '???????? ???????? ????????????????. ?????????????????? ???? ????????????????? ???? ???????????? ?????? ?????? ?????? ???? ????',
      ' ?????? ???????? ?????????? ?????????? ???????????? ?????? ???????? ???? ?????????? ?????? ???????????? ???? ?????? ',
      '???? ?????? ???????? ?????????? ?????? ???????????? ?? ??????',
      '???????? ?????? ?????? ',' connection from deb','Performing hot restart...','estarted application',
      '???????? ???????? ????????????????. ?????????????????? ???? ????????????????? ???? ???????????? ?????? ?????? ?????? ???? ????',
      ' ?????? ???????? ?????????? ?????????? ???????????? ?????? ???????? ???? ?????????? ?????? ???????????? ???? ?????? ',
      '???? ?????? ???????? ?????????? ?????? ???????????? ?? ??????',
      '<emj:1>','<emj:4>','<emj:5>','<emj:7>'
    ];
    var now = new DateTime.now();

    list.add(ChatModel.setProperty(Msg: '???????? ??????', b: true,Date: now.toString() ));
    for (int i = 0; i < 70; i++) {
      DateTime d = now.add(Duration(minutes: -1*i));
      int b =re.nextInt(2);
      list.add(ChatModel.setProperty(Msg: Msg[re.nextInt(Msg.length - 1)],b: b==1?true:false,Date: d.toString()));

    }
    list.add(ChatModel.setProperty(Msg: '???????? ??????',b: true,Date: now.add(Duration(days: -70)).toString()));
    list2 = list.reversed.toList();
  }

  Widget input() {
    return TextFormField(
      controller: _textController,
      keyboardType: TextInputType.text,
      focusNode: _focusNode,
      style: TextStyle(
        color: ObjectColor.baseTextColor,
        fontSize: 14,
        height: 0.8,
      ),
      onChanged: (value) {
        // if(onChange != null)onChange(value);
      } ,

      onFieldSubmitted: (value)=>sendText(value) ,
      decoration: InputDecoration(
        border: InputBorder.none,
        //border: OutlineInputBorder(),
      ),
    );
  }

  Widget sendText(value) {
    if(!Tools.IsNullOrEmpty(_textController.text)){
      list.insert(0, ChatModel.setProperty(Msg: _textController.text, b: true, Date: DateTime.now().toString() ));
      list2 = list.reversed.toList();

      setState(() {
        _textController.text = '';
      });
      Timer(Duration(milliseconds: 1), () {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      });
    }
    Timer(Duration(milliseconds: 1), () {
      _focusNode.requestFocus();
    });
  }

  void emojiBox() {
    setState(() {
      _imojiBox= true;
      Timer(Duration(milliseconds: 1), () {
        _focusNode.unfocus();
      });

    });
  }
  Widget emojiWidget(url,imgSize) {
    return  Container(
      color: white,
      margin: const EdgeInsets.all(5.0),
      width: imgSize- 5,
      height: imgSize- 5,
      child:ImageGif(url, height: imgSize- 5, width: imgSize- 5, animation: false,
        onPressed: (){
          _imojiBox= false;
          _textController.text = '<emj:${Tools.fileName(url)}>';
          sendText(null);
          Timer(Duration(milliseconds: 1), () {
            _focusNode.requestFocus();
          });
        },
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