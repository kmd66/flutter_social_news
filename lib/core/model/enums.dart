enum MessageType {
  Danger,
  Warning,
  Info,
  Message
}
enum StateType {
  None,
  Main,
  Content,
  Cartable,
  Modify,
  Search,

  PopUp,
  SecretStampSms
}
enum LoginType {
  Enter,
  Exit
}
enum RouteList {
  HomePage,
  PopupPage,
  AboutPage,
  LoginPage,
  PofilePage,

}
enum MenuList {
  hide,
  Setting,
  Main,
}
enum NightType {
  Bright,
  Dark
}
enum ColerType {
  Red,// قرمز،
  Orange,// نارنجی،
  Blue,// آبی،
  Teal,// سبز دودی
  Pink,// صورتی،
  Green,// سبز،
  LightGreen,// سبز روشن،
  Violet,// بنفشه ،
  Purole,// ارغوانی ،
  Yellow,// زرد،
  Indigo,// نیلی ،
  BlueGrey,// آبی خاکستری،
  Brown,// قهوه ای،
  Cyan// فیروزه ای
}
enum PlayerType {
  Normal,
  Repeat,
  PlaySpeed,
  PlayTime,
  PlayTimeView,
  PlayPart,
  PlayPartView
}

extension EnumTransform on List {
  String string<T>(T value) {
    if (value == null || (isEmpty)) return null;
    var occurence = singleWhere(
            (enumItem) => enumItem.toString() == value.toString(),
        orElse: () => null);
    if (occurence == null) return null;
    return occurence.toString().split('.').last;
  }

  T enumFromString<T>(String value) {
    return firstWhere((type) => type.toString().split('.').last == value,
        orElse: () => null);
  }
}