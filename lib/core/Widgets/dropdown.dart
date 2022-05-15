import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/model/list.dart';
import 'package:flutter_social_news/helper/apiEnums.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/tools.dart';

import '../../helper/textStyle.dart';

class Dropdown extends StatefulWidget {
  Dropdown(this.label,{this.model,this.enume,this.onChange,this.list});
  var enume;
  Function(keyValue) onChange;
  List<keyValue> list;
  final String label;
  var model;

  @override
  _Dropdown createState() => _Dropdown();
}

class _Dropdown extends State<Dropdown> {
  var items = [];
  keyValue selected;
  List<keyValue> list=[];
  String text='یک مورد را انتخاب کنید';

  @override
  void initState() {
    if(widget.list != null)
      list = widget.list;
    else if(widget.enume != null)
      list = ApiEnums.listKeyValue(widget.enume);

    if(list.length > 0)
    {
      if(widget.enume != null && !Tools.IsNullOrZiro(widget.model))
      {
        var t  = ApiEnums.modelByValue(widget.enume,widget.model);
        if(t.key != null)
          text = t.value;
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width:  MediaQuery.of(context).size.width ,
              child:
              Padding(
                padding: const EdgeInsets.all(5.0),
                child:Text(widget.label,style: Style.h5(fontWeight:FontWeight.bold),),
              ),
            ),
            PhysicalModel(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                elevation:5.0,
                shadowColor: BaseColor,
                child:
                new DropdownButtonFormField<keyValue>(
                  decoration: InputDecoration(
                      isDense: true,

                      contentPadding: EdgeInsets.all(20.0),
                      enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:  BorderSide(color: BaseColor, width: 0.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.red, width: 11.0),
                      )
                  ),
                  hint: new Text(text),
                  value: selected,
                  onChanged: (keyValue v) {
                    if(widget.onChange != null)
                      widget.onChange(v);
                    setState(() {
                      selected = v;
                    });
                  },
                  items: list.map((keyValue v) {
                    return new DropdownMenuItem<keyValue>(
                        value: v,
                        child:
                        Container(
                          alignment: Alignment.centerRight,
                          child:
                          new Text(
                            v.value,
                            style: new TextStyle(color: Colors.black),
                          ),
                        )
                    );
                  }).toList(),
                )
            ),
          ],
        ),
      );
  }
}