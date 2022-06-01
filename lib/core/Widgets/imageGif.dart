import 'dart:async';
import 'package:flutter_social_news/core/Widgets/showObj.dart';
import 'package:flutter_social_news/core/bloc/events.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/core/model/message.dart' as msgModel;
import 'package:flutter_social_news/helper/messageColor.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
class ImageGif extends StatefulWidget {
  final String url;
  final bool playe;
  final double width;
  final double height;
  final bool animation;
  final Function() onPressed;

  const ImageGif(this.url, {Key key, this.playe = false, this.width, this.height, this.animation = true, this.onPressed}) : super(key: key);

  @override
  _ImageGif createState() =>_ImageGif();
}

class _ImageGif extends State<ImageGif> {
  bool _playe = false;

  bool textOverFlow = false;

  @override
  void initState() {
    _playe = widget.playe;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(_playe)
      return img(context, widget.url, Icons.pause,);
    else{
      var _url = widget.url.replaceAll('.gif', '.jpg');
      return img(context, _url, Icons.play_arrow,);
    }
  }

  Widget img(BuildContext context, var _url, var icon,) {
      return InkWell(
          onTap: () =>onPressed(),
          child:
          Stack(children : [
            Image.network(_url, height: widget.height, width: widget.height,),
            ShowObj(
                isShow: widget.onPressed == null && widget.animation,
                obj: Positioned(
                  left: 0,
                  bottom: 0,
                  child: Icon(icon,color: ObjectColor.opacity(ObjectColor.base, 0.5),),
                )
            )
          ])
      );

  }

  @override
  void dispose() {
    super.dispose();
  }

  void onPressed() {
    if(widget.onPressed != null )
      widget.onPressed();
    else
      if(widget.animation)
      setState(()=>_playe =!_playe);
  }

}