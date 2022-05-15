
class AppDateTime{
  static DateTime stringToDateTime(String s,{String format})
  {
    if(s != null)
      return DateTime.parse(s);
    else
      return null;
  }
}