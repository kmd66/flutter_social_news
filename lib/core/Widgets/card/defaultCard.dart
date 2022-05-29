import 'package:flutter_social_news/core/Widgets/hr.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//ignore: must_be_immutable
class DdefaultCard extends StatelessWidget{
  final Widget child;
  final EdgeInsets padding;
  final double borderRadius;

  const DdefaultCard({Key key, this.child, this.padding = const EdgeInsets.all(0), this.borderRadius = 8.0, }) : super(key: key);
  Widget build(BuildContext context) {
    return
        Card(
          
            margin: EdgeInsets.zero,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            elevation: 4,
            color: ObjectColor.cardBackground,
            child:Padding(
              padding:padding ,
              child: child,
            )
        );
  }
}