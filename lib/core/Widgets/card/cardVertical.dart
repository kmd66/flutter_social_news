import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/Widgets/showObj.dart';
import '../../../helper/objectColor.dart';
import '../../../helper/textStyle.dart';
import '../hr.dart';

class CardVertical extends StatefulWidget {
  CardVertical (this.width, {Key key,
    this.imgUrl='http://localhost:8080/defaultImg.jpg',
    this.title ='عنوان',
    this.text='تست',
    this.link = 'ادامه',
    this.icon = Icons.favorite_border,
    this.iconOnPressed, this.linkOnPressed, this.textHeight});

  final double width;
  final double textHeight;
  final String imgUrl;
  final String title;
  final String text;
  final String link;
  final IconData icon;
  final Function iconOnPressed;
  final Function linkOnPressed;

  @override
  _CardVertical createState() => new _CardVertical();
}

class _CardVertical extends State<CardVertical> {

  final _scrollController = new ScrollController();
  bool overFlow = false;
  bool textOverFlow = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if(_scrollController.position.maxScrollExtent > 0)
        overFlow = true;
    });
  }


  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        margin: EdgeInsets.only(top: 12),
        child:
        Card(
            margin: EdgeInsets.zero,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 4,
            color: ObjectColor.cardBackground,
            child:
            Column(
              children: [
                hede(),
                img(),

                Container(
                    padding: const EdgeInsets.all(12),
                    width: widget.width,
                    child: Text(widget.title,style: Style.h4(),)
                ),
                text(),
                Container(
                  width: widget.width,
                  padding: const EdgeInsets.only(bottom: 12,left: 12,right: 12),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        child: Text(widget.link,
                          style: Style.h4(color:  ObjectColor.base),
                        ),
                        onPressed: () {
                          if(widget.linkOnPressed!=null)
                            widget.linkOnPressed();
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.save_alt,
                                size: 16,
                                color: ObjectColor.baseIcon,), onPressed: (){
                            if(widget.iconOnPressed!=null)
                              widget.iconOnPressed();
                          }),
                          IconButton(
                              icon: Icon(
                                Icons.share,
                                size: 16,
                                color: ObjectColor.baseIcon,), onPressed: (){
                            if(widget.iconOnPressed!=null)
                              widget.iconOnPressed();
                          }),
                          IconButton(
                              icon: Icon(
                                widget.icon,
                                size: 16,
                                color: ObjectColor.baseIcon,), onPressed: (){
                            if(widget.iconOnPressed!=null)
                              widget.iconOnPressed();
                          })
                        ],)
                    ],),
                )
              ],)
        )
    );
  }

  Widget hede() {
    return   Container(
        padding: const EdgeInsets.all(5),
        child:
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                ClipOval(
                  child: Image.network('http://localhost:8080/defaultUser.jpg',
                    height: 30,
                    width: 30,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(padding: EdgeInsets.all(5),
                  child:
                  Column(children: [
                    Text('widget.text',style: Style.h6(overflow:TextOverflow.ellipsis ,color: ObjectColor.base),textAlign: TextAlign.justify,),
                    Text('اسم صفحه',style: Style.h6(overflow:TextOverflow.ellipsis ,color: ObjectColor.baseTextColor),textAlign: TextAlign.justify,)
                  ],) ,
                )

              ],),
            IconButton(
                icon: Icon(
                  Icons.more_vert_outlined,
                  size: 16,
                  color: ObjectColor.baseIcon,),
                onPressed: (){})
          ],)
    );
  }

  Widget text() {
    if(widget.textHeight == null || textOverFlow)
      return Container(
          width: widget.width ,
          padding: const EdgeInsets.only(bottom: 12,left: 12,right: 12),
          child:Text(widget.text,style: Style.h5(),textAlign: TextAlign.justify,)
      );
    else
      return   Container(
          height: widget.textHeight,
          width: widget.width ,
          padding: const EdgeInsets.only(bottom: 12,left: 12,right: 12),
          child:
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: overFlow ? (widget.width - 100):widget.width - 35,
                  child:SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.vertical,
                      child: Text(widget.text,style: Style.h5(),textAlign: TextAlign.justify,)
                  )
              ),
              ShowObj(
                  isShow: overFlow ,
                  obj:
                  Container(
                      child:   IconButton(
                          icon: Icon(
                            Icons.expand_more_rounded,
                            size: 16,
                            color: ObjectColor.baseIcon,),
                          onPressed: (){setState(()=>textOverFlow = true);
                          })
                  )
              )
            ],)
      );
  }

  Widget img() {
    if(widget.imgUrl != null)
      return Image.network(widget.imgUrl ,
        width: widget.width ,
        height: (widget.width *9)/16,
        fit: BoxFit.fill,
      );
    else
      return   Container(
        height: 0,
        width: 0 ,
      );
  }
}