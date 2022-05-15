import 'enums.dart';

class keyValue{
  keyValue();
  int index;
  String key;
  String value;

  keyValue.setProperty({this.index,this.value,this.key});
  @override
  keyValue.fromJson(Map<String, dynamic> json):index = json['index'],key = json['key'],value = json['value'];
  Map<String, dynamic> toJson() =>{'index' : index,'key' : key,'value' : value};
}