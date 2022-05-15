import 'enums.dart';

class ChengState{
  StateType stateType;
  bool navigationsAdd = true;
  bool getList = true;
  dynamic data;
  ChengState(StateType stateType, {dynamic data, navigationsAdd = true, getList = true}){
    this.stateType = stateType;
    this.data = data;
    this.navigationsAdd = navigationsAdd;
    this.getList = getList;
  }
}