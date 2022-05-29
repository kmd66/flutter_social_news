import 'dart:async';
import 'package:flutter_social_news/core/Widgets/showObj.dart';
import 'package:flutter_social_news/core/bloc/events.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/core/model/message.dart' as msgModel;
import 'package:flutter_social_news/helper/messageColor.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
class TextMore extends StatefulWidget {
  final String text;
  final TextStyle style;

  const TextMore(this.text, {Key key, this.style}) : super(key: key);
  @override
  _TextMore createState() =>_TextMore();
}

class _TextMore extends State<TextMore> {

  final _scrollController = new ScrollController();
  bool overFlow = false;
  bool textOverFlow = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if(_scrollController.position.maxScrollExtent > 0){
        setState(()=>overFlow = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return

      LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints)
          {
            return
              Row(
                children: [
                  Container(
                    width: overFlow && !textOverFlow? constraints.maxWidth - 38 : constraints.maxWidth,
                      child:SingleChildScrollView(
                          controller: _scrollController,
                          scrollDirection: textOverFlow? Axis.vertical:Axis.horizontal,
                          child: Text(widget.text, style: widget.style,)
                      )
                  ),
                  ShowObj(
                      isShow: overFlow && !textOverFlow ,
                      obj:
                      InkWell(
                          child: Container(
                              padding: const EdgeInsets.all(4.0),
                              child:Text('..بیشتر', style: TextStyle(fontSize: 9, color:widget.style.color ),)
                              ),
                          onTap: (){setState(()=>textOverFlow = true);}
                      )
                  )
                ],);
          });
  }

  @override
  void dispose() {
    super.dispose();
  }

}