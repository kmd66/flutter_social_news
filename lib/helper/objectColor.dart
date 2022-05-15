import 'package:flutter/material.dart';
import 'package:flutter_social_news/core/model/enums.dart';

const Color BaseColor = Color.fromRGBO(6,24,88, 1.0);
const Color TextColor = Color.fromRGBO(70,70,70, 1.0);
const Color BaseBackground = Color.fromRGBO(255 ,255, 255, 1.0);
const Color CardBackground = Color.fromRGBO(250, 250, 250, 1.0);

const Color Color1 = Color.fromRGBO(238 ,238 ,238, 1.0);
const Color Color2 = Color.fromRGBO(217 ,217 ,217, 1.0);

class ObjectColor {
  static ColerType colerType = ColerType.Cyan;
  static NightType nightType = NightType.Dark;

  static Color get base => _base();
  static Color get baseTextColor => _baseTextColor();
  static Color get baseBackground => _baseBackground();
  static Color get cardBackground => CardBackground;

  static Color get baseIcon => _baseIcon();
  static Color get baseBorderButton => _baseBorderButton();
  static Color get baseBorder => _baseBorder();
  static Color get baseBorder2 => _baseBorder2();
  static Color get pupUpMenuBackground => _pupUpMenuBackground();


  static Color _base() {
    return BaseColor;
  }
  static Color _baseTextColor() {
    return Color.fromRGBO(5,55,180, 1.0);
  }
  static Color _baseBackground() {
    return BaseBackground;
  }
  static Color _cardBackground() {
    switch (nightType) {
      case NightType.Dark:
        return Color.fromRGBO(69 ,90, 100,1);
      case NightType.Bright:
        return Color.fromRGBO(255,255,255,1);
    }

    return Color.fromRGBO(0,0,0, 1.0);
  }
  static Color shadowBackground(double opacity ) {
    return Color.fromRGBO(base.red,base.green,base.blue,opacity);
  }
  static Color _baseIcon() {
    switch (nightType) {
      case NightType.Dark:
        return Color.fromRGBO(210, 215, 217, 1.0);
      case NightType.Bright:
        return Color.fromRGBO(99, 99, 99, 1.0);
    }

    return Color.fromRGBO(0,0,0, 1.0);
  }
  static Color _baseBorder () {
    switch (nightType) {
      case NightType.Dark:
        return Color.fromRGBO(45, 61, 69, 1.0);
      case NightType.Bright:
        return Color.fromRGBO(255, 255, 255, 1.0);
    }

    return Color.fromRGBO(0,0,0, 1.0);
  }

  static Color _baseBorder2 () {
    switch (nightType) {
      case NightType.Dark:
        return Color.fromRGBO(50, 66, 74, 1.0);
      case NightType.Bright:
        return Color.fromRGBO(240, 240, 240, 1.0);
    }

    return Color.fromRGBO(0,0,0, 1.0);
  }
  static Color _pupUpMenuBackground () {
    switch (nightType) {
      case NightType.Dark:
        return Color.fromRGBO(22, 27, 28, 1.0);
      case NightType.Bright:
        return Color.fromRGBO(217, 217, 217, 1.0);
    }

    return Color.fromRGBO(0,0,0, 1.0);
  }

  static Color _baseBorderButton() {
    switch (colerType) {
      case ColerType.Red:
        return Color.fromRGBO(229, 154, 153, 1.0);
      case ColerType.Orange:
        return Color.fromRGBO(238, 185, 168, 1.0);
      case ColerType.Blue:
        return  Color.fromRGBO(153, 193, 226, 1.0);
      case ColerType.Teal:
        return Color.fromRGBO(157, 224, 217, 1.0);
      case ColerType.Pink:
        return Color.fromRGBO(243, 156, 185, 1.0);
      case ColerType.Green:
        return  Color.fromRGBO(189, 248, 191, 1.0);
      case ColerType.LightGreen:
        return  Color.fromRGBO(199, 231, 163, 1.0);
      case ColerType.Violet:
        return   Color.fromRGBO(212, 137, 226, 1.0);
      case ColerType.Purole:
        return  Color.fromRGBO(192, 161, 245, 1.0);
      case ColerType.Yellow:
        return   Color.fromRGBO(236, 195, 101, 1.0);
      case ColerType.Indigo:
        return Color.fromRGBO(124, 136, 199, 1.0) ;
      case ColerType.BlueGrey:
        return  Color.fromRGBO(166, 196, 210, 1.0);
      case ColerType.Brown:
        return  Color.fromRGBO(222, 176, 160, 1.0)  ;
      case ColerType.Cyan:
        return Color.fromRGBO(128, 221, 223, 1.0);
    }

    return Color.fromRGBO(0,0,0, 1.0);

  }
}