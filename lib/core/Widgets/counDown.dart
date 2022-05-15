import 'dart:async';

import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CounDown extends StatefulWidget {
  CounDown({this.seconds,this.label});

 int seconds;
 String label;

  @override
  _CounDown createState() => new _CounDown();
}

class _CounDown extends State<CounDown> {

  Timer _timer;
  int _start;

  void classSetState(){
    setState(() {
    });
  }

  @override
  void initState() {
    _start = widget.seconds;
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
    }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text('${widget.label}  ${_start.toString()} ثانیه',style: Style.h5());
  }
}