import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter_social_news/helper/appPropertis.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class GetImage extends StatelessWidget{
  final String url;
  final BoxFit fit;
  final double height;
  final double width;
  const GetImage(this.url, {Key key, this.fit, this.height, this.width}) : super(key: key);

  Widget build(BuildContext context) {
    return
      Image.network(url,
          fit: fit,
          height: height,
          width: height,
          errorBuilder: (BuildContext context, Object exception, StackTrace stackTrace) {
             return Image.asset(AppPropertis.defaultImg,
              fit: fit,
              height: height,
              width: height,
            );
          }
      );
  }

  static Object provider(String _url){
    bool b = false;
    var t =  Image.network(_url,
        errorBuilder: (BuildContext context, Object exception, StackTrace stackTrace) {
      print(_url);
          return Image.asset(AppPropertis.defaultImg,);
        }
    );
    print(t.image);
    return t.image;
    if(!b)
      return
        NetworkImage(_url);
    else
      return
        AssetImage(AppPropertis.defaultImg);
  }

  static  Future<String> getImgUrl(String imgUrl) async {
    try {
      Uint8List bytes = (await NetworkAssetBundle(Uri.parse(imgUrl)).load(imgUrl)).buffer.asUint8List();
      print("Error11!");
      return imgUrl;
    } catch (e) {
      print("Error11: $e");
      return null;
    }
  }

}