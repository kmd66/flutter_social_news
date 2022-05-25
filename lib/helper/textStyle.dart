import 'package:flutter/material.dart';
import 'objectColor.dart';

class Style {

  static TextStyle get textSplashScreen => TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
      fontFamily: 'Vazir',
      color: Colors.white
  );
  static TextStyle h1({FontWeight fontWeight = FontWeight.normal, Color color, TextOverflow overflow}){
    return TextStyle(
        overflow: overflow,
        fontWeight: fontWeight ,
        fontSize:36,
        fontFamily: 'Vazir',
        color: color != null ? color: ObjectColor.baseTextColor
    );
  }
  static TextStyle h2({FontWeight fontWeight = FontWeight.normal, Color color, TextOverflow overflow}){
    return TextStyle(
        overflow: overflow,
        fontWeight: fontWeight ,
        fontSize:24,
        fontFamily: 'Vazir',
        color: color != null ? color: ObjectColor.baseTextColor
    );
  }
  static TextStyle h3({FontWeight fontWeight = FontWeight.normal, Color color, TextOverflow overflow}){
    return TextStyle(
        overflow: overflow,
        fontWeight: fontWeight ,
        fontSize:18.5,
        fontFamily: 'Vazir',
        color: color != null ? color: ObjectColor.baseTextColor
    );
  }
  static TextStyle h4({FontWeight fontWeight = FontWeight.normal, Color color, TextOverflow overflow}){
    return TextStyle(
        overflow: overflow,
        fontWeight: fontWeight ,
        fontSize:16,
        fontFamily: 'Vazir',
        color: color != null ? color: ObjectColor.baseTextColor
    );
  }
  static TextStyle h5({FontWeight fontWeight = FontWeight.normal, Color color, TextOverflow overflow}){
    return TextStyle(
        overflow: overflow,
        fontWeight: fontWeight ,
        fontSize:13,
        fontFamily: 'Vazir',
        color: color != null ? color: ObjectColor.baseTextColor
    );
  }
  static TextStyle h6({FontWeight fontWeight = FontWeight.normal, Color color, TextOverflow overflow}){
    return TextStyle(
        overflow: overflow,
        fontWeight: fontWeight ,
        fontSize:10,
        fontFamily: 'Vazir',
        color: color != null ? color: ObjectColor.baseTextColor
    );
  }
  static TextStyle h7({FontWeight fontWeight = FontWeight.normal, Color color, TextOverflow overflow}){
    return TextStyle(
        overflow: overflow,
        fontWeight: fontWeight ,
        fontSize:8,
        fontFamily: 'Vazir',
        color: color != null ? color: ObjectColor.baseTextColor
    );
  }

}
