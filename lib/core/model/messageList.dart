import 'enums.dart';

class MessageList{
  MessageType type ;
  List<String> msg = [];
  String title ='';

  MessageList({
    MessageType type = MessageType.Message,
    String title = '',
    List<String> msg  ,
  }){
    this.type = type;
    this.title = title;
    this.msg = msg != null?  msg: [];

  }

  MessageList.danger({String title = 'خطر', List<String>msg ,
  }):this.title = title,this.msg = msg != null?  msg: [],this.type= MessageType.Danger;
  MessageList.warning({String title = 'هشدار', List<String> msg,
  }):this.title =title,this.msg = msg != null?  msg: [],this.type= MessageType.Warning;
  MessageList.info({String title = 'پیام', List<String> msg ,
  }):this.title = title,this.msg = msg != null?  msg: [],this.type= MessageType.Info;


}
