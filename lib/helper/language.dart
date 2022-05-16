import 'package:flutter_social_news/core/model/enums.dart';
import 'package:flutter_social_news/core/model/languageEnums.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Language {
  static LanguageType language = LanguageType.Persian;
  static dynamic textualitys;

  static String get(Textuality textuality) {
    String s =Textuality.values.string(textuality);
    if(textualitys == null || textualitys[s] == null)
      return s;
    else return textualitys[s].toString();
  }

  static Future<void> set() async{
    SharedPreferences local = await SharedPreferences.getInstance();
    if(local.containsKey('LanguageType'))
      language =LanguageType.values.enumFromString(local.getString('LanguageType'));
    await _loadJson();
  }

  static Future<void> change(LanguageType type) async{
    SharedPreferences local = await SharedPreferences.getInstance();
    language = type;
    await _loadJson();
    local.setString("LanguageType", LanguageType.values.string(type));
  }

  static Future<void> _loadJson() async {
    textualitys = null;
    String _data = "";

    if(language == LanguageType.English)
      _data = await rootBundle.loadString('assets/language/english.json');
    else
      _data = await rootBundle.loadString('assets/language/persian.json');

    if(_data != "")
      textualitys= json.decode(_data);
  }

}