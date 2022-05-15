import 'package:flutter_social_news/core/model/list.dart';

class ApiEnums {

  static String string(Map<String, num> map,num n )  {
    try{
      var t = map.entries.where((element) => element.value == n).first.key;
      if(t != null)
        return t;
      else
        return 'نامعلوم';
    }
    catch(e){
      return 'نامعلوم';

    }
  }
  static int number(Map<String, num> map,String n )  {
    try{
      var t = map.entries.where((element) => element.key == n).first.value;
      if(t != null)
        return t;
      else
        return 0;
    }
    catch(e){
      return 0;

    }
  }

  static List<String> list(Map<String, num> map )  {
    try{
      List<String> l= [];
      map.entries.forEach((e) {
        l.add(e.key);
      });
      return l;
    }
    catch(e){
      return [];

    }
  }
  static List<int> listNum(Map<String, num> map )  {
    try{
      List<int> l= [];
      var t = map.entries.forEach((e) => l.add(e.value));
      return l;
    }
    catch(e){
      return [];

    }
  }

  static List<keyValue> listKeyValue(Map<String, num> map )  {
    try{
      List<keyValue> l= [];
      map.entries.toList().asMap().forEach((i, v) {
        l.add(new keyValue.setProperty(index: i, value: v.key,key: v.value.toString()));
      });
      return l;
    }
    catch(e){
      return [];

    }
  }

  static keyValue modelBykey(Map<String, num> map,String n )  {
    var m = new keyValue();
    try{
      map.entries.toList().asMap().forEach((i, v) {
        if(v.key == n)
          m = new keyValue.setProperty(value: v.key,key: v.value.toString(),index: i);
      });
      return m;
    }
    catch(e){
      return m;
    }
  }
  static keyValue modelByValue(Map<String, num> map,num n )  {
    var m = new keyValue();
    try{
      map.entries.toList().asMap().forEach((i, v) {
        if(v.value == n)
          m = new keyValue.setProperty(
              value: v.key, key: v.value.toString(), index: i);
      });
      return m;
    }
    catch(e){
      return m;
    }
  }
}