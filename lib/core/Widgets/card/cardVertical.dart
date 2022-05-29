import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/Widgets/showObj.dart';
import '../../../helper/objectColor.dart';
import '../../../helper/textStyle.dart';
import '../hr.dart';
import '../texeMore.dart';
import 'defaultCard.dart';

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

  @override
  void initState() {
    super.initState();
  }


  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        margin: EdgeInsets.only(top: 12),
        child:
        DdefaultCard(
            child:Column(
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
              ],))
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

      return   Container(
          width: widget.width ,
          padding: const EdgeInsets.only(bottom: 12,left: 12,right: 12),
          child:TextMore(widget.text,style: Style.h5())
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