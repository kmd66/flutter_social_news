import 'dart:io';

import 'package:flutter_social_news/helper/appPropertis.dart';

class Tools {
  static bool IsNullOrEmpty(String x) => x == null || x == '';
  static bool IsNullOrEmptyOrZiro(String x) => x == null || x == '' || x == '0';
  static bool IsNullOrFalse(bool x) => x == null || x == '' || !x;
  static bool IsNullOrZiro(int x) => x == null || x == 0 ;
  static String IntToString(int x) => x == null? null: x.toString();
  static int StringToInt(String x) => IsNullOrEmpty(x)? null: int.parse(x) ;

  static String fileName(String x) => IsNullOrEmpty(x)? null: x.split('/').last.split('.').first ;
  static String fileType(String x) => IsNullOrEmpty(x)? null: x.split('/').last.split('.').last ;

  static String emoji(String x) => AppPropertis.emojiUrl + x.replaceAll('<emj:', '').replaceAll('>', '.gif');

  static String MoneFromat(String x, {decimal = 0, endCharacter = ''}) => "${ num.parse(x).toStringAsFixed(decimal).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => "${m[1]},") } ${endCharacter}" ;

}
extension UtilListExtension on List{
  groupBy(String key,{dynamic insertObj}) {
    try {
      List<Map<String, dynamic>> result = [];
      List<String> keys = [];

      this.forEach((f) => keys.add(f[key].toString()));

      [...keys.toSet()].forEach((k) {
        List data = [...this.where((e) => e[key].toString() == k.toString())];
        result.add({'Id': k, 'insertObj': insertObj, 'Data': data});
      });

      return result;
    } catch (e, s) {
      return this;
    }
  }
}