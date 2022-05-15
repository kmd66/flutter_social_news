import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/model/messageList.dart' as msgModel;
import 'package:flutter_social_news/helper/messageColor.dart';

import 'hr.dart';

class MessageListWidget extends StatelessWidget {
  MessageListWidget (msgModel.MessageList model,{var onPress}):
      _model = model,_onPress = onPress;
  final msgModel.MessageList _model;
  final Function() _onPress;

  @override
  Widget build(BuildContext context) {
    return _model.msg.length > 0 ?
    Container(
        child: Container(
          padding:EdgeInsets.all(10.0),
          child:Column(

            children: [
              _model.title != '' ?
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _model.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                  IconButton(
                      icon: const Icon(Icons.close),
                      color: Colors.white,
                      tooltip: 'close',
                      onPressed: () {
                        _model.msg = [];
                        if(_onPress != null)
                          _onPress();
                      }
                  ),
                ],
              )
                  :Container(),

              _model.title != '' ? Hr():Container(),

              SizedBox(
                  width:  MediaQuery.of(context).size.width - 100, // hard coding child width
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,

                    children: [
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount:  _model.msg.length,
                        itemBuilder: (context, index) {
                          return Text('- ${_model.msg[index]}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                              )
                          );
                        },
                      )
                    ],
                  )
              ),
            ],
          ),
        ),

        width:MediaQuery.of(context).size.width, // percentage of parent width. like 'MediaQuery.of(context).size.width * 0.2',
        padding: const EdgeInsets.only(top: 2.0, right: 10.0, bottom: 2.0, left: 10.0),
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color:  MessageColor.type(_model.type),
          borderRadius: BorderRadius.all(const Radius.circular(5.0)),
        )
    ):
    Container( );
  }

}