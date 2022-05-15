import '../apiModel.dart';

class LoginVM extends Model{
  // ignore: non_constant_identifier_names
  int LoginType;
  // ignore: non_constant_identifier_names
  String Cellphone;
  // ignore: non_constant_identifier_names
  String SecurityStamp;
  // ignore: non_constant_identifier_names
  String RefreshToken;
  // ignore: non_constant_identifier_names
  String UserName;
  // ignore: non_constant_identifier_names
  String Password;
  // ignore: non_constant_identifier_names
  String TokenCaptcha;
  // ignore: non_constant_identifier_names
  String Stamp;

  LoginVM();
  // ignore: non_constant_identifier_names
  LoginVM.setProperty({this.LoginType,this.Cellphone,this.SecurityStamp,this.RefreshToken,this.UserName,this.Password,this.TokenCaptcha,this.Stamp});
  @override
  LoginVM.fromJson(Map<String, dynamic> json):LoginType = json['LoginType'],Cellphone = json['Cellphone'],SecurityStamp = json['SecurityStamp']
  ,RefreshToken = json['RefreshToken'],UserName = json['UserName'],Password = json['Password'],TokenCaptcha = json['TokenCaptcha'],Stamp = json['Stamp'];

  Map<String, dynamic> toJson() =>{'LoginType' : LoginType,'Cellphone' : Cellphone,'SecurityStamp' : SecurityStamp,'RefreshToken' : RefreshToken
    ,'UserName' : UserName,'Password' : Password,'TokenCaptcha' : TokenCaptcha,'Stamp' : Stamp};
}