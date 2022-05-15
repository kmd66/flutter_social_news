import 'dart:async';
import 'package:flutter_social_news/core/bloc/events.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/core/model/message.dart' as msgModel;
import 'package:flutter_social_news/helper/messageColor.dart';
import 'package:flutter_social_news/helper/objectColor.dart';


StreamController<MessageBox> removeBox= StreamController<MessageBox>();

class MessageWidget extends StatefulWidget {


  @override
  _MessageWidget createState() =>   _MessageWidget();
}

class _MessageWidget extends State<MessageWidget> {
  List<MessageBox> messageList = [];
  msgModel.Message model= msgModel.Message(respite: -1);

  @override
  void initState() {
    initStream();
    super.initState();
  }

  Future<void>  initStream() async{
    if(removeBox.hasListener == true)
      removeBox.close();
    removeBox = StreamController<MessageBox>();
    removeBox.stream.listen((value){
      if(value != null)
        messageList.remove(value);
      else {
        messageList = [];
        model.respite = -1;
      }
      setState(() {});
    });

    if(streamMessage.hasListener == true)
      streamMessage.close();
    streamMessage = StreamController<msgModel.Message>();
    streamMessage.stream.listen((value){
      setMessage(value);
    });
  }

  void setMessage(msgModel.Message value){
    if(value.respite > 0)
      messageList.add(MessageBox(value.type, value.msg,value.respite));
    else if(value.respite == 0) {
      messageList=[];
      model=value;
    }
    setState(() {});
  }

  void setMessageState(){
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return
      model.respite == 0 ?
      MessageFix(model):
      messageList.length > 0 ?
      Center(child: SizedBox(
          width:  400, // hard coding child width
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount:  messageList.length,
                itemBuilder: (context, index) {
                  return messageList[index];
                },
              )
            ],
          )
      ),):
      Container( );
  }

  @override
  void dispose() {
    super.dispose();
  }

}

//ignore: must_be_immutable
class MessageBox extends StatelessWidget{
  MessageBox(MessageType type,String msg,int respite):
        _msg=msg,
        _type=type,
        _respite=respite;
  MessageType _type;
  String _msg;
  int _respite;

  Future sleep() {
    return new Future.delayed(Duration(seconds: _respite), () => removeBox.add(this));
  }

  Widget build(BuildContext context) {
    sleep();
    return Material(
        type: MaterialType.transparency,
        child:
        Container(
            child: Container(
                padding:EdgeInsets.all(10.0),
                child:
                Text(_msg,style:Style.h5(color: Colors.white) )
            ),
            width:MediaQuery.of(context).size.width, // percentage of parent width. like 'MediaQuery.of(context).size.width * 0.2',
            padding: const EdgeInsets.only(top: 2.0, right: 10.0, bottom: 2.0, left: 10.0),
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color:  MessageColor.type(_type),
              borderRadius: BorderRadius.all(const Radius.circular(5.0)),
            )
        ));
  }
}

//ignore: must_be_immutable
class MessageFix extends StatelessWidget{
  MessageFix(msgModel.Message model):
        _model=model;

  msgModel.Message _model= msgModel.Message(respite: -1);

  Widget build(BuildContext context) {
    return
      Scaffold(
          backgroundColor: Color.fromRGBO(0,0,0,0.5),
          body:Center(
            child:
            Container(
                child: Container(
                  child:Column(

                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 450),
                        width: MediaQuery.of(context).size.width,
                        padding:EdgeInsets.only(top: 15.0),
                        decoration: BoxDecoration(
                            color: MessageColor.type(_model.type),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5), topRight: Radius.circular(5)
                            )
                        ),
                        child: Icon(MessageColor.icon(_model.type),color: Colors.white,),

                      ),
                      CustomPaint(
                        painter: TrianglePainter(
                          strokeColor:  MessageColor.type(_model.type),
                          paintingStyle: PaintingStyle.fill,
                        ),
                        child: Container(
                          height: 15,
                          constraints: BoxConstraints(maxWidth: 450),
                        ),
                      ),

                      Container(
                        constraints: BoxConstraints(maxWidth: 450),
                        height: 200,
                        padding:EdgeInsets.all(7.0),
                        child:
                        SingleChildScrollView(child: Column(
                          children: [
                            Text(
                                _model.title,
                                style: Style.h4()
                            ),
                            Container(
                              margin: const EdgeInsets.all(3.0),
                            ),

                            SizedBox(
                              width:  MediaQuery.of(context).size.width - 20, // hard coding child width
                              child:Text(
                                  _model.msg,
                                  style: Style.h5()
                              ),

                            ),
                          ],
                        )

                        ),
                      ),
                      Container(
                          width:  MediaQuery.of(context).size.width - 20,
                          margin: const EdgeInsets.all(12.0),
                          child:
                          OutlinedButton(
                            onPressed:() {
                              removeBox.add(null);
                              if(_model.onOk != null)
                                _model.onOk();
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0),)),
                            ),
                            child: Text("حله",
                              style: TextStyle(color: MessageColor.type(_model.type)
                              ),),
                          )
                      ),
                    ],
                  ),
                ),

                constraints: BoxConstraints(maxWidth: 450),
                height: 326,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: ObjectColor.cardBackground  ,
                  borderRadius: BorderRadius.all(const Radius.circular(5.0)),
                )
            )
            ,)
      );
  }
}
class TrianglePainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  TrianglePainter({this.strokeColor = Colors.black, this.strokeWidth = 3, this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height), paint);
  }

  Path getTrianglePath(double x, double y) {
    return Path()
      ..moveTo(20, 0)
      ..lineTo(x / 2, y)
      ..lineTo(x - 20, 0)
      ..lineTo(20, 0);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
