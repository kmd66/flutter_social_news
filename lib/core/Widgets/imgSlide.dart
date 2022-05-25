import 'dart:async';
import 'package:flutter_social_news/core/bloc/events.dart';
import 'package:flutter_social_news/helper/sizeConfig.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/core/model/message.dart' as msgModel;
import 'package:flutter_social_news/helper/messageColor.dart';
import 'package:flutter_social_news/helper/objectColor.dart';

class ImgSlide extends StatefulWidget {
  const ImgSlide({Key key, this.borderRadius = true, this.width, this.height}) : super(key: key);
  final bool borderRadius;
  final double width;
  final double height;


  @override
  _ImgSlide createState() =>  _ImgSlide();
}

class _ImgSlide extends State<ImgSlide> {
  ScrollController controller;
  int count = 15;

  @override
  void initState() {

    super.initState();
    controller = ScrollController()..addListener(handleScrolling);
  }

  void handleScrolling() {
    if (controller.offset >= controller.position.maxScrollExtent) {
      setState(() {
        count += 10;
      });
    }
  }


  @override
  Widget builds(BuildContext context) {
    return
      Card(
        color: ObjectColor.cardBackground,
        child:Row(children: [

          Container(
            child:InkWell(
                onTap: (){
                },
                child:
                ClipRRect(
                  borderRadius: widget.borderRadius? BorderRadius.only(bottomLeft: Radius.circular(8.0) ,topLeft: Radius.circular(8.0) ): BorderRadius.circular(0.0),
                  child: Image.network('http://localhost:8080/1.jpg' ,
                    width: 30,
                    height: widget.height - 20,
                    fit: BoxFit.fitHeight,
                  ),
                )
            ) ,
          ),
          Container(width: widget.width -  110,
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            child:InkWell(
              onTap: (){
              },
              child:
              Column(children: [
                ClipRRect(
                  borderRadius: widget.borderRadius? BorderRadius.circular(8.0): BorderRadius.circular(0.0),
                  child: Image.network('http://localhost:8080/2.jpg' ,
                    width: widget.width -  110,
                    height: widget.height,
                    fit: BoxFit.fill,
                  ),
                ),
                Text('dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd' ,
                    style: TextStyle(
                        overflow:TextOverflow.ellipsis ,
                        color: ObjectColor.baseTextColor
                    )
                )
              ]),
            ) ,
          ),

          Container(
            child:InkWell(
                onTap: (){
                },
                child:
                ClipRRect(
                  borderRadius: widget.borderRadius? BorderRadius.only(bottomRight: Radius.circular(8.0) ,topRight: Radius.circular(8.0) ): BorderRadius.circular(0.0),
                  child: Image.network('http://localhost:8080/3.jpg' ,
                    width: 30,
                    height: widget.height - 20,
                    fit: BoxFit.fitHeight,
                  ),
                )
            ) ,
          ),
        ],),
      );
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
          height: widget.height,
          child:ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(width: widthImg(),
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child:InkWell(
                      onTap: (){ print('1');
                      },
                      child:
                      Column(children: [

                        Expanded(
                          child:
                          ClipRRect(
                            borderRadius: widget.borderRadius? BorderRadius.circular(8.0): BorderRadius.circular(0.0),
                            child: Image.network('http://localhost:8080/1.jpg' ,
                              width: widthImg(),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text('انتقاد یک سرباز سابق از دولت فرانسه به دلیل ارسال سلاح به اوکراین' ,
                            style: Style.h5(
                                overflow:TextOverflow.ellipsis ,
                                color: ObjectColor.baseTextColor
                            )
                        )
                      ]),
                    ) ,
                  ),
                  Container(width: widthImg(),
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child:InkWell(
                      onTap: (){print('2');
                      },
                      child:
                      Column(children: [

                        Expanded(
                          child:
                          ClipRRect(
                            borderRadius: widget.borderRadius? BorderRadius.circular(8.0): BorderRadius.circular(0.0),
                            child: Image.network('http://localhost:8080/2.jpg' ,
                              width: widthImg(),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text('انتقاد یک سرباز سابق ' ,
                            style:Style.h5(
                                overflow:TextOverflow.ellipsis ,
                                color: ObjectColor.baseTextColor
                            )
                        )
                      ]),
                    ) ,
                  ),
                  Container(width: widthImg(),
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child:InkWell(
                      onTap: (){print('3');
                      },
                      child:
                      Column(children: [

                        Expanded(
                          child:
                          ClipRRect(
                            borderRadius: widget.borderRadius? BorderRadius.circular(8.0): BorderRadius.circular(0.0),
                            child: Image.network('http://localhost:8080/3.jpg' ,
                              width: widthImg(),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text('dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd' ,
                            style:Style.h5(
                                overflow:TextOverflow.ellipsis ,
                                color: ObjectColor.baseTextColor
                            )
                        )
                      ]),
                    ) ,
                  ),
                ]) ,
      );
  }

  double widthImg() {

    if(SizeConfig.sizeType == SizeType.Lg)
      return (widget.width / 2) -  110;
    else if(SizeConfig.sizeType == SizeType.Md)
      return (widget.width / 1.5) -  110;
    else
      return widget.width -  110;
  }
  @override
  void dispose() {
    controller.removeListener(handleScrolling);
    super.dispose();
  }

}

