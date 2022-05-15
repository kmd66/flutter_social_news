import 'package:flutter_social_news/helper/appSettings.dart';

class TokenController{
  static String get = AppStrings.apiHost + 'api/v1/Token/Get';
  static String refresh = AppStrings.apiHost + 'api/v1//Token/Refresh';
}
class UserController{
  static String sendSecurityCodeBySmsByNationalCode = AppStrings.apiHost + 'api/v1/User/SendSecurityCodeBySmsByNationalCode';
}
class SmsSecurityStampController{
  static String SetByUserName = AppStrings.apiHost + 'api/v1/SmsSecurityStamp/SetByUserName';
}