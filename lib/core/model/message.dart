import 'enums.dart';

class Message{
  MessageType type ;
  int respite ;
  String title;
  String msg;
  final Function onOk;
  Message({
    MessageType type = MessageType.Message,
    int respite = 0,
    String title = 'پیام',
    String msg = '',
    this.onOk,
    var prObject
  }){
    this.type = type;
    this.title = title;
    this.msg =  msg;
    this.respite = respite;
}


  Message.danger({
    int respite = 0,String title = 'خطر', String msg = '', this.onOk,
  }):title = title,msg = msg,respite = respite,type= MessageType.Danger;
  Message.warning({
    int respite = 0,String title = 'هشدار', String msg = '', this.onOk,
  }):title = title,msg = msg,respite = respite,type= MessageType.Warning;
  Message.info({
    int respite = 0,String title = 'پیام', String msg = '', this.onOk,
  }):title = title,msg = msg,respite = respite,type= MessageType.Info;
}
