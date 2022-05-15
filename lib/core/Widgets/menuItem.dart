import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class MenuItem extends StatefulWidget {
  MenuItem({
    IconData icon = Icons.home,
    String label='',
    var onPress,
    margin: const EdgeInsets.all(0.0),
  }){
    this.label = label;
    this.onPress = onPress;
    this.margin = margin;
    this.icon =icon;
  }

  Function()onPress;
  String label='tex';
  IconData icon;
  var margin;
  bool _isHovered = false;

  @override
  _MenuItem createState() => _MenuItem();
}

class _MenuItem extends State<MenuItem> {

  void classSetState(){
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin:widget.margin,
        child: InkWell(
            onTap: (){

              if(widget.onPress != null)
                widget.onPress();
            },
            onHover: (value) {
              setState(() {
                widget._isHovered = value;
              });
            },
            child:Column(children: [
              Container(
                  padding:  const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:widget._isHovered == true ?ObjectColor.shadowBackground(.1):Colors.transparent,
                  ),
                  child:Column(children: [
                    Row(
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ObjectColor.shadowBackground(.1)
                          ),
                          child: Center(
                            child:
                            Icon(
                              widget.icon,
                              size:18,
                              color: ObjectColor.base,
                            ),
                          ) ,
                        )
                        ,
                        Container(margin: const EdgeInsets.only(left: 10.0)
                        ),
                        Text(widget.label,style: Style.h4()),
                      ],
                    ),
                  ],)
              ),
              Container(
                height: 1,
                decoration: BoxDecoration(color:ObjectColor.baseBorder,),
              ),
            ],)
        ),) ;
  }
}