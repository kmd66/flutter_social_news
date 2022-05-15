import 'chengState.dart';
import 'enums.dart';

class Navigation{
  Navigation({RouteList route,ChengState chengState}):
      this.chengState = chengState, this.route = route;
  ChengState chengState ;
  RouteList route;
}