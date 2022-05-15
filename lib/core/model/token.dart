import 'package:flutter_social_news/helper/appSettings.dart';
import '../apiModel.dart';

class Token extends Model{
  // ignore: non_constant_identifier_names
  int LoginType = 8;
  // ignore: non_constant_identifier_names
  String username;
  // ignore: non_constant_identifier_names
  String password;
  // ignore: non_constant_identifier_names
  String SecurityStamp;
  // ignore: non_constant_identifier_names
  String CellPhone;
  // ignore: non_constant_identifier_names
  String Grant_type = 'password';

  String client_id = AppStrings.clientId;
  // ignore: non_constant_identifier_names
  int ID;
  Token();
  // ignore: non_constant_identifier_names
  Token.setProperty({this.username,this.password,this.CellPhone,this.ID,this.LoginType,this.Grant_type});
  @override
  Token.fromJson(Map<String, dynamic> json):username = json['username'],password = json['password'],SecurityStamp = json['SecurityStamp'],CellPhone = json['CellPhone'],ID = json['ID'],Grant_type = json['Grant_type'],LoginType = json['LoginType'],client_id = json['client_id'];
  Map<String, dynamic> toJson() =>{'username' : username,'password' : password,'SecurityStamp' : SecurityStamp,'CellPhone' : CellPhone,'ID' : ID,'Grant_type' : Grant_type,'LoginType' : LoginType,'client_id' : client_id};
}
class GetRefreshTokenVM extends Model{
  // ignore: non_constant_identifier_names
  String client_id;
  // ignore: non_constant_identifier_names
  String client_secret;
  // ignore: non_constant_identifier_names
  String grant_type ;
  // ignore: non_constant_identifier_names
  String refresh_token;
  // ignore: non_constant_identifier_names
  GetRefreshTokenVM.setProperty({this.client_id,this.client_secret,this.refresh_token,this.grant_type});
  @override
  GetRefreshTokenVM.fromJson(Map<String, dynamic> json):client_id = json['client_id'],client_secret = json['client_secret'],refresh_token = json['refresh_token'],grant_type = json['grant_type'];
  Map<String, dynamic> toJson() =>{'client_id' : client_id,'client_secret' : client_secret,'refresh_token' : refresh_token,'grant_type' : grant_type};
}
