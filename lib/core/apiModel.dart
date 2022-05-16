import 'package:flutter_social_news/helper/dateTime.dart';

abstract class Model {Map<String, dynamic> toJson();}
class Action extends Model{
  // ignore: non_constant_identifier_names
  String ControllerID;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int ControllerType;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Action();
  // ignore: non_constant_identifier_names
  Action.setProperty({this.ControllerID,this.Name,this.ControllerType,this.Title,this.Total,this.ID,this.CreationDate});
  @override
  Action.fromJson(Map<String, dynamic> json):ControllerID = json['ControllerID'],Name = json['Name'],ControllerType = json['ControllerType'],Title = json['Title'],Total = json['Total'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'ControllerID' : ControllerID,'Name' : Name,'ControllerType' : ControllerType,'Title' : Title,'Total' : Total,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Browsers extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Version;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Browsers();
  // ignore: non_constant_identifier_names
  Browsers.setProperty({this.Name,this.Version,this.ID,this.CreationDate});
  @override
  Browsers.fromJson(Map<String, dynamic> json):Name = json['Name'],Version = json['Version'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Name' : Name,'Version' : Version,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Controller extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Controller();
  // ignore: non_constant_identifier_names
  Controller.setProperty({this.Name,this.Title,this.Type,this.Total,this.ID,this.CreationDate});
  @override
  Controller.fromJson(Map<String, dynamic> json):Name = json['Name'],Title = json['Title'],Type = json['Type'],Total = json['Total'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Name' : Name,'Title' : Title,'Type' : Type,'Total' : Total,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class DeviceTypes extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  DeviceTypes();
  // ignore: non_constant_identifier_names
  DeviceTypes.setProperty({this.Name,this.ID,this.CreationDate});
  @override
  DeviceTypes.fromJson(Map<String, dynamic> json):Name = json['Name'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Name' : Name,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class OperationSystems extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Version;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  OperationSystems();
  // ignore: non_constant_identifier_names
  OperationSystems.setProperty({this.Name,this.Version,this.ID,this.CreationDate});
  @override
  OperationSystems.fromJson(Map<String, dynamic> json):Name = json['Name'],Version = json['Version'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Name' : Name,'Version' : Version,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class ApplicationSurveyQuestionChoice extends Model{
  // ignore: non_constant_identifier_names
  String RemoverPositionID;
  // ignore: non_constant_identifier_names
  String QuestionID;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String QuestionName;
  // ignore: non_constant_identifier_names
  DateTime RemoveDate;
  // ignore: non_constant_identifier_names
  bool Enable;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  ApplicationSurveyQuestionChoice();
  // ignore: non_constant_identifier_names
  ApplicationSurveyQuestionChoice.setProperty({this.RemoverPositionID,this.QuestionID,this.Name,this.QuestionName,
    this.RemoveDate,this.Enable,this.Total,this.ID,this.CreationDate});
  @override
  ApplicationSurveyQuestionChoice.fromJson(Map<String, dynamic> json):RemoverPositionID = json['RemoverPositionID'],
        QuestionID = json['QuestionID'],Name = json['Name'],QuestionName = json['QuestionName'],RemoveDate = AppDateTime.stringToDateTime(json['RemoveDate']),Enable = json['Enable'],Total = json['Total'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'RemoverPositionID' : RemoverPositionID,'QuestionID' : QuestionID,
    'Name' : Name,'QuestionName' : QuestionName,'RemoveDate' : RemoveDate.toString(),'Enable' : Enable,'Total' : Total,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class ApplicationSurveyParticipant extends Model{
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String SurveyID;
  // ignore: non_constant_identifier_names
  DateTime Date;
  // ignore: non_constant_identifier_names
  String FullName;
  // ignore: non_constant_identifier_names
  String SurveyName;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  ApplicationSurveyParticipant();
  // ignore: non_constant_identifier_names
  ApplicationSurveyParticipant.setProperty({this.UserID,this.SurveyID,this.Date,this.FullName,this.SurveyName,this.Total,this.ID,this.CreationDate});
  @override
  ApplicationSurveyParticipant.fromJson(Map<String, dynamic> json):UserID = json['UserID'],SurveyID = json['SurveyID'],Date = AppDateTime.stringToDateTime(json['Date']),FullName = json['FullName'],SurveyName = json['SurveyName'],Total = json['Total'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'UserID' : UserID,'SurveyID' : SurveyID,'Date' : Date.toString(),'FullName' : FullName,'SurveyName' : SurveyName,'Total' : Total,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class ApplicationSurveyAnswer extends Model{
  // ignore: non_constant_identifier_names
  String ChoiceID;
  // ignore: non_constant_identifier_names
  String ParticipantID;
  // ignore: non_constant_identifier_names
  String QuestionID;
  // ignore: non_constant_identifier_names
  String Text;
  // ignore: non_constant_identifier_names
  String FullName;
  // ignore: non_constant_identifier_names
  String SurveyName;
  // ignore: non_constant_identifier_names
  String ChoiceTitle;
  // ignore: non_constant_identifier_names
  bool Agree;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  ApplicationSurveyAnswer();
  // ignore: non_constant_identifier_names
  ApplicationSurveyAnswer.setProperty({this.ChoiceID,this.ParticipantID,this.QuestionID,this.Text,this.FullName,this.SurveyName,this.ChoiceTitle,this.Agree,this.Total,this.ID,this.CreationDate});
  @override
  ApplicationSurveyAnswer.fromJson(Map<String, dynamic> json):ChoiceID = json['ChoiceID'],ParticipantID = json['ParticipantID'],QuestionID = json['QuestionID'],Text = json['Text'],FullName = json['FullName'],SurveyName = json['SurveyName'],ChoiceTitle = json['ChoiceTitle'],Agree = json['Agree'],Total = json['Total'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'ChoiceID' : ChoiceID,'ParticipantID' : ParticipantID,'QuestionID' : QuestionID,'Text' : Text,'FullName' : FullName,'SurveyName' : SurveyName,'ChoiceTitle' : ChoiceTitle,'Agree' : Agree,'Total' : Total,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class ApplicationSurveyQuestion extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String GroupID;
  // ignore: non_constant_identifier_names
  String GroupName;
  // ignore: non_constant_identifier_names
  String ApplicationSurveyID;
  // ignore: non_constant_identifier_names
  String ApplicationSurveyName;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  ApplicationSurveyQuestion();
  // ignore: non_constant_identifier_names
  ApplicationSurveyQuestion.setProperty({this.Total,this.Name,this.Type,this.GroupID,this.GroupName,this.ApplicationSurveyID,this.ApplicationSurveyName,this.ID,this.CreationDate});
  @override
  ApplicationSurveyQuestion.fromJson(Map<String, dynamic> json):Total = json['Total'],Name = json['Name'],Type = json['Type'],GroupID = json['GroupID'],GroupName = json['GroupName'],ApplicationSurveyID = json['ApplicationSurveyID'],ApplicationSurveyName = json['ApplicationSurveyName'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'Name' : Name,'Type' : Type,'GroupID' : GroupID,'GroupName' : GroupName,'ApplicationSurveyID' : ApplicationSurveyID,'ApplicationSurveyName' : ApplicationSurveyName,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class ApplicationSurveyGroup extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ApplicationSurveyID;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  ApplicationSurveyGroup();
  // ignore: non_constant_identifier_names
  ApplicationSurveyGroup.setProperty({this.Total,this.ApplicationSurveyID,this.Name,this.ID,this.CreationDate});
  @override
  ApplicationSurveyGroup.fromJson(Map<String, dynamic> json):Total = json['Total'],ApplicationSurveyID = json['ApplicationSurveyID'],Name = json['Name'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'ApplicationSurveyID' : ApplicationSurveyID,'Name' : Name,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class ApplicationSurvey extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  bool Enable;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  ApplicationSurvey();
  // ignore: non_constant_identifier_names
  ApplicationSurvey.setProperty({this.Total,this.ApplicationID,this.Name,this.Enable,this.ID,this.CreationDate});
  @override
  ApplicationSurvey.fromJson(Map<String, dynamic> json):Total = json['Total'],ApplicationID = json['ApplicationID'],Name = json['Name'],Enable = json['Enable'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'ApplicationID' : ApplicationID,'Name' : Name,'Enable' : Enable,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Auth extends Model{
  // ignore: non_constant_identifier_names
  bool isAuthorized;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Auth();
  // ignore: non_constant_identifier_names
  Auth.setProperty({this.isAuthorized,this.ID,this.CreationDate});
  @override
  Auth.fromJson(Map<String, dynamic> json):isAuthorized = json['isAuthorized'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'isAuthorized' : isAuthorized,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class ContactDetail extends Model{
  // ignore: non_constant_identifier_names
  String ContactInfoID;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Value;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  ContactDetail();
  // ignore: non_constant_identifier_names
  ContactDetail.setProperty({this.ContactInfoID,this.Type,this.Name,this.Value,this.ID,this.CreationDate});
  @override
  ContactDetail.fromJson(Map<String, dynamic> json):ContactInfoID = json['ContactInfoID'],Type = json['Type'],Name = json['Name'],Value = json['Value'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'ContactInfoID' : ContactInfoID,'Type' : Type,'Name' : Name,'Value' : Value,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class ContactInfo extends Model{
  // ignore: non_constant_identifier_names
  String ParentID;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int Order;
  // ignore: non_constant_identifier_names
  List<ContactDetail> ContactDetails;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  ContactInfo();
  // ignore: non_constant_identifier_names
  ContactInfo.setProperty({this.ParentID,this.Name,this.Order,this.ContactDetails,this.ID,this.CreationDate});
  @override
  ContactInfo.fromJson(Map<String, dynamic> json):ParentID = json['ParentID'],Name = json['Name'],Order = json['Order'],ContactDetails = json['ContactDetails'] != null ?List<ContactDetail>.from(json['ContactDetails'].map((x) => ContactDetail.fromJson(x))):[],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'ParentID' : ParentID,'Name' : Name,'Order' : Order,'ContactDetails ': ContactDetails != null ? List<dynamic>.from(ContactDetails.map((x) => x.toJson())):[],'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class FAQGroup extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String CreatorID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  List<FAQ> FAQs;
  // ignore: non_constant_identifier_names
  String ID;
  FAQGroup();
  // ignore: non_constant_identifier_names
  FAQGroup.setProperty({this.Total,this.ApplicationID,this.Title,this.CreatorID,this.CreationDate,this.FAQs,this.ID});
  @override
  FAQGroup.fromJson(Map<String, dynamic> json):Total = json['Total'],ApplicationID = json['ApplicationID'],Title = json['Title'],CreatorID = json['CreatorID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),FAQs = json['FAQs'] != null ?List<FAQ>.from(json['FAQs'].map((x) => FAQ.fromJson(x))):[],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'ApplicationID' : ApplicationID,'Title' : Title,'CreatorID' : CreatorID,'CreationDate' : CreationDate.toString(),'FAQs ': FAQs != null ? List<dynamic>.from(FAQs.map((x) => x.toJson())):[],'ID' : ID};
}
class HelpSection extends Model{
  // ignore: non_constant_identifier_names
  String HelpSectionGroupID;
  // ignore: non_constant_identifier_names
  int Order;
  // ignore: non_constant_identifier_names
  bool IsActive;
  // ignore: non_constant_identifier_names
  bool IsFileModified;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String Description;
  // ignore: non_constant_identifier_names
  int FileType;
  // ignore: non_constant_identifier_names
  String FileName;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String GroupTitle;
  // ignore: non_constant_identifier_names
  String GroupDescription;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  HelpSection();
  // ignore: non_constant_identifier_names
  HelpSection.setProperty({this.HelpSectionGroupID,this.Order,this.IsActive,this.IsFileModified,this.Title,this.Description,this.FileType,this.FileName,this.Total,this.GroupTitle,this.GroupDescription,this.ApplicationID,this.ID,this.CreationDate});
  @override
  HelpSection.fromJson(Map<String, dynamic> json):HelpSectionGroupID = json['HelpSectionGroupID'],Order = json['Order'],IsActive = json['IsActive'],IsFileModified = json['IsFileModified'],Title = json['Title'],Description = json['Description'],FileType = json['FileType'],FileName = json['FileName'],Total = json['Total'],GroupTitle = json['GroupTitle'],GroupDescription = json['GroupDescription'],ApplicationID = json['ApplicationID'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'HelpSectionGroupID' : HelpSectionGroupID,'Order' : Order,'IsActive' : IsActive,'IsFileModified' : IsFileModified,'Title' : Title,'Description' : Description,'FileType' : FileType,'FileName' : FileName,'Total' : Total,'GroupTitle' : GroupTitle,'GroupDescription' : GroupDescription,'ApplicationID' : ApplicationID,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class HelpSectionGroup extends Model{
  // ignore: non_constant_identifier_names
  int Order;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String Description;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  HelpSectionGroup();
  // ignore: non_constant_identifier_names
  HelpSectionGroup.setProperty({this.Order,this.Title,this.Description,this.ApplicationID,this.Total,this.ID,this.CreationDate});
  @override
  HelpSectionGroup.fromJson(Map<String, dynamic> json):Order = json['Order'],Title = json['Title'],Description = json['Description'],ApplicationID = json['ApplicationID'],Total = json['Total'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Order' : Order,'Title' : Title,'Description' : Description,'ApplicationID' : ApplicationID,'Total' : Total,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Message extends Model{
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String SenderUserID;
  // ignore: non_constant_identifier_names
  String SenderPositionID;
  // ignore: non_constant_identifier_names
  String SenderUserFullName;
  // ignore: non_constant_identifier_names
  int SenderPositionType;
  // ignore: non_constant_identifier_names
  String CurrentUserID;
  // ignore: non_constant_identifier_names
  String MessageID;
  // ignore: non_constant_identifier_names
  int SendType;
  // ignore: non_constant_identifier_names
  String ParentID;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String SenderDepartmentName;
  // ignore: non_constant_identifier_names
  String ReceiverUserFullName;
  // ignore: non_constant_identifier_names
  String ReceiverDepartment;
  // ignore: non_constant_identifier_names
  String ReceiverPositionID;
  // ignore: non_constant_identifier_names
  int ReceiverPositionType;
  // ignore: non_constant_identifier_names
  String Content;
  // ignore: non_constant_identifier_names
  bool IsRemoved;
  // ignore: non_constant_identifier_names
  bool IsSent;
  // ignore: non_constant_identifier_names
  String TimePart;
  // ignore: non_constant_identifier_names
  List<MessageReceiver> ReceiverUsers;
  // ignore: non_constant_identifier_names
  bool Seen;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  DateTime ExpireDate;
  // ignore: non_constant_identifier_names
  int MessageType;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Message();
  // ignore: non_constant_identifier_names
  Message.setProperty({this.ApplicationID,this.SenderUserID,this.SenderPositionID,this.SenderUserFullName,this.SenderPositionType,this.CurrentUserID,this.MessageID,this.SendType,this.ParentID,this.Title,this.SenderDepartmentName,this.ReceiverUserFullName,this.ReceiverDepartment,this.ReceiverPositionID,this.ReceiverPositionType,this.Content,this.IsRemoved,this.IsSent,this.TimePart,this.ReceiverUsers,this.Seen,this.Total,this.ExpireDate,this.MessageType,this.ID,this.CreationDate});
  @override
  Message.fromJson(Map<String, dynamic> json):ApplicationID = json['ApplicationID'],SenderUserID = json['SenderUserID'],SenderPositionID = json['SenderPositionID'],SenderUserFullName = json['SenderUserFullName'],SenderPositionType = json['SenderPositionType'],CurrentUserID = json['CurrentUserID'],MessageID = json['MessageID'],SendType = json['SendType'],ParentID = json['ParentID'],Title = json['Title'],SenderDepartmentName = json['SenderDepartmentName'],ReceiverUserFullName = json['ReceiverUserFullName'],ReceiverDepartment = json['ReceiverDepartment'],ReceiverPositionID = json['ReceiverPositionID'],ReceiverPositionType = json['ReceiverPositionType'],Content = json['Content'],IsRemoved = json['IsRemoved'],IsSent = json['IsSent'],TimePart = json['TimePart'],ReceiverUsers = json['ReceiverUsers'] != null ?List<MessageReceiver>.from(json['ReceiverUsers'].map((x) => MessageReceiver.fromJson(x))):[],Seen = json['Seen'],Total = json['Total'],ExpireDate = AppDateTime.stringToDateTime(json['ExpireDate']),MessageType = json['MessageType'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'ApplicationID' : ApplicationID,'SenderUserID' : SenderUserID,'SenderPositionID' : SenderPositionID,'SenderUserFullName' : SenderUserFullName,'SenderPositionType' : SenderPositionType,'CurrentUserID' : CurrentUserID,'MessageID' : MessageID,'SendType' : SendType,'ParentID' : ParentID,'Title' : Title,'SenderDepartmentName' : SenderDepartmentName,'ReceiverUserFullName' : ReceiverUserFullName,'ReceiverDepartment' : ReceiverDepartment,'ReceiverPositionID' : ReceiverPositionID,'ReceiverPositionType' : ReceiverPositionType,'Content' : Content,'IsRemoved' : IsRemoved,'IsSent' : IsSent,'TimePart' : TimePart,'ReceiverUsers ': ReceiverUsers != null ? List<dynamic>.from(ReceiverUsers.map((x) => x.toJson())):[],'Seen' : Seen,'Total' : Total,'ExpireDate' : ExpireDate.toString(),'MessageType' : MessageType,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class NotificationCondition extends Model{
  // ignore: non_constant_identifier_names
  String NotificationID;
  // ignore: non_constant_identifier_names
  int State;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  String ProvinceID;
  // ignore: non_constant_identifier_names
  String ProvinceName;
  // ignore: non_constant_identifier_names
  String PositionID;
  // ignore: non_constant_identifier_names
  int PositionType;
  // ignore: non_constant_identifier_names
  String FullName;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  NotificationCondition();
  // ignore: non_constant_identifier_names
  NotificationCondition.setProperty({this.NotificationID,this.State,this.DepartmentID,this.DepartmentName,this.ProvinceID,this.ProvinceName,this.PositionID,this.PositionType,this.FullName,this.Total,this.ID,this.CreationDate});
  @override
  NotificationCondition.fromJson(Map<String, dynamic> json):NotificationID = json['NotificationID'],State = json['State'],DepartmentID = json['DepartmentID'],DepartmentName = json['DepartmentName'],ProvinceID = json['ProvinceID'],ProvinceName = json['ProvinceName'],PositionID = json['PositionID'],PositionType = json['PositionType'],FullName = json['FullName'],Total = json['Total'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'NotificationID' : NotificationID,'State' : State,'DepartmentID' : DepartmentID,'DepartmentName' : DepartmentName,'ProvinceID' : ProvinceID,'ProvinceName' : ProvinceName,'PositionID' : PositionID,'PositionType' : PositionType,'FullName' : FullName,'Total' : Total,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Notification extends Model{
  // ignore: non_constant_identifier_names
  String SenderPositionID;
  // ignore: non_constant_identifier_names
  String SenderName;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String Content;
  // ignore: non_constant_identifier_names
  int Priority;
  // ignore: non_constant_identifier_names
  int State;
  // ignore: non_constant_identifier_names
  List<String> Positions;
  // ignore: non_constant_identifier_names
  List<String> ReceiverPositions;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Notification();
  // ignore: non_constant_identifier_names
  Notification.setProperty({this.SenderPositionID,this.SenderName,this.Title,this.Content,this.Priority,this.State,this.Positions,this.ReceiverPositions,this.Total,this.ID,this.CreationDate});
  @override
  Notification.fromJson(Map<String, dynamic> json):SenderPositionID = json['SenderPositionID'],SenderName = json['SenderName'],Title = json['Title'],Content = json['Content'],Priority = json['Priority'],State = json['State'],Positions = json['Positions'] != null ? List<String>.from(json['Positions'].map((x) => x)):[],ReceiverPositions = json['ReceiverPositions'] != null ? List<String>.from(json['ReceiverPositions'].map((x) => x)):[],Total = json['Total'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'SenderPositionID' : SenderPositionID,'SenderName' : SenderName,'Title' : Title,'Content' : Content,'Priority' : Priority,'State' : State,'Positions ': Positions != null ? List<String>.from(Positions.map((x) => x)):[],'ReceiverPositions ': ReceiverPositions != null ? List<String>.from(ReceiverPositions.map((x) => x)):[],'Total' : Total,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Ticket extends Model{
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String SubjectID;
  // ignore: non_constant_identifier_names
  String CreatorUserID;
  // ignore: non_constant_identifier_names
  int State;
  // ignore: non_constant_identifier_names
  DateTime ReadDate;
  // ignore: non_constant_identifier_names
  DateTime LastReadDate;
  // ignore: non_constant_identifier_names
  String TrackingCode;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String SubjectTitle;
  // ignore: non_constant_identifier_names
  int Priority;
  // ignore: non_constant_identifier_names
  int Score;
  // ignore: non_constant_identifier_names
  int PositionType;
  // ignore: non_constant_identifier_names
  String CreatorPositionID;
  // ignore: non_constant_identifier_names
  String LastTicketSequenceUserID;
  // ignore: non_constant_identifier_names
  String OwnerID;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String OwnerPositionID;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  String OwnerPositionName;
  // ignore: non_constant_identifier_names
  String OwnerFullName;
  // ignore: non_constant_identifier_names
  String CreatorUserName;
  // ignore: non_constant_identifier_names
  bool IsRead;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  int TicketAnswerState;
  // ignore: non_constant_identifier_names
  int SequenceCount;
  // ignore: non_constant_identifier_names
  DateTime CloseDate;
  // ignore: non_constant_identifier_names
  int AnsweringTime;
  // ignore: non_constant_identifier_names
  String ApplicationName;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String CellPhone;
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String FAQGroupID;
  // ignore: non_constant_identifier_names
  int CreationTicketType;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Ticket();
  // ignore: non_constant_identifier_names
  Ticket.setProperty({this.ApplicationID,this.SubjectID,this.CreatorUserID,this.State,this.ReadDate,this.LastReadDate,this.TrackingCode,this.Title,this.SubjectTitle,this.Priority,this.Score,this.PositionType,this.CreatorPositionID,this.LastTicketSequenceUserID,this.OwnerID,this.DepartmentID,this.OwnerPositionID,this.DepartmentName,this.OwnerPositionName,this.OwnerFullName,this.CreatorUserName,this.IsRead,this.Total,this.TicketAnswerState,this.SequenceCount,this.CloseDate,this.AnsweringTime,this.ApplicationName,this.FirstName,this.LastName,this.NationalCode,this.CellPhone,this.UserID,this.FAQGroupID,this.CreationTicketType,this.ID,this.CreationDate});
  @override
  Ticket.fromJson(Map<String, dynamic> json):ApplicationID = json['ApplicationID'],SubjectID = json['SubjectID'],CreatorUserID = json['CreatorUserID'],State = json['State'],ReadDate = AppDateTime.stringToDateTime(json['ReadDate']),LastReadDate = AppDateTime.stringToDateTime(json['LastReadDate']),TrackingCode = json['TrackingCode'],Title = json['Title'],SubjectTitle = json['SubjectTitle'],Priority = json['Priority'],Score = json['Score'],PositionType = json['PositionType'],CreatorPositionID = json['CreatorPositionID'],LastTicketSequenceUserID = json['LastTicketSequenceUserID'],OwnerID = json['OwnerID'],DepartmentID = json['DepartmentID'],OwnerPositionID = json['OwnerPositionID'],DepartmentName = json['DepartmentName'],OwnerPositionName = json['OwnerPositionName'],OwnerFullName = json['OwnerFullName'],CreatorUserName = json['CreatorUserName'],IsRead = json['IsRead'],Total = json['Total'],TicketAnswerState = json['TicketAnswerState'],SequenceCount = json['SequenceCount'],CloseDate = AppDateTime.stringToDateTime(json['CloseDate']),AnsweringTime = json['AnsweringTime'],ApplicationName = json['ApplicationName'],FirstName = json['FirstName'],LastName = json['LastName'],NationalCode = json['NationalCode'],CellPhone = json['CellPhone'],UserID = json['UserID'],FAQGroupID = json['FAQGroupID'],CreationTicketType = json['CreationTicketType'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'ApplicationID' : ApplicationID,'SubjectID' : SubjectID,'CreatorUserID' : CreatorUserID,'State' : State,'ReadDate' : ReadDate.toString(),'LastReadDate' : LastReadDate.toString(),'TrackingCode' : TrackingCode,'Title' : Title,'SubjectTitle' : SubjectTitle,'Priority' : Priority,'Score' : Score,'PositionType' : PositionType,'CreatorPositionID' : CreatorPositionID,'LastTicketSequenceUserID' : LastTicketSequenceUserID,'OwnerID' : OwnerID,'DepartmentID' : DepartmentID,'OwnerPositionID' : OwnerPositionID,'DepartmentName' : DepartmentName,'OwnerPositionName' : OwnerPositionName,'OwnerFullName' : OwnerFullName,'CreatorUserName' : CreatorUserName,'IsRead' : IsRead,'Total' : Total,'TicketAnswerState' : TicketAnswerState,'SequenceCount' : SequenceCount,'CloseDate' : CloseDate.toString(),'AnsweringTime' : AnsweringTime,'ApplicationName' : ApplicationName,'FirstName' : FirstName,'LastName' : LastName,'NationalCode' : NationalCode,'CellPhone' : CellPhone,'UserID' : UserID,'FAQGroupID' : FAQGroupID,'CreationTicketType' : CreationTicketType,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class TicketSequence extends Model{
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String TicketID;
  // ignore: non_constant_identifier_names
  String AttachmentID;
  // ignore: non_constant_identifier_names
  String Content;
  // ignore: non_constant_identifier_names
  DateTime ReadDate;
  // ignore: non_constant_identifier_names
  String TicketSequenceUserName;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  int PositionType;
  // ignore: non_constant_identifier_names
  String TimePart;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  TicketSequence();
  // ignore: non_constant_identifier_names
  TicketSequence.setProperty({this.UserID,this.TicketID,this.AttachmentID,this.Content,this.ReadDate,this.TicketSequenceUserName,this.DepartmentName,this.PositionType,this.TimePart,this.Total,this.ID,this.CreationDate});
  @override
  TicketSequence.fromJson(Map<String, dynamic> json):UserID = json['UserID'],TicketID = json['TicketID'],AttachmentID = json['AttachmentID'],Content = json['Content'],ReadDate = AppDateTime.stringToDateTime(json['ReadDate']),TicketSequenceUserName = json['TicketSequenceUserName'],DepartmentName = json['DepartmentName'],PositionType = json['PositionType'],TimePart = json['TimePart'],Total = json['Total'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'UserID' : UserID,'TicketID' : TicketID,'AttachmentID' : AttachmentID,'Content' : Content,'ReadDate' : ReadDate.toString(),'TicketSequenceUserName' : TicketSequenceUserName,'DepartmentName' : DepartmentName,'PositionType' : PositionType,'TimePart' : TimePart,'Total' : Total,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class TicketSubject extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  bool Enable;
  // ignore: non_constant_identifier_names
  String Description;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String ApplicationName;
  // ignore: non_constant_identifier_names
  String FAQGroupID;
  // ignore: non_constant_identifier_names
  String FAQGroupName;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  TicketSubject();
  // ignore: non_constant_identifier_names
  TicketSubject.setProperty({this.Name,this.Total,this.Enable,this.Description,this.ApplicationID,this.ApplicationName,this.FAQGroupID,this.FAQGroupName,this.ID,this.CreationDate});
  @override
  TicketSubject.fromJson(Map<String, dynamic> json):Name = json['Name'],Total = json['Total'],Enable = json['Enable'],Description = json['Description'],ApplicationID = json['ApplicationID'],ApplicationName = json['ApplicationName'],FAQGroupID = json['FAQGroupID'],FAQGroupName = json['FAQGroupName'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Name' : Name,'Total' : Total,'Enable' : Enable,'Description' : Description,'ApplicationID' : ApplicationID,'ApplicationName' : ApplicationName,'FAQGroupID' : FAQGroupID,'FAQGroupName' : FAQGroupName,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class TicketSubjectUser extends Model{
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String TicketSubjectID;
  // ignore: non_constant_identifier_names
  String SubjectName;
  // ignore: non_constant_identifier_names
  String UserName;
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String PositionID;
  // ignore: non_constant_identifier_names
  int PositionType;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  TicketSubjectUser();
  // ignore: non_constant_identifier_names
  TicketSubjectUser.setProperty({this.ApplicationID,this.TicketSubjectID,this.SubjectName,this.UserName,this.UserID,this.PositionID,this.PositionType,this.Total,this.ID,this.CreationDate});
  @override
  TicketSubjectUser.fromJson(Map<String, dynamic> json):ApplicationID = json['ApplicationID'],TicketSubjectID = json['TicketSubjectID'],SubjectName = json['SubjectName'],UserName = json['UserName'],UserID = json['UserID'],PositionID = json['PositionID'],PositionType = json['PositionType'],Total = json['Total'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'ApplicationID' : ApplicationID,'TicketSubjectID' : TicketSubjectID,'SubjectName' : SubjectName,'UserName' : UserName,'UserID' : UserID,'PositionID' : PositionID,'PositionType' : PositionType,'Total' : Total,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class InquiryLog extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  String AddressID;
  // ignore: non_constant_identifier_names
  String PostalCode;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  int ResultType;
  // ignore: non_constant_identifier_names
  int ResultCount;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  InquiryLog();
  // ignore: non_constant_identifier_names
  InquiryLog.setProperty({this.Total,this.IndividualID,this.AddressID,this.PostalCode,this.NationalCode,this.ResultType,this.ResultCount,this.ID,this.CreationDate});
  @override
  InquiryLog.fromJson(Map<String, dynamic> json):Total = json['Total'],IndividualID = json['IndividualID'],AddressID = json['AddressID'],PostalCode = json['PostalCode'],NationalCode = json['NationalCode'],ResultType = json['ResultType'],ResultCount = json['ResultCount'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'IndividualID' : IndividualID,'AddressID' : AddressID,'PostalCode' : PostalCode,'NationalCode' : NationalCode,'ResultType' : ResultType,'ResultCount' : ResultCount,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class BankMarkaziSheba extends Model{
  // ignore: non_constant_identifier_names
  bool IsValid;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  BankMarkaziSheba();
  // ignore: non_constant_identifier_names
  BankMarkaziSheba.setProperty({this.IsValid,this.ID,this.CreationDate});
  @override
  BankMarkaziSheba.fromJson(Map<String, dynamic> json):IsValid = json['IsValid'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'IsValid' : IsValid,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Vaccine extends Model{
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  int NumberOfReceivedDoses;
  // ignore: non_constant_identifier_names
  DateTime LastDoseDate;
  // ignore: non_constant_identifier_names
  String LastDoseDateFa;
  // ignore: non_constant_identifier_names
  String HealthStatus;
  // ignore: non_constant_identifier_names
  String PermissionStatus;
  // ignore: non_constant_identifier_names
  bool Quarantined;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Vaccine();
  // ignore: non_constant_identifier_names
  Vaccine.setProperty({this.IndividualID,this.NumberOfReceivedDoses,this.LastDoseDate,this.LastDoseDateFa,this.HealthStatus,this.PermissionStatus,this.Quarantined,this.ID,this.CreationDate});
  @override
  Vaccine.fromJson(Map<String, dynamic> json):IndividualID = json['IndividualID'],NumberOfReceivedDoses = json['NumberOfReceivedDoses'],LastDoseDate = AppDateTime.stringToDateTime(json['LastDoseDate']),LastDoseDateFa = json['LastDoseDateFa'],HealthStatus = json['HealthStatus'],PermissionStatus = json['PermissionStatus'],Quarantined = json['Quarantined'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'IndividualID' : IndividualID,'NumberOfReceivedDoses' : NumberOfReceivedDoses,'LastDoseDate' : LastDoseDate.toString(),'LastDoseDateFa' : LastDoseDateFa,'HealthStatus' : HealthStatus,'PermissionStatus' : PermissionStatus,'Quarantined' : Quarantined,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class EducationalInquiry extends Model{
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  String TrackCode;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String PhoneNumber;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  EducationalInquiry();
  // ignore: non_constant_identifier_names
  EducationalInquiry.setProperty({this.IndividualID,this.TrackCode,this.NationalCode,this.PhoneNumber,this.ID,this.CreationDate});
  @override
  EducationalInquiry.fromJson(Map<String, dynamic> json):IndividualID = json['IndividualID'],TrackCode = json['TrackCode'],NationalCode = json['NationalCode'],PhoneNumber = json['PhoneNumber'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'IndividualID' : IndividualID,'TrackCode' : TrackCode,'NationalCode' : NationalCode,'PhoneNumber' : PhoneNumber,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Educational2 extends Model{
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String FatherName;
  // ignore: non_constant_identifier_names
  String Nationalcode;
  // ignore: non_constant_identifier_names
  String BirthDate;
  // ignore: non_constant_identifier_names
  String IdentificationNo;
  // ignore: non_constant_identifier_names
  String UniStudyLevel;
  // ignore: non_constant_identifier_names
  String UniStudyingMode;
  // ignore: non_constant_identifier_names
  String UniStudentStatus;
  // ignore: non_constant_identifier_names
  String UniCourseStudy;
  // ignore: non_constant_identifier_names
  String UniStartDate;
  // ignore: non_constant_identifier_names
  String UniStopDate;
  // ignore: non_constant_identifier_names
  String MsrtStudyingMode;
  // ignore: non_constant_identifier_names
  String MsrtStudyLevel;
  // ignore: non_constant_identifier_names
  String MsrtStudentStatus;
  // ignore: non_constant_identifier_names
  String PersonCode;
  // ignore: non_constant_identifier_names
  String University;
  // ignore: non_constant_identifier_names
  double TotalAverage;
  // ignore: non_constant_identifier_names
  int Gender;
  // ignore: non_constant_identifier_names
  DateTime IndividualBirthDate;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Educational2();
  // ignore: non_constant_identifier_names
  Educational2.setProperty({this.IndividualID,this.FirstName,this.LastName,this.FatherName,this.Nationalcode,this.BirthDate,this.IdentificationNo,this.UniStudyLevel,this.UniStudyingMode,this.UniStudentStatus,this.UniCourseStudy,this.UniStartDate,this.UniStopDate,this.MsrtStudyingMode,this.MsrtStudyLevel,this.MsrtStudentStatus,this.PersonCode,this.University,this.TotalAverage,this.Gender,this.IndividualBirthDate,this.Total,this.NationalCode,this.ID,this.CreationDate});
  @override
  Educational2.fromJson(Map<String, dynamic> json):IndividualID = json['IndividualID'],FirstName = json['FirstName'],LastName = json['LastName'],FatherName = json['FatherName'],Nationalcode = json['Nationalcode'],BirthDate = json['BirthDate'],IdentificationNo = json['IdentificationNo'],UniStudyLevel = json['UniStudyLevel'],UniStudyingMode = json['UniStudyingMode'],UniStudentStatus = json['UniStudentStatus'],UniCourseStudy = json['UniCourseStudy'],UniStartDate = json['UniStartDate'],UniStopDate = json['UniStopDate'],MsrtStudyingMode = json['MsrtStudyingMode'],MsrtStudyLevel = json['MsrtStudyLevel'],MsrtStudentStatus = json['MsrtStudentStatus'],PersonCode = json['PersonCode'],University = json['University'],TotalAverage = json['TotalAverage'],Gender = json['Gender'],IndividualBirthDate = AppDateTime.stringToDateTime(json['IndividualBirthDate']),Total = json['Total'],NationalCode = json['NationalCode'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'IndividualID' : IndividualID,'FirstName' : FirstName,'LastName' : LastName,'FatherName' : FatherName,'Nationalcode' : Nationalcode,'BirthDate' : BirthDate,'IdentificationNo' : IdentificationNo,'UniStudyLevel' : UniStudyLevel,'UniStudyingMode' : UniStudyingMode,'UniStudentStatus' : UniStudentStatus,'UniCourseStudy' : UniCourseStudy,'UniStartDate' : UniStartDate,'UniStopDate' : UniStopDate,'MsrtStudyingMode' : MsrtStudyingMode,'MsrtStudyLevel' : MsrtStudyLevel,'MsrtStudentStatus' : MsrtStudentStatus,'PersonCode' : PersonCode,'University' : University,'TotalAverage' : TotalAverage,'Gender' : Gender,'IndividualBirthDate' : IndividualBirthDate.toString(),'Total' : Total,'NationalCode' : NationalCode,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Educational extends Model{
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  int UniversityId;
  // ignore: non_constant_identifier_names
  String UniversityName;
  // ignore: non_constant_identifier_names
  String FacultyName;
  // ignore: non_constant_identifier_names
  String CourseTitle;
  // ignore: non_constant_identifier_names
  String MsrtCourseTitle;
  // ignore: non_constant_identifier_names
  String StopDate;
  // ignore: non_constant_identifier_names
  int StudentStatus;
  // ignore: non_constant_identifier_names
  int MsrtStudentStatus;
  // ignore: non_constant_identifier_names
  String MsrtStudentStatusCode;
  // ignore: non_constant_identifier_names
  String StudyLevelTitle;
  // ignore: non_constant_identifier_names
  String MsrtstudyLevelTitle;
  // ignore: non_constant_identifier_names
  String MsrtstudyLevelCode;
  // ignore: non_constant_identifier_names
  int StudyingMode;
  // ignore: non_constant_identifier_names
  int MsrtStudyingMode;
  // ignore: non_constant_identifier_names
  String MsrtStudyingModeCode;
  // ignore: non_constant_identifier_names
  double TotalAverage;
  // ignore: non_constant_identifier_names
  String UserTypeName;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Educational();
  // ignore: non_constant_identifier_names
  Educational.setProperty({this.IndividualID,this.UniversityId,this.UniversityName,this.FacultyName,this.CourseTitle,this.MsrtCourseTitle,this.StopDate,this.StudentStatus,this.MsrtStudentStatus,this.MsrtStudentStatusCode,this.StudyLevelTitle,this.MsrtstudyLevelTitle,this.MsrtstudyLevelCode,this.StudyingMode,this.MsrtStudyingMode,this.MsrtStudyingModeCode,this.TotalAverage,this.UserTypeName,this.ID,this.CreationDate});
  @override
  Educational.fromJson(Map<String, dynamic> json):IndividualID = json['IndividualID'],UniversityId = json['UniversityId'],UniversityName = json['UniversityName'],FacultyName = json['FacultyName'],CourseTitle = json['CourseTitle'],MsrtCourseTitle = json['MsrtCourseTitle'],StopDate = json['StopDate'],StudentStatus = json['StudentStatus'],MsrtStudentStatus = json['MsrtStudentStatus'],MsrtStudentStatusCode = json['MsrtStudentStatusCode'],StudyLevelTitle = json['StudyLevelTitle'],MsrtstudyLevelTitle = json['MsrtstudyLevelTitle'],MsrtstudyLevelCode = json['MsrtstudyLevelCode'],StudyingMode = json['StudyingMode'],MsrtStudyingMode = json['MsrtStudyingMode'],MsrtStudyingModeCode = json['MsrtStudyingModeCode'],TotalAverage = json['TotalAverage'],UserTypeName = json['UserTypeName'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'IndividualID' : IndividualID,'UniversityId' : UniversityId,'UniversityName' : UniversityName,'FacultyName' : FacultyName,'CourseTitle' : CourseTitle,'MsrtCourseTitle' : MsrtCourseTitle,'StopDate' : StopDate,'StudentStatus' : StudentStatus,'MsrtStudentStatus' : MsrtStudentStatus,'MsrtStudentStatusCode' : MsrtStudentStatusCode,'StudyLevelTitle' : StudyLevelTitle,'MsrtstudyLevelTitle' : MsrtstudyLevelTitle,'MsrtstudyLevelCode' : MsrtstudyLevelCode,'StudyingMode' : StudyingMode,'MsrtStudyingMode' : MsrtStudyingMode,'MsrtStudyingModeCode' : MsrtStudyingModeCode,'TotalAverage' : TotalAverage,'UserTypeName' : UserTypeName,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class JudiciaryResult extends Model{
  // ignore: non_constant_identifier_names
  String ErrorMessage;
  // ignore: non_constant_identifier_names
  String ResultValue;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  JudiciaryResult();
  // ignore: non_constant_identifier_names
  JudiciaryResult.setProperty({this.ErrorMessage,this.ResultValue,this.ID,this.CreationDate});
  @override
  JudiciaryResult.fromJson(Map<String, dynamic> json):ErrorMessage = json['ErrorMessage'],ResultValue = json['ResultValue'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'ErrorMessage' : ErrorMessage,'ResultValue' : ResultValue,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class OmidVaccine extends Model{
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  int NumberOfReceivedDoses;
  // ignore: non_constant_identifier_names
  String HealthStatus;
  // ignore: non_constant_identifier_names
  String PermissionStatus;
  // ignore: non_constant_identifier_names
  bool Quarantined;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  OmidVaccine();
  // ignore: non_constant_identifier_names
  OmidVaccine.setProperty({this.IndividualID,this.NumberOfReceivedDoses,this.HealthStatus,this.PermissionStatus,this.Quarantined,this.ID,this.CreationDate});
  @override
  OmidVaccine.fromJson(Map<String, dynamic> json):IndividualID = json['IndividualID'],NumberOfReceivedDoses = json['NumberOfReceivedDoses'],HealthStatus = json['HealthStatus'],PermissionStatus = json['PermissionStatus'],Quarantined = json['Quarantined'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'IndividualID' : IndividualID,'NumberOfReceivedDoses' : NumberOfReceivedDoses,'HealthStatus' : HealthStatus,'PermissionStatus' : PermissionStatus,'Quarantined' : Quarantined,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Address extends Model{
  // ignore: non_constant_identifier_names
  String PostalCode;
  // ignore: non_constant_identifier_names
  String ProvinceID;
  // ignore: non_constant_identifier_names
  String ProvinceName;
  // ignore: non_constant_identifier_names
  String CityID;
  // ignore: non_constant_identifier_names
  String CityName;
  // ignore: non_constant_identifier_names
  String DistrictID;
  // ignore: non_constant_identifier_names
  String DistrictName;
  // ignore: non_constant_identifier_names
  String TownID;
  // ignore: non_constant_identifier_names
  String TownName;
  // ignore: non_constant_identifier_names
  String LocalityName;
  // ignore: non_constant_identifier_names
  String VillageName;
  // ignore: non_constant_identifier_names
  String SubLocality;
  // ignore: non_constant_identifier_names
  String Street;
  // ignore: non_constant_identifier_names
  String Street2;
  // ignore: non_constant_identifier_names
  String HouseNumber;
  // ignore: non_constant_identifier_names
  String BuildingName;
  // ignore: non_constant_identifier_names
  String Description;
  // ignore: non_constant_identifier_names
  String Floor;
  // ignore: non_constant_identifier_names
  String SideFloor;
  // ignore: non_constant_identifier_names
  String LocationName;
  // ignore: non_constant_identifier_names
  double Long;
  // ignore: non_constant_identifier_names
  double Lat;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Address();
  // ignore: non_constant_identifier_names
  Address.setProperty({this.PostalCode,this.ProvinceID,this.ProvinceName,this.CityID,this.CityName,this.DistrictID,this.DistrictName,this.TownID,this.TownName,this.LocalityName,this.VillageName,this.SubLocality,this.Street,this.Street2,this.HouseNumber,this.BuildingName,this.Description,this.Floor,this.SideFloor,this.LocationName,this.Long,this.Lat,this.ID,this.CreationDate});
  @override
  Address.fromJson(Map<String, dynamic> json):PostalCode = json['PostalCode'],ProvinceID = json['ProvinceID'],ProvinceName = json['ProvinceName'],CityID = json['CityID'],CityName = json['CityName'],DistrictID = json['DistrictID'],DistrictName = json['DistrictName'],TownID = json['TownID'],TownName = json['TownName'],LocalityName = json['LocalityName'],VillageName = json['VillageName'],SubLocality = json['SubLocality'],Street = json['Street'],Street2 = json['Street2'],HouseNumber = json['HouseNumber'],BuildingName = json['BuildingName'],Description = json['Description'],Floor = json['Floor'],SideFloor = json['SideFloor'],LocationName = json['LocationName'],Long = json['Long'],Lat = json['Lat'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'PostalCode' : PostalCode,'ProvinceID' : ProvinceID,'ProvinceName' : ProvinceName,'CityID' : CityID,'CityName' : CityName,'DistrictID' : DistrictID,'DistrictName' : DistrictName,'TownID' : TownID,'TownName' : TownName,'LocalityName' : LocalityName,'VillageName' : VillageName,'SubLocality' : SubLocality,'Street' : Street,'Street2' : Street2,'HouseNumber' : HouseNumber,'BuildingName' : BuildingName,'Description' : Description,'Floor' : Floor,'SideFloor' : SideFloor,'LocationName' : LocationName,'Long' : Long,'Lat' : Lat,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class InquiryState extends Model{
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  String AddressID;
  // ignore: non_constant_identifier_names
  int ResultType;
  // ignore: non_constant_identifier_names
  int ResultCount;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  InquiryState();
  // ignore: non_constant_identifier_names
  InquiryState.setProperty({this.IndividualID,this.AddressID,this.ResultType,this.ResultCount,this.ID,this.CreationDate});
  @override
  InquiryState.fromJson(Map<String, dynamic> json):IndividualID = json['IndividualID'],AddressID = json['AddressID'],ResultType = json['ResultType'],ResultCount = json['ResultCount'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'IndividualID' : IndividualID,'AddressID' : AddressID,'ResultType' : ResultType,'ResultCount' : ResultCount,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class SpecialInquiryForSabteAsnadVaAmlak extends Model{
  // ignore: non_constant_identifier_names
  String FollowUpNo;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String State;
  // ignore: non_constant_identifier_names
  String EstablishmentDate;
  // ignore: non_constant_identifier_names
  String RegisterDate;
  // ignore: non_constant_identifier_names
  String RegisterNumber;
  // ignore: non_constant_identifier_names
  String Address;
  // ignore: non_constant_identifier_names
  String PostCode;
  // ignore: non_constant_identifier_names
  String LastChangeDate;
  // ignore: non_constant_identifier_names
  String LegalPersonType;
  // ignore: non_constant_identifier_names
  String RegisterUnit;
  // ignore: non_constant_identifier_names
  String Residency;
  // ignore: non_constant_identifier_names
  String BreakupDate;
  // ignore: non_constant_identifier_names
  String SettleDate;
  // ignore: non_constant_identifier_names
  bool IsBranch;
  // ignore: non_constant_identifier_names
  bool IsBreakup;
  // ignore: non_constant_identifier_names
  bool IsSettle;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  SpecialInquiryForSabteAsnadVaAmlak();
  // ignore: non_constant_identifier_names
  SpecialInquiryForSabteAsnadVaAmlak.setProperty({this.FollowUpNo,this.NationalCode,this.Name,this.State,this.EstablishmentDate,this.RegisterDate,this.RegisterNumber,this.Address,this.PostCode,this.LastChangeDate,this.LegalPersonType,this.RegisterUnit,this.Residency,this.BreakupDate,this.SettleDate,this.IsBranch,this.IsBreakup,this.IsSettle,this.ID,this.CreationDate});
  @override
  SpecialInquiryForSabteAsnadVaAmlak.fromJson(Map<String, dynamic> json):FollowUpNo = json['FollowUpNo'],NationalCode = json['NationalCode'],Name = json['Name'],State = json['State'],EstablishmentDate = json['EstablishmentDate'],RegisterDate = json['RegisterDate'],RegisterNumber = json['RegisterNumber'],Address = json['Address'],PostCode = json['PostCode'],LastChangeDate = json['LastChangeDate'],LegalPersonType = json['LegalPersonType'],RegisterUnit = json['RegisterUnit'],Residency = json['Residency'],BreakupDate = json['BreakupDate'],SettleDate = json['SettleDate'],IsBranch = json['IsBranch'],IsBreakup = json['IsBreakup'],IsSettle = json['IsSettle'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'FollowUpNo' : FollowUpNo,'NationalCode' : NationalCode,'Name' : Name,'State' : State,'EstablishmentDate' : EstablishmentDate,'RegisterDate' : RegisterDate,'RegisterNumber' : RegisterNumber,'Address' : Address,'PostCode' : PostCode,'LastChangeDate' : LastChangeDate,'LegalPersonType' : LegalPersonType,'RegisterUnit' : RegisterUnit,'Residency' : Residency,'BreakupDate' : BreakupDate,'SettleDate' : SettleDate,'IsBranch' : IsBranch,'IsBreakup' : IsBreakup,'IsSettle' : IsSettle,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Sacrificial extends Model{
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  DateTime BirthDate;
  // ignore: non_constant_identifier_names
  bool IsDead;
  // ignore: non_constant_identifier_names
  int Gender;
  // ignore: non_constant_identifier_names
  int ConfirmType;
  // ignore: non_constant_identifier_names
  bool HasSacrificialBackGround;
  // ignore: non_constant_identifier_names
  List<SacrificialTypeModel> SacrificialTypes;
  // ignore: non_constant_identifier_names
  int VeteranPercent;
  // ignore: non_constant_identifier_names
  int ParentVeteranPercent;
  // ignore: non_constant_identifier_names
  int SpouseVeteranPercent;
  // ignore: non_constant_identifier_names
  int CaptivityDurationDays;
  // ignore: non_constant_identifier_names
  int ParentCaptivityDurationDays;
  // ignore: non_constant_identifier_names
  int SpouseCaptivityDurationDays;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Sacrificial();
  // ignore: non_constant_identifier_names
  Sacrificial.setProperty({this.IndividualID,this.NationalCode,this.FirstName,this.LastName,this.BirthDate,this.IsDead,this.Gender,this.ConfirmType,this.HasSacrificialBackGround,this.SacrificialTypes,this.VeteranPercent,this.ParentVeteranPercent,this.SpouseVeteranPercent,this.CaptivityDurationDays,this.ParentCaptivityDurationDays,this.SpouseCaptivityDurationDays,this.ID,this.CreationDate});
  @override
  Sacrificial.fromJson(Map<String, dynamic> json):IndividualID = json['IndividualID'],NationalCode = json['NationalCode'],FirstName = json['FirstName'],LastName = json['LastName'],BirthDate = AppDateTime.stringToDateTime(json['BirthDate']),IsDead = json['IsDead'],Gender = json['Gender'],ConfirmType = json['ConfirmType'],HasSacrificialBackGround = json['HasSacrificialBackGround'],SacrificialTypes = json['SacrificialTypes'] != null ?List<SacrificialTypeModel>.from(json['SacrificialTypes'].map((x) => SacrificialTypeModel.fromJson(x))):[],VeteranPercent = json['VeteranPercent'],ParentVeteranPercent = json['ParentVeteranPercent'],SpouseVeteranPercent = json['SpouseVeteranPercent'],CaptivityDurationDays = json['CaptivityDurationDays'],ParentCaptivityDurationDays = json['ParentCaptivityDurationDays'],SpouseCaptivityDurationDays = json['SpouseCaptivityDurationDays'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'IndividualID' : IndividualID,'NationalCode' : NationalCode,'FirstName' : FirstName,'LastName' : LastName,'BirthDate' : BirthDate.toString(),'IsDead' : IsDead,'Gender' : Gender,'ConfirmType' : ConfirmType,'HasSacrificialBackGround' : HasSacrificialBackGround,'SacrificialTypes ': SacrificialTypes != null ? List<dynamic>.from(SacrificialTypes.map((x) => x.toJson())):[],'VeteranPercent' : VeteranPercent,'ParentVeteranPercent' : ParentVeteranPercent,'SpouseVeteranPercent' : SpouseVeteranPercent,'CaptivityDurationDays' : CaptivityDurationDays,'ParentCaptivityDurationDays' : ParentCaptivityDurationDays,'SpouseCaptivityDurationDays' : SpouseCaptivityDurationDays,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class SacrificialTypeModel extends Model{
  // ignore: non_constant_identifier_names
  String SacrificialID;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  SacrificialTypeModel();
  // ignore: non_constant_identifier_names
  SacrificialTypeModel.setProperty({this.SacrificialID,this.Type,this.ID,this.CreationDate});
  @override
  SacrificialTypeModel.fromJson(Map<String, dynamic> json):SacrificialID = json['SacrificialID'],Type = json['Type'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'SacrificialID' : SacrificialID,'Type' : Type,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class BudgetCodeAssignment extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String PositionSubTypeID;
  // ignore: non_constant_identifier_names
  String PositionSubTypeName;
  // ignore: non_constant_identifier_names
  String DepartmentBudgetID;
  // ignore: non_constant_identifier_names
  String DepartmentBudgetName;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  String BudgetCode;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  BudgetCodeAssignment();
  // ignore: non_constant_identifier_names
  BudgetCodeAssignment.setProperty({this.Total,this.PositionSubTypeID,this.PositionSubTypeName,this.DepartmentBudgetID,this.DepartmentBudgetName,this.DepartmentID,this.DepartmentName,this.BudgetCode,this.ID,this.CreationDate});
  @override
  BudgetCodeAssignment.fromJson(Map<String, dynamic> json):Total = json['Total'],PositionSubTypeID = json['PositionSubTypeID'],PositionSubTypeName = json['PositionSubTypeName'],DepartmentBudgetID = json['DepartmentBudgetID'],DepartmentBudgetName = json['DepartmentBudgetName'],DepartmentID = json['DepartmentID'],DepartmentName = json['DepartmentName'],BudgetCode = json['BudgetCode'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'PositionSubTypeID' : PositionSubTypeID,'PositionSubTypeName' : PositionSubTypeName,'DepartmentBudgetID' : DepartmentBudgetID,'DepartmentBudgetName' : DepartmentBudgetName,'DepartmentID' : DepartmentID,'DepartmentName' : DepartmentName,'BudgetCode' : BudgetCode,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class CommandByNationalCode extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String FullName;
  // ignore: non_constant_identifier_names
  String RoleID;
  // ignore: non_constant_identifier_names
  String RoleName;
  // ignore: non_constant_identifier_names
  int PositionType;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String UserName;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  CommandByNationalCode();
  // ignore: non_constant_identifier_names
  CommandByNationalCode.setProperty({this.Total,this.Name,this.Title,this.FullName,this.RoleID,this.RoleName,this.PositionType,this.FirstName,this.LastName,this.NationalCode,this.UserName,this.ID,this.CreationDate});
  @override
  CommandByNationalCode.fromJson(Map<String, dynamic> json):Total = json['Total'],Name = json['Name'],Title = json['Title'],FullName = json['FullName'],RoleID = json['RoleID'],RoleName = json['RoleName'],PositionType = json['PositionType'],FirstName = json['FirstName'],LastName = json['LastName'],NationalCode = json['NationalCode'],UserName = json['UserName'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'Name' : Name,'Title' : Title,'FullName' : FullName,'RoleID' : RoleID,'RoleName' : RoleName,'PositionType' : PositionType,'FirstName' : FirstName,'LastName' : LastName,'NationalCode' : NationalCode,'UserName' : UserName,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class DepartmentBudgetForSalary extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String BudgetCode;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String PositionSubTypeID;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  DepartmentBudgetForSalary();
  // ignore: non_constant_identifier_names
  DepartmentBudgetForSalary.setProperty({this.Total,this.DepartmentID,this.DepartmentName,this.Name,this.BudgetCode,this.Type,this.PositionSubTypeID,this.ID,this.CreationDate});
  @override
  DepartmentBudgetForSalary.fromJson(Map<String, dynamic> json):Total = json['Total'],DepartmentID = json['DepartmentID'],DepartmentName = json['DepartmentName'],Name = json['Name'],BudgetCode = json['BudgetCode'],Type = json['Type'],PositionSubTypeID = json['PositionSubTypeID'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'DepartmentID' : DepartmentID,'DepartmentName' : DepartmentName,'Name' : Name,'BudgetCode' : BudgetCode,'Type' : Type,'PositionSubTypeID' : PositionSubTypeID,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class DepartmentBudget extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String BudgetCode;
  // ignore: non_constant_identifier_names
  bool Enabled;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  DepartmentBudget();
  // ignore: non_constant_identifier_names
  DepartmentBudget.setProperty({this.Total,this.DepartmentID,this.DepartmentName,this.Name,this.BudgetCode,this.Enabled,this.Type,this.ID,this.CreationDate});
  @override
  DepartmentBudget.fromJson(Map<String, dynamic> json):Total = json['Total'],DepartmentID = json['DepartmentID'],DepartmentName = json['DepartmentName'],Name = json['Name'],BudgetCode = json['BudgetCode'],Enabled = json['Enabled'],Type = json['Type'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'DepartmentID' : DepartmentID,'DepartmentName' : DepartmentName,'Name' : Name,'BudgetCode' : BudgetCode,'Enabled' : Enabled,'Type' : Type,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class DepartmentPostImport extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  int EmploymentType;
  // ignore: non_constant_identifier_names
  int LimitedNumber;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  DepartmentPostImport();
  // ignore: non_constant_identifier_names
  DepartmentPostImport.setProperty({this.Total,this.DepartmentID,this.DepartmentName,this.EmploymentType,this.LimitedNumber,this.ID,this.CreationDate});
  @override
  DepartmentPostImport.fromJson(Map<String, dynamic> json):Total = json['Total'],DepartmentID = json['DepartmentID'],DepartmentName = json['DepartmentName'],EmploymentType = json['EmploymentType'],LimitedNumber = json['LimitedNumber'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'DepartmentID' : DepartmentID,'DepartmentName' : DepartmentName,'EmploymentType' : EmploymentType,'LimitedNumber' : LimitedNumber,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class DepartmentSummary extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  DepartmentSummary();
  // ignore: non_constant_identifier_names
  DepartmentSummary.setProperty({this.Name,this.ID,this.CreationDate});
  @override
  DepartmentSummary.fromJson(Map<String, dynamic> json):Name = json['Name'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Name' : Name,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class IndividualInquiry extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  int ConfirmType;
  // ignore: non_constant_identifier_names
  int ErrorCode;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  IndividualInquiry();
  // ignore: non_constant_identifier_names
  IndividualInquiry.setProperty({this.Total,this.IndividualID,this.NationalCode,this.ConfirmType,this.ErrorCode,this.ID,this.CreationDate});
  @override
  IndividualInquiry.fromJson(Map<String, dynamic> json):Total = json['Total'],IndividualID = json['IndividualID'],NationalCode = json['NationalCode'],ConfirmType = json['ConfirmType'],ErrorCode = json['ErrorCode'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'IndividualID' : IndividualID,'NationalCode' : NationalCode,'ConfirmType' : ConfirmType,'ErrorCode' : ErrorCode,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class RetirementInformation extends Model{
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  bool IsRetired;
  // ignore: non_constant_identifier_names
  bool IsEmployed;
  // ignore: non_constant_identifier_names
  bool IsRetiredReturnEmployed;
  // ignore: non_constant_identifier_names
  DateTime RetiredDate;
  // ignore: non_constant_identifier_names
  int RetiredDays;
  // ignore: non_constant_identifier_names
  int EmployedDays;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  RetirementInformation();
  // ignore: non_constant_identifier_names
  RetirementInformation.setProperty({this.IndividualID,this.IsRetired,this.IsEmployed,this.IsRetiredReturnEmployed,this.RetiredDate,this.RetiredDays,this.EmployedDays,this.ID,this.CreationDate});
  @override
  RetirementInformation.fromJson(Map<String, dynamic> json):IndividualID = json['IndividualID'],IsRetired = json['IsRetired'],IsEmployed = json['IsEmployed'],IsRetiredReturnEmployed = json['IsRetiredReturnEmployed'],RetiredDate = AppDateTime.stringToDateTime(json['RetiredDate']),RetiredDays = json['RetiredDays'],EmployedDays = json['EmployedDays'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'IndividualID' : IndividualID,'IsRetired' : IsRetired,'IsEmployed' : IsEmployed,'IsRetiredReturnEmployed' : IsRetiredReturnEmployed,'RetiredDate' : RetiredDate.toString(),'RetiredDays' : RetiredDays,'EmployedDays' : EmployedDays,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class OutsideSetting extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  int ElementType;
  // ignore: non_constant_identifier_names
  bool Show;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  OutsideSetting();
  // ignore: non_constant_identifier_names
  OutsideSetting.setProperty({this.Total,this.ElementType,this.Show,this.ID,this.CreationDate});
  @override
  OutsideSetting.fromJson(Map<String, dynamic> json):Total = json['Total'],ElementType = json['ElementType'],Show = json['Show'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'ElementType' : ElementType,'Show' : Show,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class PositionSubType extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  PositionSubType();
  // ignore: non_constant_identifier_names
  PositionSubType.setProperty({this.Total,this.Name,this.DepartmentID,this.DepartmentName,this.Type,this.ID,this.CreationDate});
  @override
  PositionSubType.fromJson(Map<String, dynamic> json):Total = json['Total'],Name = json['Name'],DepartmentID = json['DepartmentID'],DepartmentName = json['DepartmentName'],Type = json['Type'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'Name' : Name,'DepartmentID' : DepartmentID,'DepartmentName' : DepartmentName,'Type' : Type,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class UserGridSetting extends Model{
  // ignore: non_constant_identifier_names
  String Setting;
  // ignore: non_constant_identifier_names
  String Path;
  // ignore: non_constant_identifier_names
  String AncillaryPath;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  UserGridSetting();
  // ignore: non_constant_identifier_names
  UserGridSetting.setProperty({this.Setting,this.Path,this.AncillaryPath,this.ID,this.CreationDate});
  @override
  UserGridSetting.fromJson(Map<String, dynamic> json):Setting = json['Setting'],Path = json['Path'],AncillaryPath = json['AncillaryPath'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Setting' : Setting,'Path' : Path,'AncillaryPath' : AncillaryPath,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class WebServiceUserAction extends Model{
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String ActionID;
  // ignore: non_constant_identifier_names
  String ActionTitle;
  // ignore: non_constant_identifier_names
  String ActionName;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  WebServiceUserAction();
  // ignore: non_constant_identifier_names
  WebServiceUserAction.setProperty({this.UserID,this.ActionID,this.ActionTitle,this.ActionName,this.Total,this.ID,this.CreationDate});
  @override
  WebServiceUserAction.fromJson(Map<String, dynamic> json):UserID = json['UserID'],ActionID = json['ActionID'],ActionTitle = json['ActionTitle'],ActionName = json['ActionName'],Total = json['Total'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'UserID' : UserID,'ActionID' : ActionID,'ActionTitle' : ActionTitle,'ActionName' : ActionName,'Total' : Total,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class WebServiceUserPermission extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ActionID;
  // ignore: non_constant_identifier_names
  String ActionName;
  // ignore: non_constant_identifier_names
  String ActionTitle;
  // ignore: non_constant_identifier_names
  String WebServiceUserID;
  // ignore: non_constant_identifier_names
  int NumberPerDay;
  // ignore: non_constant_identifier_names
  int NumberPerMonth;
  // ignore: non_constant_identifier_names
  DateTime StartDate;
  // ignore: non_constant_identifier_names
  DateTime EndDate;
  // ignore: non_constant_identifier_names
  String UseHours;
  // ignore: non_constant_identifier_names
  String ControllerID;
  // ignore: non_constant_identifier_names
  String ControllerName;
  // ignore: non_constant_identifier_names
  String ControllerTitle;
  // ignore: non_constant_identifier_names
  int ControllerType;
  // ignore: non_constant_identifier_names
  String UserName;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  WebServiceUserPermission();
  // ignore: non_constant_identifier_names
  WebServiceUserPermission.setProperty({this.Total,this.ActionID,this.ActionName,this.ActionTitle,this.WebServiceUserID,this.NumberPerDay,this.NumberPerMonth,this.StartDate,this.EndDate,this.UseHours,this.ControllerID,this.ControllerName,this.ControllerTitle,this.ControllerType,this.UserName,this.ID,this.CreationDate});
  @override
  WebServiceUserPermission.fromJson(Map<String, dynamic> json):Total = json['Total'],ActionID = json['ActionID'],ActionName = json['ActionName'],ActionTitle = json['ActionTitle'],WebServiceUserID = json['WebServiceUserID'],NumberPerDay = json['NumberPerDay'],NumberPerMonth = json['NumberPerMonth'],StartDate = AppDateTime.stringToDateTime(json['StartDate']),EndDate = AppDateTime.stringToDateTime(json['EndDate']),UseHours = json['UseHours'],ControllerID = json['ControllerID'],ControllerName = json['ControllerName'],ControllerTitle = json['ControllerTitle'],ControllerType = json['ControllerType'],UserName = json['UserName'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'ActionID' : ActionID,'ActionName' : ActionName,'ActionTitle' : ActionTitle,'WebServiceUserID' : WebServiceUserID,'NumberPerDay' : NumberPerDay,'NumberPerMonth' : NumberPerMonth,'StartDate' : StartDate.toString(),'EndDate' : EndDate.toString(),'UseHours' : UseHours,'ControllerID' : ControllerID,'ControllerName' : ControllerName,'ControllerTitle' : ControllerTitle,'ControllerType' : ControllerType,'UserName' : UserName,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Signature extends Model{
  // ignore: non_constant_identifier_names
  String FileName;
  // ignore: non_constant_identifier_names
  String RedirectUrl;
  // ignore: non_constant_identifier_names
  String PDFData;
  // ignore: non_constant_identifier_names
  String CertificateData;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Signature();
  // ignore: non_constant_identifier_names
  Signature.setProperty({this.FileName,this.RedirectUrl,this.PDFData,this.CertificateData,this.ID,this.CreationDate});
  @override
  Signature.fromJson(Map<String, dynamic> json):FileName = json['FileName'],RedirectUrl = json['RedirectUrl'],PDFData = json['PDFData'],CertificateData = json['CertificateData'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'FileName' : FileName,'RedirectUrl' : RedirectUrl,'PDFData' : PDFData,'CertificateData' : CertificateData,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class StatisticsListVM extends Model{
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String UserPositionID;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  StatisticsListVM();
  // ignore: non_constant_identifier_names
  StatisticsListVM.setProperty({this.Type,this.UserPositionID,this.ID,this.CreationDate});
  @override
  StatisticsListVM.fromJson(Map<String, dynamic> json):Type = json['Type'],UserPositionID = json['UserPositionID'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Type' : Type,'UserPositionID' : UserPositionID,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class FileModel extends Model{
  // ignore: non_constant_identifier_names
  String FileName;
  // ignore: non_constant_identifier_names
  String Comment;
  // ignore: non_constant_identifier_names
  String Data;
  // ignore: non_constant_identifier_names
  String DataString;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  FileModel();
  // ignore: non_constant_identifier_names
  FileModel.setProperty({this.FileName,this.Comment,this.Data,this.DataString,this.ID,this.CreationDate});
  @override
  FileModel.fromJson(Map<String, dynamic> json):FileName = json['FileName'],Comment = json['Comment'],Data = json['Data'],DataString = json['DataString'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'FileName' : FileName,'Comment' : Comment,'Data' : Data,'DataString' : DataString,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Application extends Model{
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Comment;
  // ignore: non_constant_identifier_names
  bool Enabled;
  // ignore: non_constant_identifier_names
  String Icon;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Application();
  // ignore: non_constant_identifier_names
  Application.setProperty({this.Code,this.Name,this.Comment,this.Enabled,this.Icon,this.ID,this.CreationDate});
  @override
  Application.fromJson(Map<String, dynamic> json):Code = json['Code'],Name = json['Name'],Comment = json['Comment'],Enabled = json['Enabled'],Icon = json['Icon'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Code' : Code,'Name' : Name,'Comment' : Comment,'Enabled' : Enabled,'Icon' : Icon,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class CaptchaReturnVM extends Model{
  // ignore: non_constant_identifier_names
  String Base64Image;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  CaptchaReturnVM();
  // ignore: non_constant_identifier_names
  CaptchaReturnVM.setProperty({this.Base64Image,this.ID,this.CreationDate});
  @override
  CaptchaReturnVM.fromJson(Map<String, dynamic> json):Base64Image = json['Base64Image'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Base64Image' : Base64Image,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Client extends Model{
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String ApplicationName;
  // ignore: non_constant_identifier_names
  String ApplicationCode;
  // ignore: non_constant_identifier_names
  bool ApplicationEnabled;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Secret;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  bool Enabled;
  // ignore: non_constant_identifier_names
  int RefreshTokenLifeTime;
  // ignore: non_constant_identifier_names
  String AllowedOrigin;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Client();
  // ignore: non_constant_identifier_names
  Client.setProperty({this.ApplicationID,this.ApplicationName,this.ApplicationCode,this.ApplicationEnabled,this.Name,this.Secret,this.Type,this.Enabled,this.RefreshTokenLifeTime,this.AllowedOrigin,this.ID,this.CreationDate});
  @override
  Client.fromJson(Map<String, dynamic> json):ApplicationID = json['ApplicationID'],ApplicationName = json['ApplicationName'],ApplicationCode = json['ApplicationCode'],ApplicationEnabled = json['ApplicationEnabled'],Name = json['Name'],Secret = json['Secret'],Type = json['Type'],Enabled = json['Enabled'],RefreshTokenLifeTime = json['RefreshTokenLifeTime'],AllowedOrigin = json['AllowedOrigin'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'ApplicationID' : ApplicationID,'ApplicationName' : ApplicationName,'ApplicationCode' : ApplicationCode,'ApplicationEnabled' : ApplicationEnabled,'Name' : Name,'Secret' : Secret,'Type' : Type,'Enabled' : Enabled,'RefreshTokenLifeTime' : RefreshTokenLifeTime,'AllowedOrigin' : AllowedOrigin,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Command extends Model{
  // ignore: non_constant_identifier_names
  String ParentID;
  // ignore: non_constant_identifier_names
  String Node;
  // ignore: non_constant_identifier_names
  String ParentNode;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String FullName;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String PermissionName;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Command();
  // ignore: non_constant_identifier_names
  Command.setProperty({this.ParentID,this.Node,this.ParentNode,this.Name,this.FullName,this.Title,this.Type,this.PermissionName,this.ID,this.CreationDate});
  @override
  Command.fromJson(Map<String, dynamic> json):ParentID = json['ParentID'],Node = json['Node'],ParentNode = json['ParentNode'],Name = json['Name'],FullName = json['FullName'],Title = json['Title'],Type = json['Type'],PermissionName = json['PermissionName'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'ParentID' : ParentID,'Node' : Node,'ParentNode' : ParentNode,'Name' : Name,'FullName' : FullName,'Title' : Title,'Type' : Type,'PermissionName' : PermissionName,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Department extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ParentID;
  // ignore: non_constant_identifier_names
  String Node;
  // ignore: non_constant_identifier_names
  int NodeLevel;
  // ignore: non_constant_identifier_names
  DateTime ExpirationDate;
  // ignore: non_constant_identifier_names
  String BudgetCode;
  // ignore: non_constant_identifier_names
  String LegalNumber;
  // ignore: non_constant_identifier_names
  String ParentNode;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int SubType;
  // ignore: non_constant_identifier_names
  int CouncilType;
  // ignore: non_constant_identifier_names
  int OrganType;
  // ignore: non_constant_identifier_names
  int ElaboratedBudgetType;
  // ignore: non_constant_identifier_names
  int TreasurySupervisionType;
  // ignore: non_constant_identifier_names
  int UserDefinitionReferenceType;
  // ignore: non_constant_identifier_names
  int BoardOfTrusteesType;
  // ignore: non_constant_identifier_names
  int ArrangementTypeInSalary;
  // ignore: non_constant_identifier_names
  int BriefNameType;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String ParentName;
  // ignore: non_constant_identifier_names
  String ParentNationalCode;
  // ignore: non_constant_identifier_names
  String UnitTypeName;
  // ignore: non_constant_identifier_names
  String ParentCode;
  // ignore: non_constant_identifier_names
  bool Enabled;
  // ignore: non_constant_identifier_names
  String ProvinceID;
  // ignore: non_constant_identifier_names
  String ProvinceName;
  // ignore: non_constant_identifier_names
  String Address;
  // ignore: non_constant_identifier_names
  String PostalCode;
  // ignore: non_constant_identifier_names
  int COFOG;
  // ignore: non_constant_identifier_names
  String AddressID;
  // ignore: non_constant_identifier_names
  String UnitTypeID;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  int NeedsChartType;
  // ignore: non_constant_identifier_names
  bool EnableForPakna;
  // ignore: non_constant_identifier_names
  bool EnableForPaknaWebService;
  // ignore: non_constant_identifier_names
  bool EnableForEstekhdam;
  // ignore: non_constant_identifier_names
  bool EnableForEstekhdamWebService;
  // ignore: non_constant_identifier_names
  bool EnableForJob;
  // ignore: non_constant_identifier_names
  bool EnableForJobWebService;
  // ignore: non_constant_identifier_names
  bool EnableForSalary;
  // ignore: non_constant_identifier_names
  bool EnableForSalaryWebService;
  // ignore: non_constant_identifier_names
  bool EnableForSakhtar;
  // ignore: non_constant_identifier_names
  bool EnableForSakhtarWebService;
  // ignore: non_constant_identifier_names
  bool EnableForSakhtarReport;
  // ignore: non_constant_identifier_names
  bool EnableForServiceSystem;
  // ignore: non_constant_identifier_names
  bool EnableForPerformanceEvaluationSystem;
  // ignore: non_constant_identifier_names
  bool EnableForPostImport;
  // ignore: non_constant_identifier_names
  int WebServiceSaveType;
  // ignore: non_constant_identifier_names
  int MainOrganType;
  // ignore: non_constant_identifier_names
  String MainOrgan1Name;
  // ignore: non_constant_identifier_names
  String MainOrgan1Code;
  // ignore: non_constant_identifier_names
  String MainOrgan2Name;
  // ignore: non_constant_identifier_names
  String MainOrgan2Code;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Department();
  // ignore: non_constant_identifier_names
  Department.setProperty({this.Total,this.ParentID,this.Node,this.NodeLevel,this.ExpirationDate,this.BudgetCode,this.LegalNumber,this.ParentNode,this.Type,this.SubType,this.CouncilType,this.OrganType,this.ElaboratedBudgetType,this.TreasurySupervisionType,this.UserDefinitionReferenceType,this.BoardOfTrusteesType,this.ArrangementTypeInSalary,this.BriefNameType,this.Code,this.Name,this.ParentName,this.ParentNationalCode,this.UnitTypeName,this.ParentCode,this.Enabled,this.ProvinceID,this.ProvinceName,this.Address,this.PostalCode,this.COFOG,this.AddressID,this.UnitTypeID,this.NationalCode,this.NeedsChartType,this.EnableForPakna,this.EnableForPaknaWebService,this.EnableForEstekhdam,this.EnableForEstekhdamWebService,this.EnableForJob,this.EnableForJobWebService,this.EnableForSalary,this.EnableForSalaryWebService,this.EnableForSakhtar,this.EnableForSakhtarWebService,this.EnableForSakhtarReport,this.EnableForServiceSystem,this.EnableForPerformanceEvaluationSystem,this.EnableForPostImport,this.WebServiceSaveType,this.MainOrganType,this.MainOrgan1Name,this.MainOrgan1Code,this.MainOrgan2Name,this.MainOrgan2Code,this.ID,this.CreationDate});
  @override
  Department.fromJson(Map<String, dynamic> json):Total = json['Total'],ParentID = json['ParentID'],Node = json['Node'],NodeLevel = json['NodeLevel'],ExpirationDate = AppDateTime.stringToDateTime(json['ExpirationDate']),BudgetCode = json['BudgetCode'],LegalNumber = json['LegalNumber'],ParentNode = json['ParentNode'],Type = json['Type'],SubType = json['SubType'],CouncilType = json['CouncilType'],OrganType = json['OrganType'],ElaboratedBudgetType = json['ElaboratedBudgetType'],TreasurySupervisionType = json['TreasurySupervisionType'],UserDefinitionReferenceType = json['UserDefinitionReferenceType'],BoardOfTrusteesType = json['BoardOfTrusteesType'],ArrangementTypeInSalary = json['ArrangementTypeInSalary'],BriefNameType = json['BriefNameType'],Code = json['Code'],Name = json['Name'],ParentName = json['ParentName'],ParentNationalCode = json['ParentNationalCode'],UnitTypeName = json['UnitTypeName'],ParentCode = json['ParentCode'],Enabled = json['Enabled'],ProvinceID = json['ProvinceID'],ProvinceName = json['ProvinceName'],Address = json['Address'],PostalCode = json['PostalCode'],COFOG = json['COFOG'],AddressID = json['AddressID'],UnitTypeID = json['UnitTypeID'],NationalCode = json['NationalCode'],NeedsChartType = json['NeedsChartType'],EnableForPakna = json['EnableForPakna'],EnableForPaknaWebService = json['EnableForPaknaWebService'],EnableForEstekhdam = json['EnableForEstekhdam'],EnableForEstekhdamWebService = json['EnableForEstekhdamWebService'],EnableForJob = json['EnableForJob'],EnableForJobWebService = json['EnableForJobWebService'],EnableForSalary = json['EnableForSalary'],EnableForSalaryWebService = json['EnableForSalaryWebService'],EnableForSakhtar = json['EnableForSakhtar'],EnableForSakhtarWebService = json['EnableForSakhtarWebService'],EnableForSakhtarReport = json['EnableForSakhtarReport'],EnableForServiceSystem = json['EnableForServiceSystem'],EnableForPerformanceEvaluationSystem = json['EnableForPerformanceEvaluationSystem'],EnableForPostImport = json['EnableForPostImport'],WebServiceSaveType = json['WebServiceSaveType'],MainOrganType = json['MainOrganType'],MainOrgan1Name = json['MainOrgan1Name'],MainOrgan1Code = json['MainOrgan1Code'],MainOrgan2Name = json['MainOrgan2Name'],MainOrgan2Code = json['MainOrgan2Code'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'ParentID' : ParentID,'Node' : Node,'NodeLevel' : NodeLevel,'ExpirationDate' : ExpirationDate.toString(),'BudgetCode' : BudgetCode,'LegalNumber' : LegalNumber,'ParentNode' : ParentNode,'Type' : Type,'SubType' : SubType,'CouncilType' : CouncilType,'OrganType' : OrganType,'ElaboratedBudgetType' : ElaboratedBudgetType,'TreasurySupervisionType' : TreasurySupervisionType,'UserDefinitionReferenceType' : UserDefinitionReferenceType,'BoardOfTrusteesType' : BoardOfTrusteesType,'ArrangementTypeInSalary' : ArrangementTypeInSalary,'BriefNameType' : BriefNameType,'Code' : Code,'Name' : Name,'ParentName' : ParentName,'ParentNationalCode' : ParentNationalCode,'UnitTypeName' : UnitTypeName,'ParentCode' : ParentCode,'Enabled' : Enabled,'ProvinceID' : ProvinceID,'ProvinceName' : ProvinceName,'Address' : Address,'PostalCode' : PostalCode,'COFOG' : COFOG,'AddressID' : AddressID,'UnitTypeID' : UnitTypeID,'NationalCode' : NationalCode,'NeedsChartType' : NeedsChartType,'EnableForPakna' : EnableForPakna,'EnableForPaknaWebService' : EnableForPaknaWebService,'EnableForEstekhdam' : EnableForEstekhdam,'EnableForEstekhdamWebService' : EnableForEstekhdamWebService,'EnableForJob' : EnableForJob,'EnableForJobWebService' : EnableForJobWebService,'EnableForSalary' : EnableForSalary,'EnableForSalaryWebService' : EnableForSalaryWebService,'EnableForSakhtar' : EnableForSakhtar,'EnableForSakhtarWebService' : EnableForSakhtarWebService,'EnableForSakhtarReport' : EnableForSakhtarReport,'EnableForServiceSystem' : EnableForServiceSystem,'EnableForPerformanceEvaluationSystem' : EnableForPerformanceEvaluationSystem,'EnableForPostImport' : EnableForPostImport,'WebServiceSaveType' : WebServiceSaveType,'MainOrganType' : MainOrganType,'MainOrgan1Name' : MainOrgan1Name,'MainOrgan1Code' : MainOrgan1Code,'MainOrgan2Name' : MainOrgan2Name,'MainOrgan2Code' : MainOrgan2Code,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class DynamicPermissionDetail extends Model{
  // ignore: non_constant_identifier_names
  String DynamicPermissionID;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String GuidValue;
  // ignore: non_constant_identifier_names
  int ByteValue;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  String ProvinceName;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  DynamicPermissionDetail();
  // ignore: non_constant_identifier_names
  DynamicPermissionDetail.setProperty({this.DynamicPermissionID,this.Type,this.GuidValue,this.ByteValue,this.DepartmentName,this.ProvinceName,this.FirstName,this.LastName,this.ID,this.CreationDate});
  @override
  DynamicPermissionDetail.fromJson(Map<String, dynamic> json):DynamicPermissionID = json['DynamicPermissionID'],Type = json['Type'],GuidValue = json['GuidValue'],ByteValue = json['ByteValue'],DepartmentName = json['DepartmentName'],ProvinceName = json['ProvinceName'],FirstName = json['FirstName'],LastName = json['LastName'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'DynamicPermissionID' : DynamicPermissionID,'Type' : Type,'GuidValue' : GuidValue,'ByteValue' : ByteValue,'DepartmentName' : DepartmentName,'ProvinceName' : ProvinceName,'FirstName' : FirstName,'LastName' : LastName,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class DynamicPermission extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ObjectID;
  // ignore: non_constant_identifier_names
  int Order;
  // ignore: non_constant_identifier_names
  int DynamicPermissionType;
  // ignore: non_constant_identifier_names
  List<Department> ParentDepartments;
  // ignore: non_constant_identifier_names
  List<Department> Departments;
  // ignore: non_constant_identifier_names
  List<Place> Provinces;
  // ignore: non_constant_identifier_names
  List<String> DepartmentTypes;
  // ignore: non_constant_identifier_names
  List<String> PositionTypes;
  // ignore: non_constant_identifier_names
  List<String> Positions;
  // ignore: non_constant_identifier_names
  List<Department> EstekhdamParentDepartments;
  // ignore: non_constant_identifier_names
  List<Place> EstekhdamProvinces;
  // ignore: non_constant_identifier_names
  List<String> EstekhdamOrganLawTypes;
  // ignore: non_constant_identifier_names
  List<String> EstekhdamEmploymentRegulationsTypes;
  // ignore: non_constant_identifier_names
  List<String> EstekhdamDepartmentTypes;
  // ignore: non_constant_identifier_names
  List<String> EstekhdamDepartmentBudgetTypes;
  // ignore: non_constant_identifier_names
  List<String> EstekhdamDepartmentRegulationTypes;
  // ignore: non_constant_identifier_names
  List<String> EstekhdamDepartmentSubTypes;
  // ignore: non_constant_identifier_names
  List<Department> PaknaParentDepartments;
  // ignore: non_constant_identifier_names
  List<Place> PaknaProvinces;
  // ignore: non_constant_identifier_names
  List<String> PaknaOrganLawTypes;
  // ignore: non_constant_identifier_names
  List<String> PaknaEmploymentRegulationsTypes;
  // ignore: non_constant_identifier_names
  List<String> PaknaDepartmentTypes;
  // ignore: non_constant_identifier_names
  List<String> PaknaDepartmentBudgetTypes;
  // ignore: non_constant_identifier_names
  List<String> PaknaDepartmentRegulationTypes;
  // ignore: non_constant_identifier_names
  List<String> PaknaDepartmentSubTypes;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  DynamicPermission();
  // ignore: non_constant_identifier_names
  DynamicPermission.setProperty({this.Total,this.ObjectID,this.Order,this.DynamicPermissionType,this.ParentDepartments,this.Departments,this.Provinces,this.DepartmentTypes,this.PositionTypes,this.Positions,this.EstekhdamParentDepartments,this.EstekhdamProvinces,this.EstekhdamOrganLawTypes,this.EstekhdamEmploymentRegulationsTypes,this.EstekhdamDepartmentTypes,this.EstekhdamDepartmentBudgetTypes,this.EstekhdamDepartmentRegulationTypes,this.EstekhdamDepartmentSubTypes,this.PaknaParentDepartments,this.PaknaProvinces,this.PaknaOrganLawTypes,this.PaknaEmploymentRegulationsTypes,this.PaknaDepartmentTypes,this.PaknaDepartmentBudgetTypes,this.PaknaDepartmentRegulationTypes,this.PaknaDepartmentSubTypes,this.ID,this.CreationDate});
  @override
  DynamicPermission.fromJson(Map<String, dynamic> json):Total = json['Total'],ObjectID = json['ObjectID'],Order = json['Order'],DynamicPermissionType = json['DynamicPermissionType'],ParentDepartments = json['ParentDepartments'] != null ?List<Department>.from(json['ParentDepartments'].map((x) => Department.fromJson(x))):[],Departments = json['Departments'] != null ?List<Department>.from(json['Departments'].map((x) => Department.fromJson(x))):[],Provinces = json['Provinces'] != null ?List<Place>.from(json['Provinces'].map((x) => Place.fromJson(x))):[],DepartmentTypes = json['DepartmentTypes'] != null ? List<String>.from(json['DepartmentTypes'].map((x) => x)):[],PositionTypes = json['PositionTypes'] != null ? List<String>.from(json['PositionTypes'].map((x) => x)):[],Positions = json['Positions'] != null ? List<String>.from(json['Positions'].map((x) => x)):[],EstekhdamParentDepartments = json['EstekhdamParentDepartments'] != null ?List<Department>.from(json['EstekhdamParentDepartments'].map((x) => Department.fromJson(x))):[],EstekhdamProvinces = json['EstekhdamProvinces'] != null ?List<Place>.from(json['EstekhdamProvinces'].map((x) => Place.fromJson(x))):[],EstekhdamOrganLawTypes = json['EstekhdamOrganLawTypes'] != null ? List<String>.from(json['EstekhdamOrganLawTypes'].map((x) => x)):[],EstekhdamEmploymentRegulationsTypes = json['EstekhdamEmploymentRegulationsTypes'] != null ? List<String>.from(json['EstekhdamEmploymentRegulationsTypes'].map((x) => x)):[],EstekhdamDepartmentTypes = json['EstekhdamDepartmentTypes'] != null ? List<String>.from(json['EstekhdamDepartmentTypes'].map((x) => x)):[],EstekhdamDepartmentBudgetTypes = json['EstekhdamDepartmentBudgetTypes'] != null ? List<String>.from(json['EstekhdamDepartmentBudgetTypes'].map((x) => x)):[],EstekhdamDepartmentRegulationTypes = json['EstekhdamDepartmentRegulationTypes'] != null ? List<String>.from(json['EstekhdamDepartmentRegulationTypes'].map((x) => x)):[],EstekhdamDepartmentSubTypes = json['EstekhdamDepartmentSubTypes'] != null ? List<String>.from(json['EstekhdamDepartmentSubTypes'].map((x) => x)):[],PaknaParentDepartments = json['PaknaParentDepartments'] != null ?List<Department>.from(json['PaknaParentDepartments'].map((x) => Department.fromJson(x))):[],PaknaProvinces = json['PaknaProvinces'] != null ?List<Place>.from(json['PaknaProvinces'].map((x) => Place.fromJson(x))):[],PaknaOrganLawTypes = json['PaknaOrganLawTypes'] != null ? List<String>.from(json['PaknaOrganLawTypes'].map((x) => x)):[],PaknaEmploymentRegulationsTypes = json['PaknaEmploymentRegulationsTypes'] != null ? List<String>.from(json['PaknaEmploymentRegulationsTypes'].map((x) => x)):[],PaknaDepartmentTypes = json['PaknaDepartmentTypes'] != null ? List<String>.from(json['PaknaDepartmentTypes'].map((x) => x)):[],PaknaDepartmentBudgetTypes = json['PaknaDepartmentBudgetTypes'] != null ? List<String>.from(json['PaknaDepartmentBudgetTypes'].map((x) => x)):[],PaknaDepartmentRegulationTypes = json['PaknaDepartmentRegulationTypes'] != null ? List<String>.from(json['PaknaDepartmentRegulationTypes'].map((x) => x)):[],PaknaDepartmentSubTypes = json['PaknaDepartmentSubTypes'] != null ? List<String>.from(json['PaknaDepartmentSubTypes'].map((x) => x)):[],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'ObjectID' : ObjectID,'Order' : Order,'DynamicPermissionType' : DynamicPermissionType,'ParentDepartments ': ParentDepartments != null ? List<dynamic>.from(ParentDepartments.map((x) => x.toJson())):[],'Departments ': Departments != null ? List<dynamic>.from(Departments.map((x) => x.toJson())):[],'Provinces ': Provinces != null ? List<dynamic>.from(Provinces.map((x) => x.toJson())):[],'DepartmentTypes ': DepartmentTypes != null ? List<String>.from(DepartmentTypes.map((x) => x)):[],'PositionTypes ': PositionTypes != null ? List<String>.from(PositionTypes.map((x) => x)):[],'Positions ': Positions != null ? List<String>.from(Positions.map((x) => x)):[],'EstekhdamParentDepartments ': EstekhdamParentDepartments != null ? List<dynamic>.from(EstekhdamParentDepartments.map((x) => x.toJson())):[],'EstekhdamProvinces ': EstekhdamProvinces != null ? List<dynamic>.from(EstekhdamProvinces.map((x) => x.toJson())):[],'EstekhdamOrganLawTypes ': EstekhdamOrganLawTypes != null ? List<String>.from(EstekhdamOrganLawTypes.map((x) => x)):[],'EstekhdamEmploymentRegulationsTypes ': EstekhdamEmploymentRegulationsTypes != null ? List<String>.from(EstekhdamEmploymentRegulationsTypes.map((x) => x)):[],'EstekhdamDepartmentTypes ': EstekhdamDepartmentTypes != null ? List<String>.from(EstekhdamDepartmentTypes.map((x) => x)):[],'EstekhdamDepartmentBudgetTypes ': EstekhdamDepartmentBudgetTypes != null ? List<String>.from(EstekhdamDepartmentBudgetTypes.map((x) => x)):[],'EstekhdamDepartmentRegulationTypes ': EstekhdamDepartmentRegulationTypes != null ? List<String>.from(EstekhdamDepartmentRegulationTypes.map((x) => x)):[],'EstekhdamDepartmentSubTypes ': EstekhdamDepartmentSubTypes != null ? List<String>.from(EstekhdamDepartmentSubTypes.map((x) => x)):[],'PaknaParentDepartments ': PaknaParentDepartments != null ? List<dynamic>.from(PaknaParentDepartments.map((x) => x.toJson())):[],'PaknaProvinces ': PaknaProvinces != null ? List<dynamic>.from(PaknaProvinces.map((x) => x.toJson())):[],'PaknaOrganLawTypes ': PaknaOrganLawTypes != null ? List<String>.from(PaknaOrganLawTypes.map((x) => x)):[],'PaknaEmploymentRegulationsTypes ': PaknaEmploymentRegulationsTypes != null ? List<String>.from(PaknaEmploymentRegulationsTypes.map((x) => x)):[],'PaknaDepartmentTypes ': PaknaDepartmentTypes != null ? List<String>.from(PaknaDepartmentTypes.map((x) => x)):[],'PaknaDepartmentBudgetTypes ': PaknaDepartmentBudgetTypes != null ? List<String>.from(PaknaDepartmentBudgetTypes.map((x) => x)):[],'PaknaDepartmentRegulationTypes ': PaknaDepartmentRegulationTypes != null ? List<String>.from(PaknaDepartmentRegulationTypes.map((x) => x)):[],'PaknaDepartmentSubTypes ': PaknaDepartmentSubTypes != null ? List<String>.from(PaknaDepartmentSubTypes.map((x) => x)):[],'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Individual extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String FatherName;
  // ignore: non_constant_identifier_names
  String BCNumber;
  // ignore: non_constant_identifier_names
  int Gender;
  // ignore: non_constant_identifier_names
  bool IsDead;
  // ignore: non_constant_identifier_names
  DateTime BirthDate;
  // ignore: non_constant_identifier_names
  String BirthDateJalali;
  // ignore: non_constant_identifier_names
  int ConfirmType;
  // ignore: non_constant_identifier_names
  int Isaargar;
  // ignore: non_constant_identifier_names
  int Age;
  // ignore: non_constant_identifier_names
  String BpProvinceID;
  // ignore: non_constant_identifier_names
  String BpProvinceName;
  // ignore: non_constant_identifier_names
  String BpCityID;
  // ignore: non_constant_identifier_names
  String BpCityName;
  // ignore: non_constant_identifier_names
  String CellPhone;
  // ignore: non_constant_identifier_names
  bool WithoutInquiry;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  DateTime ConfirmDate;
  // ignore: non_constant_identifier_names
  int ErrorCode;
  // ignore: non_constant_identifier_names
  String BpProvinceCode;
  // ignore: non_constant_identifier_names
  String BpCityCode;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Individual();
  // ignore: non_constant_identifier_names
  Individual.setProperty({this.Total,this.NationalCode,this.FirstName,this.LastName,this.FatherName,this.BCNumber,this.Gender,this.IsDead,this.BirthDate,this.BirthDateJalali,this.ConfirmType,this.Isaargar,this.Age,this.BpProvinceID,this.BpProvinceName,this.BpCityID,this.BpCityName,this.CellPhone,this.WithoutInquiry,this.Name,this.ConfirmDate,this.ErrorCode,this.BpProvinceCode,this.BpCityCode,this.ID,this.CreationDate});
  @override
  Individual.fromJson(Map<String, dynamic> json):Total = json['Total'],NationalCode = json['NationalCode'],FirstName = json['FirstName'],LastName = json['LastName'],FatherName = json['FatherName'],BCNumber = json['BCNumber'],Gender = json['Gender'],IsDead = json['IsDead'],BirthDate = AppDateTime.stringToDateTime(json['BirthDate']),BirthDateJalali = json['BirthDateJalali'],ConfirmType = json['ConfirmType'],Isaargar = json['Isaargar'],Age = json['Age'],BpProvinceID = json['BpProvinceID'],BpProvinceName = json['BpProvinceName'],BpCityID = json['BpCityID'],BpCityName = json['BpCityName'],CellPhone = json['CellPhone'],WithoutInquiry = json['WithoutInquiry'],Name = json['Name'],ConfirmDate = AppDateTime.stringToDateTime(json['ConfirmDate']),ErrorCode = json['ErrorCode'],BpProvinceCode = json['BpProvinceCode'],BpCityCode = json['BpCityCode'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'NationalCode' : NationalCode,'FirstName' : FirstName,'LastName' : LastName,'FatherName' : FatherName,'BCNumber' : BCNumber,'Gender' : Gender,'IsDead' : IsDead,'BirthDate' : BirthDate.toString(),'BirthDateJalali' : BirthDateJalali,'ConfirmType' : ConfirmType,'Isaargar' : Isaargar,'Age' : Age,'BpProvinceID' : BpProvinceID,'BpProvinceName' : BpProvinceName,'BpCityID' : BpCityID,'BpCityName' : BpCityName,'CellPhone' : CellPhone,'WithoutInquiry' : WithoutInquiry,'Name' : Name,'ConfirmDate' : ConfirmDate.toString(),'ErrorCode' : ErrorCode,'BpProvinceCode' : BpProvinceCode,'BpCityCode' : BpCityCode,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Place extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String Node;
  // ignore: non_constant_identifier_names
  String ParentNode;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String LatinName;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  String ParentID;
  // ignore: non_constant_identifier_names
  int DevelopmentType;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Place();
  // ignore: non_constant_identifier_names
  Place.setProperty({this.Total,this.Node,this.ParentNode,this.Type,this.Name,this.LatinName,this.Code,this.ParentID,this.DevelopmentType,this.ID,this.CreationDate});
  @override
  Place.fromJson(Map<String, dynamic> json):Total = json['Total'],Node = json['Node'],ParentNode = json['ParentNode'],Type = json['Type'],Name = json['Name'],LatinName = json['LatinName'],Code = json['Code'],ParentID = json['ParentID'],DevelopmentType = json['DevelopmentType'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'Node' : Node,'ParentNode' : ParentNode,'Type' : Type,'Name' : Name,'LatinName' : LatinName,'Code' : Code,'ParentID' : ParentID,'DevelopmentType' : DevelopmentType,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class PositionDepartmentMapping extends Model{
  // ignore: non_constant_identifier_names
  int PositionType;
  // ignore: non_constant_identifier_names
  int DepartmentType;
  // ignore: non_constant_identifier_names
  int MaxUsersCount;
  // ignore: non_constant_identifier_names
  String CreatorUserID;
  // ignore: non_constant_identifier_names
  String CreatorFirstName;
  // ignore: non_constant_identifier_names
  String CreatorLastName;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  PositionDepartmentMapping();
  // ignore: non_constant_identifier_names
  PositionDepartmentMapping.setProperty({this.PositionType,this.DepartmentType,this.MaxUsersCount,this.CreatorUserID,this.CreatorFirstName,this.CreatorLastName,this.ID,this.CreationDate});
  @override
  PositionDepartmentMapping.fromJson(Map<String, dynamic> json):PositionType = json['PositionType'],DepartmentType = json['DepartmentType'],MaxUsersCount = json['MaxUsersCount'],CreatorUserID = json['CreatorUserID'],CreatorFirstName = json['CreatorFirstName'],CreatorLastName = json['CreatorLastName'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'PositionType' : PositionType,'DepartmentType' : DepartmentType,'MaxUsersCount' : MaxUsersCount,'CreatorUserID' : CreatorUserID,'CreatorFirstName' : CreatorFirstName,'CreatorLastName' : CreatorLastName,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class PositionTypeModel extends Model{
  // ignore: non_constant_identifier_names
  String ParentID;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String ApplicationName;
  // ignore: non_constant_identifier_names
  int PositionType;
  // ignore: non_constant_identifier_names
  int UserType;
  // ignore: non_constant_identifier_names
  List<Role> Roles;
  // ignore: non_constant_identifier_names
  List<PositionDepartmentMapping> PositionDepartmentMappings;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  PositionTypeModel();
  // ignore: non_constant_identifier_names
  PositionTypeModel.setProperty({this.ParentID,this.ApplicationID,this.ApplicationName,this.PositionType,this.UserType,this.Roles,this.PositionDepartmentMappings,this.ID,this.CreationDate});
  @override
  PositionTypeModel.fromJson(Map<String, dynamic> json):ParentID = json['ParentID'],ApplicationID = json['ApplicationID'],ApplicationName = json['ApplicationName'],PositionType = json['PositionType'],UserType = json['UserType'],Roles = json['Roles'] != null ?List<Role>.from(json['Roles'].map((x) => Role.fromJson(x))):[],PositionDepartmentMappings = json['PositionDepartmentMappings'] != null ?List<PositionDepartmentMapping>.from(json['PositionDepartmentMappings'].map((x) => PositionDepartmentMapping.fromJson(x))):[],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'ParentID' : ParentID,'ApplicationID' : ApplicationID,'ApplicationName' : ApplicationName,'PositionType' : PositionType,'UserType' : UserType,'Roles ': Roles != null ? List<dynamic>.from(Roles.map((x) => x.toJson())):[],'PositionDepartmentMappings ': PositionDepartmentMappings != null ? List<dynamic>.from(PositionDepartmentMappings.map((x) => x.toJson())):[],'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Contact extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String Email;
  // ignore: non_constant_identifier_names
  String Tel;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String Content;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Note;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  bool Archived;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  String ID;
  Contact();
  // ignore: non_constant_identifier_names
  Contact.setProperty({this.Total,this.Email,this.Tel,this.Title,this.Content,this.Name,this.Note,this.NationalCode,this.Archived,this.CreationDate,this.ID});
  @override
  Contact.fromJson(Map<String, dynamic> json):Total = json['Total'],Email = json['Email'],Tel = json['Tel'],Title = json['Title'],Content = json['Content'],Name = json['Name'],Note = json['Note'],NationalCode = json['NationalCode'],Archived = json['Archived'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'Email' : Email,'Tel' : Tel,'Title' : Title,'Content' : Content,'Name' : Name,'Note' : Note,'NationalCode' : NationalCode,'Archived' : Archived,'CreationDate' : CreationDate.toString(),'ID' : ID};
}
class FAQ extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String FAQGroupID;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String Question;
  // ignore: non_constant_identifier_names
  String Answer;
  // ignore: non_constant_identifier_names
  String CreatorID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  String ID;
  FAQ();
  // ignore: non_constant_identifier_names
  FAQ.setProperty({this.Total,this.FAQGroupID,this.ApplicationID,this.Title,this.Question,this.Answer,this.CreatorID,this.CreationDate,this.ID});
  @override
  FAQ.fromJson(Map<String, dynamic> json):Total = json['Total'],FAQGroupID = json['FAQGroupID'],ApplicationID = json['ApplicationID'],Title = json['Title'],Question = json['Question'],Answer = json['Answer'],CreatorID = json['CreatorID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'FAQGroupID' : FAQGroupID,'ApplicationID' : ApplicationID,'Title' : Title,'Question' : Question,'Answer' : Answer,'CreatorID' : CreatorID,'CreationDate' : CreationDate.toString(),'ID' : ID};
}
class MessageReceiver extends Model{
  // ignore: non_constant_identifier_names
  String MessageID;
  // ignore: non_constant_identifier_names
  String ReceiverUserID;
  // ignore: non_constant_identifier_names
  String ReceiverUserFullName;
  // ignore: non_constant_identifier_names
  String ReceiverPositionID;
  // ignore: non_constant_identifier_names
  int ReceiverPositionType;
  // ignore: non_constant_identifier_names
  bool IsRemoved;
  // ignore: non_constant_identifier_names
  bool Seen;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  MessageReceiver();
  // ignore: non_constant_identifier_names
  MessageReceiver.setProperty({this.MessageID,this.ReceiverUserID,this.ReceiverUserFullName,this.ReceiverPositionID,this.ReceiverPositionType,this.IsRemoved,this.Seen,this.ID,this.CreationDate});
  @override
  MessageReceiver.fromJson(Map<String, dynamic> json):MessageID = json['MessageID'],ReceiverUserID = json['ReceiverUserID'],ReceiverUserFullName = json['ReceiverUserFullName'],ReceiverPositionID = json['ReceiverPositionID'],ReceiverPositionType = json['ReceiverPositionType'],IsRemoved = json['IsRemoved'],Seen = json['Seen'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'MessageID' : MessageID,'ReceiverUserID' : ReceiverUserID,'ReceiverUserFullName' : ReceiverUserFullName,'ReceiverPositionID' : ReceiverPositionID,'ReceiverPositionType' : ReceiverPositionType,'IsRemoved' : IsRemoved,'Seen' : Seen,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class RefreshToken extends Model{
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  DateTime IssuedDate;
  // ignore: non_constant_identifier_names
  DateTime ExpireDate;
  // ignore: non_constant_identifier_names
  String ProtectedTicket;
  // ignore: non_constant_identifier_names
  bool Expired;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  RefreshToken();
  // ignore: non_constant_identifier_names
  RefreshToken.setProperty({this.UserID,this.IssuedDate,this.ExpireDate,this.ProtectedTicket,this.Expired,this.ID,this.CreationDate});
  @override
  RefreshToken.fromJson(Map<String, dynamic> json):UserID = json['UserID'],IssuedDate = AppDateTime.stringToDateTime(json['IssuedDate']),ExpireDate = AppDateTime.stringToDateTime(json['ExpireDate']),ProtectedTicket = json['ProtectedTicket'],Expired = json['Expired'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'UserID' : UserID,'IssuedDate' : IssuedDate.toString(),'ExpireDate' : ExpireDate.toString(),'ProtectedTicket' : ProtectedTicket,'Expired' : Expired,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Captcha extends Model{
  // ignore: non_constant_identifier_names
  String Text;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Captcha();
  // ignore: non_constant_identifier_names
  Captcha.setProperty({this.Text,this.Type,this.ID,this.CreationDate});
  @override
  Captcha.fromJson(Map<String, dynamic> json):Text = json['Text'],Type = json['Type'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Text' : Text,'Type' : Type,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Role extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  List<Command> Permissions;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Role();
  // ignore: non_constant_identifier_names
  Role.setProperty({this.Total,this.ApplicationID,this.Name,this.Permissions,this.ID,this.CreationDate});
  @override
  Role.fromJson(Map<String, dynamic> json):Total = json['Total'],ApplicationID = json['ApplicationID'],Name = json['Name'],Permissions = json['Permissions'] != null ?List<Command>.from(json['Permissions'].map((x) => Command.fromJson(x))):[],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'ApplicationID' : ApplicationID,'Name' : Name,'Permissions ': Permissions != null ? List<dynamic>.from(Permissions.map((x) => x.toJson())):[],'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class EmailSecurityStamp extends Model{
  // ignore: non_constant_identifier_names
  String Email;
  // ignore: non_constant_identifier_names
  String Stamp;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  EmailSecurityStamp();
  // ignore: non_constant_identifier_names
  EmailSecurityStamp.setProperty({this.Email,this.Stamp,this.ID,this.CreationDate});
  @override
  EmailSecurityStamp.fromJson(Map<String, dynamic> json):Email = json['Email'],Stamp = json['Stamp'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Email' : Email,'Stamp' : Stamp,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class SmsSecurityStamp extends Model{
  // ignore: non_constant_identifier_names
  String CellPhone;
  // ignore: non_constant_identifier_names
  String Stamp;
  // ignore: non_constant_identifier_names
  int UsageType;
  // ignore: non_constant_identifier_names
  int UsedCount;
  // ignore: non_constant_identifier_names
  String UserName;
  // ignore: non_constant_identifier_names
  String Password;
  // ignore: non_constant_identifier_names
  bool Inforce;
  // ignore: non_constant_identifier_names
  bool Again;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  SmsSecurityStamp();
  // ignore: non_constant_identifier_names
  SmsSecurityStamp.setProperty({this.CellPhone,this.Stamp,this.UsageType,this.UsedCount,this.UserName,this.Password,this.Inforce,this.Again,this.ID,this.CreationDate});
  @override
  SmsSecurityStamp.fromJson(Map<String, dynamic> json):CellPhone = json['CellPhone'],Stamp = json['Stamp'],UsageType = json['UsageType'],UsedCount = json['UsedCount'],UserName = json['UserName'],Password = json['Password'],Inforce = json['Inforce'],Again = json['Again'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'CellPhone' : CellPhone,'Stamp' : Stamp,'UsageType' : UsageType,'UsedCount' : UsedCount,'UserName' : UserName,'Password' : Password,'Inforce' : Inforce,'Again' : Again,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class WebServiceUser extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String UserName;
  // ignore: non_constant_identifier_names
  String Password;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  bool Enabled;
  // ignore: non_constant_identifier_names
  DateTime PasswordExpireDate;
  // ignore: non_constant_identifier_names
  String Comment;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  WebServiceUser();
  // ignore: non_constant_identifier_names
  WebServiceUser.setProperty({this.Total,this.UserName,this.Password,this.OrganID,this.OrganName,this.Enabled,this.PasswordExpireDate,this.Comment,this.ID,this.CreationDate});
  @override
  WebServiceUser.fromJson(Map<String, dynamic> json):Total = json['Total'],UserName = json['UserName'],Password = json['Password'],OrganID = json['OrganID'],OrganName = json['OrganName'],Enabled = json['Enabled'],PasswordExpireDate = AppDateTime.stringToDateTime(json['PasswordExpireDate']),Comment = json['Comment'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Total' : Total,'UserName' : UserName,'Password' : Password,'OrganID' : OrganID,'OrganName' : OrganName,'Enabled' : Enabled,'PasswordExpireDate' : PasswordExpireDate.toString(),'Comment' : Comment,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class User extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  bool Enabled;
  // ignore: non_constant_identifier_names
  String Username;
  // ignore: non_constant_identifier_names
  String Password;
  // ignore: non_constant_identifier_names
  DateTime PasswordExpireDate;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String Email;
  // ignore: non_constant_identifier_names
  bool EmailVerified;
  // ignore: non_constant_identifier_names
  String CellPhone;
  // ignore: non_constant_identifier_names
  bool CellPhoneVerified;
  // ignore: non_constant_identifier_names
  bool TwoStepVerification;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  User();
  // ignore: non_constant_identifier_names
  User.setProperty({this.Name,this.Total,this.Enabled,this.Username,this.Password,this.PasswordExpireDate,this.Type,this.FirstName,this.LastName,this.NationalCode,this.Email,this.EmailVerified,this.CellPhone,this.CellPhoneVerified,this.TwoStepVerification,this.DepartmentName,this.ID,this.CreationDate});
  @override
  User.fromJson(Map<String, dynamic> json):Name = json['Name'],Total = json['Total'],Enabled = json['Enabled'],Username = json['Username'],Password = json['Password'],PasswordExpireDate = AppDateTime.stringToDateTime(json['PasswordExpireDate']),Type = json['Type'],FirstName = json['FirstName'],LastName = json['LastName'],NationalCode = json['NationalCode'],Email = json['Email'],EmailVerified = json['EmailVerified'],CellPhone = json['CellPhone'],CellPhoneVerified = json['CellPhoneVerified'],TwoStepVerification = json['TwoStepVerification'],DepartmentName = json['DepartmentName'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Name' : Name,'Total' : Total,'Enabled' : Enabled,'Username' : Username,'Password' : Password,'PasswordExpireDate' : PasswordExpireDate.toString(),'Type' : Type,'FirstName' : FirstName,'LastName' : LastName,'NationalCode' : NationalCode,'Email' : Email,'EmailVerified' : EmailVerified,'CellPhone' : CellPhone,'CellPhoneVerified' : CellPhoneVerified,'TwoStepVerification' : TwoStepVerification,'DepartmentName' : DepartmentName,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class UserModifyValidation extends Model{
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String Username;
  // ignore: non_constant_identifier_names
  String CellPhone;
  // ignore: non_constant_identifier_names
  String Email;
  // ignore: non_constant_identifier_names
  bool IsNationalCodeRepeated;
  // ignore: non_constant_identifier_names
  bool IsUserNameRepeated;
  // ignore: non_constant_identifier_names
  bool IsEmailRepeated;
  // ignore: non_constant_identifier_names
  bool IsCellphoneRepeated;
  // ignore: non_constant_identifier_names
  bool IsCellPhoneChanged;
  // ignore: non_constant_identifier_names
  bool IsEmailChanged;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  UserModifyValidation();
  // ignore: non_constant_identifier_names
  UserModifyValidation.setProperty({this.NationalCode,this.Username,this.CellPhone,this.Email,this.IsNationalCodeRepeated,this.IsUserNameRepeated,this.IsEmailRepeated,this.IsCellphoneRepeated,this.IsCellPhoneChanged,this.IsEmailChanged,this.ID,this.CreationDate});
  @override
  UserModifyValidation.fromJson(Map<String, dynamic> json):NationalCode = json['NationalCode'],Username = json['Username'],CellPhone = json['CellPhone'],Email = json['Email'],IsNationalCodeRepeated = json['IsNationalCodeRepeated'],IsUserNameRepeated = json['IsUserNameRepeated'],IsEmailRepeated = json['IsEmailRepeated'],IsCellphoneRepeated = json['IsCellphoneRepeated'],IsCellPhoneChanged = json['IsCellPhoneChanged'],IsEmailChanged = json['IsEmailChanged'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'NationalCode' : NationalCode,'Username' : Username,'CellPhone' : CellPhone,'Email' : Email,'IsNationalCodeRepeated' : IsNationalCodeRepeated,'IsUserNameRepeated' : IsUserNameRepeated,'IsEmailRepeated' : IsEmailRepeated,'IsCellphoneRepeated' : IsCellphoneRepeated,'IsCellPhoneChanged' : IsCellPhoneChanged,'IsEmailChanged' : IsEmailChanged,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class UserSetting extends Model{
  // ignore: non_constant_identifier_names
  String Setting;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  UserSetting();
  // ignore: non_constant_identifier_names
  UserSetting.setProperty({this.Setting,this.ID,this.CreationDate});
  @override
  UserSetting.fromJson(Map<String, dynamic> json):Setting = json['Setting'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Setting' : Setting,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class Sso extends Model{
  // ignore: non_constant_identifier_names
  String Url;
  // ignore: non_constant_identifier_names
  String Key;
  // ignore: non_constant_identifier_names
  String Hash;
  // ignore: non_constant_identifier_names
  String Token;
  // ignore: non_constant_identifier_names
  String AppName;
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String UserHash;
  // ignore: non_constant_identifier_names
  String CallBack;
  // ignore: non_constant_identifier_names
  bool SmsLogin;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  Sso();
  // ignore: non_constant_identifier_names
  Sso.setProperty({this.Url,this.Key,this.Hash,this.Token,this.AppName,this.UserID,this.UserHash,this.CallBack,this.SmsLogin,this.ID,this.CreationDate});
  @override
  Sso.fromJson(Map<String, dynamic> json):Url = json['Url'],Key = json['Key'],Hash = json['Hash'],Token = json['Token'],AppName = json['AppName'],UserID = json['UserID'],UserHash = json['UserHash'],CallBack = json['CallBack'],SmsLogin = json['SmsLogin'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'Url' : Url,'Key' : Key,'Hash' : Hash,'Token' : Token,'AppName' : AppName,'UserID' : UserID,'UserHash' : UserHash,'CallBack' : CallBack,'SmsLogin' : SmsLogin,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class DepartmentWebServiceVM extends Model{
  // ignore: non_constant_identifier_names
  String ParentID;
  // ignore: non_constant_identifier_names
  String Node;
  // ignore: non_constant_identifier_names
  String BudgetCode;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  bool Enabled;
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  DepartmentWebServiceVM();
  // ignore: non_constant_identifier_names
  DepartmentWebServiceVM.setProperty({this.ParentID,this.Node,this.BudgetCode,this.Type,this.Code,this.Name,this.Enabled,this.ID,this.CreationDate});
  @override
  DepartmentWebServiceVM.fromJson(Map<String, dynamic> json):ParentID = json['ParentID'],Node = json['Node'],BudgetCode = json['BudgetCode'],Type = json['Type'],Code = json['Code'],Name = json['Name'],Enabled = json['Enabled'],ID = json['ID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']);
  Map<String, dynamic> toJson() =>{'ParentID' : ParentID,'Node' : Node,'BudgetCode' : BudgetCode,'Type' : Type,'Code' : Code,'Name' : Name,'Enabled' : Enabled,'ID' : ID,'CreationDate' : CreationDate.toString()};
}
class ActivityLog extends Model{
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  String ControllerName;
  // ignore: non_constant_identifier_names
  String ActionName;
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String UserName;
  // ignore: non_constant_identifier_names
  String PositionID;
  // ignore: non_constant_identifier_names
  String UserFullName;
  // ignore: non_constant_identifier_names
  int PositionType;
  // ignore: non_constant_identifier_names
  int UserType;
  // ignore: non_constant_identifier_names
  String UserIP;
  // ignore: non_constant_identifier_names
  String CreationTime;
  // ignore: non_constant_identifier_names
  String Time;
  // ignore: non_constant_identifier_names
  String ControllerTitle;
  // ignore: non_constant_identifier_names
  String ActionTitle;
  // ignore: non_constant_identifier_names
  int Duration;
  // ignore: non_constant_identifier_names
  DateTime StartDate;
  // ignore: non_constant_identifier_names
  DateTime EndDate;
  // ignore: non_constant_identifier_names
  int OS;
  // ignore: non_constant_identifier_names
  String OSVersion;
  // ignore: non_constant_identifier_names
  String OsTitle;
  // ignore: non_constant_identifier_names
  String BrowserTitle;
  // ignore: non_constant_identifier_names
  int Browser;
  // ignore: non_constant_identifier_names
  String BrowserVersion;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  bool Success;
  // ignore: non_constant_identifier_names
  int DeviceType;
  // ignore: non_constant_identifier_names
  String ObjectID;
  // ignore: non_constant_identifier_names
  String Object;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String SourceApplicationID;
  // ignore: non_constant_identifier_names
  String ControllerApplicationID;
  // ignore: non_constant_identifier_names
  String ID;
  ActivityLog();
  // ignore: non_constant_identifier_names
  ActivityLog.setProperty({this.CreationDate,this.ControllerName,this.ActionName,this.UserID,this.UserName,this.PositionID,this.UserFullName,this.PositionType,this.UserType,this.UserIP,this.CreationTime,this.Time,this.ControllerTitle,this.ActionTitle,this.Duration,this.StartDate,this.EndDate,this.OS,this.OSVersion,this.OsTitle,this.BrowserTitle,this.Browser,this.BrowserVersion,this.DepartmentName,this.Success,this.DeviceType,this.ObjectID,this.Object,this.Total,this.SourceApplicationID,this.ControllerApplicationID,this.ID});
  @override
  ActivityLog.fromJson(Map<String, dynamic> json):CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),ControllerName = json['ControllerName'],ActionName = json['ActionName'],UserID = json['UserID'],UserName = json['UserName'],PositionID = json['PositionID'],UserFullName = json['UserFullName'],PositionType = json['PositionType'],UserType = json['UserType'],UserIP = json['UserIP'],CreationTime = json['CreationTime'],Time = json['Time'],ControllerTitle = json['ControllerTitle'],ActionTitle = json['ActionTitle'],Duration = json['Duration'],StartDate = AppDateTime.stringToDateTime(json['StartDate']),EndDate = AppDateTime.stringToDateTime(json['EndDate']),OS = json['OS'],OSVersion = json['OSVersion'],OsTitle = json['OsTitle'],BrowserTitle = json['BrowserTitle'],Browser = json['Browser'],BrowserVersion = json['BrowserVersion'],DepartmentName = json['DepartmentName'],Success = json['Success'],DeviceType = json['DeviceType'],ObjectID = json['ObjectID'],Object = json['Object'],Total = json['Total'],SourceApplicationID = json['SourceApplicationID'],ControllerApplicationID = json['ControllerApplicationID'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'CreationDate' : CreationDate.toString(),'ControllerName' : ControllerName,'ActionName' : ActionName,'UserID' : UserID,'UserName' : UserName,'PositionID' : PositionID,'UserFullName' : UserFullName,'PositionType' : PositionType,'UserType' : UserType,'UserIP' : UserIP,'CreationTime' : CreationTime,'Time' : Time,'ControllerTitle' : ControllerTitle,'ActionTitle' : ActionTitle,'Duration' : Duration,'StartDate' : StartDate.toString(),'EndDate' : EndDate.toString(),'OS' : OS,'OSVersion' : OSVersion,'OsTitle' : OsTitle,'BrowserTitle' : BrowserTitle,'Browser' : Browser,'BrowserVersion' : BrowserVersion,'DepartmentName' : DepartmentName,'Success' : Success,'DeviceType' : DeviceType,'ObjectID' : ObjectID,'Object' : Object,'Total' : Total,'SourceApplicationID' : SourceApplicationID,'ControllerApplicationID' : ControllerApplicationID,'ID' : ID};
}
class ActionListVM extends Model{
  // ignore: non_constant_identifier_names
  String ControllerID;
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String ActionID;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  int ControllerType;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ActionListVM();
  // ignore: non_constant_identifier_names
  ActionListVM.setProperty({this.ControllerID,this.UserID,this.ActionID,this.Name,this.Title,this.ControllerType,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  ActionListVM.fromJson(Map<String, dynamic> json):ControllerID = json['ControllerID'],UserID = json['UserID'],ActionID = json['ActionID'],Name = json['Name'],Title = json['Title'],ControllerType = json['ControllerType'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ControllerID' : ControllerID,'UserID' : UserID,'ActionID' : ActionID,'Name' : Name,'Title' : Title,'ControllerType' : ControllerType,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class ControllerVM extends Model{
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ControllerVM();
  // ignore: non_constant_identifier_names
  ControllerVM.setProperty({this.Type,this.Name,this.Title,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  ControllerVM.fromJson(Map<String, dynamic> json):Type = json['Type'],Name = json['Name'],Title = json['Title'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Type' : Type,'Name' : Name,'Title' : Title,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class ApplicationSurveyQuestionChoiceListVM extends Model{
  // ignore: non_constant_identifier_names
  String QuestionID;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String QuestionName;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ApplicationSurveyQuestionChoiceListVM();
  // ignore: non_constant_identifier_names
  ApplicationSurveyQuestionChoiceListVM.setProperty({this.QuestionID,this.Name,this.QuestionName,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  ApplicationSurveyQuestionChoiceListVM.fromJson(Map<String, dynamic> json):QuestionID = json['QuestionID'],Name = json['Name'],QuestionName = json['QuestionName'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'QuestionID' : QuestionID,'Name' : Name,'QuestionName' : QuestionName,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class ApplicationSurveyParticipantListVM extends Model{
  // ignore: non_constant_identifier_names
  String SurveyID;
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  DateTime Date;
  // ignore: non_constant_identifier_names
  String FullName;
  // ignore: non_constant_identifier_names
  String SurveyName;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ApplicationSurveyParticipantListVM();
  // ignore: non_constant_identifier_names
  ApplicationSurveyParticipantListVM.setProperty({this.SurveyID,this.UserID,this.Date,this.FullName,this.SurveyName,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  ApplicationSurveyParticipantListVM.fromJson(Map<String, dynamic> json):SurveyID = json['SurveyID'],UserID = json['UserID'],Date = AppDateTime.stringToDateTime(json['Date']),FullName = json['FullName'],SurveyName = json['SurveyName'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'SurveyID' : SurveyID,'UserID' : UserID,'Date' : Date.toString(),'FullName' : FullName,'SurveyName' : SurveyName,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class ApplicationSurveyAnswerListVM extends Model{
  // ignore: non_constant_identifier_names
  String ParticipantID;
  // ignore: non_constant_identifier_names
  String QuestionID;
  // ignore: non_constant_identifier_names
  String ChoiceID;
  // ignore: non_constant_identifier_names
  String Text;
  // ignore: non_constant_identifier_names
  String FullName;
  // ignore: non_constant_identifier_names
  String SurveyName;
  // ignore: non_constant_identifier_names
  String ChoiceTitle;
  // ignore: non_constant_identifier_names
  bool Agree;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ApplicationSurveyAnswerListVM();
  // ignore: non_constant_identifier_names
  ApplicationSurveyAnswerListVM.setProperty({this.ParticipantID,this.QuestionID,this.ChoiceID,this.Text,this.FullName,this.SurveyName,this.ChoiceTitle,this.Agree,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  ApplicationSurveyAnswerListVM.fromJson(Map<String, dynamic> json):ParticipantID = json['ParticipantID'],QuestionID = json['QuestionID'],ChoiceID = json['ChoiceID'],Text = json['Text'],FullName = json['FullName'],SurveyName = json['SurveyName'],ChoiceTitle = json['ChoiceTitle'],Agree = json['Agree'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ParticipantID' : ParticipantID,'QuestionID' : QuestionID,'ChoiceID' : ChoiceID,'Text' : Text,'FullName' : FullName,'SurveyName' : SurveyName,'ChoiceTitle' : ChoiceTitle,'Agree' : Agree,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class ApplicationSurveyQuestionListVM extends Model{
  // ignore: non_constant_identifier_names
  String GroupID;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ApplicationSurveyQuestionListVM();
  // ignore: non_constant_identifier_names
  ApplicationSurveyQuestionListVM.setProperty({this.GroupID,this.Name,this.Type,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  ApplicationSurveyQuestionListVM.fromJson(Map<String, dynamic> json):GroupID = json['GroupID'],Name = json['Name'],Type = json['Type'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'GroupID' : GroupID,'Name' : Name,'Type' : Type,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class ApplicationSurveyGroupListVM extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ApplicationSurveyID;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ApplicationSurveyGroupListVM();
  // ignore: non_constant_identifier_names
  ApplicationSurveyGroupListVM.setProperty({this.Total,this.ApplicationSurveyID,this.Name,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  ApplicationSurveyGroupListVM.fromJson(Map<String, dynamic> json):Total = json['Total'],ApplicationSurveyID = json['ApplicationSurveyID'],Name = json['Name'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'ApplicationSurveyID' : ApplicationSurveyID,'Name' : Name,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class ApplicationSurveyListVM extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ApplicationSurveyListVM();
  // ignore: non_constant_identifier_names
  ApplicationSurveyListVM.setProperty({this.Name,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  ApplicationSurveyListVM.fromJson(Map<String, dynamic> json):Name = json['Name'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Name' : Name,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class HelpSectionGroupListVM extends Model{
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  int Order;
  // ignore: non_constant_identifier_names
  String Description;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  HelpSectionGroupListVM();
  // ignore: non_constant_identifier_names
  HelpSectionGroupListVM.setProperty({this.Title,this.Order,this.Description,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  HelpSectionGroupListVM.fromJson(Map<String, dynamic> json):Title = json['Title'],Order = json['Order'],Description = json['Description'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Title' : Title,'Order' : Order,'Description' : Description,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class HelpSectionListVM extends Model{
  // ignore: non_constant_identifier_names
  String HelpSectionGroupID;
  // ignore: non_constant_identifier_names
  int Order;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String Description;
  // ignore: non_constant_identifier_names
  int FileType;
  // ignore: non_constant_identifier_names
  String FileName;
  // ignore: non_constant_identifier_names
  int IsActive;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  HelpSectionListVM();
  // ignore: non_constant_identifier_names
  HelpSectionListVM.setProperty({this.HelpSectionGroupID,this.Order,this.Title,this.Description,this.FileType,this.FileName,this.IsActive,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  HelpSectionListVM.fromJson(Map<String, dynamic> json):HelpSectionGroupID = json['HelpSectionGroupID'],Order = json['Order'],Title = json['Title'],Description = json['Description'],FileType = json['FileType'],FileName = json['FileName'],IsActive = json['IsActive'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'HelpSectionGroupID' : HelpSectionGroupID,'Order' : Order,'Title' : Title,'Description' : Description,'FileType' : FileType,'FileName' : FileName,'IsActive' : IsActive,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class DraftMessageListVM extends Model{
  // ignore: non_constant_identifier_names
  String ReceiverUserID;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String Content;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DraftMessageListVM();
  // ignore: non_constant_identifier_names
  DraftMessageListVM.setProperty({this.ReceiverUserID,this.Title,this.Content,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  DraftMessageListVM.fromJson(Map<String, dynamic> json):ReceiverUserID = json['ReceiverUserID'],Title = json['Title'],Content = json['Content'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ReceiverUserID' : ReceiverUserID,'Title' : Title,'Content' : Content,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class OutboxMessageListVM extends Model{
  // ignore: non_constant_identifier_names
  String ReceiverUserID;
  // ignore: non_constant_identifier_names
  String ReceiverUserFullName;
  // ignore: non_constant_identifier_names
  String ReceiverPositionID;
  // ignore: non_constant_identifier_names
  int ReceiverPositionType;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String Content;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  OutboxMessageListVM();
  // ignore: non_constant_identifier_names
  OutboxMessageListVM.setProperty({this.ReceiverUserID,this.ReceiverUserFullName,this.ReceiverPositionID,this.ReceiverPositionType,this.Title,this.Content,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  OutboxMessageListVM.fromJson(Map<String, dynamic> json):ReceiverUserID = json['ReceiverUserID'],ReceiverUserFullName = json['ReceiverUserFullName'],ReceiverPositionID = json['ReceiverPositionID'],ReceiverPositionType = json['ReceiverPositionType'],Title = json['Title'],Content = json['Content'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ReceiverUserID' : ReceiverUserID,'ReceiverUserFullName' : ReceiverUserFullName,'ReceiverPositionID' : ReceiverPositionID,'ReceiverPositionType' : ReceiverPositionType,'Title' : Title,'Content' : Content,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class InboxMessageListVM extends Model{
  // ignore: non_constant_identifier_names
  String SenderUserID;
  // ignore: non_constant_identifier_names
  String SenderPositionID;
  // ignore: non_constant_identifier_names
  int SenderPositionType;
  // ignore: non_constant_identifier_names
  String SenderUserFullName;
  // ignore: non_constant_identifier_names
  String SenderDepartmentName;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String Content;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  bool Seen;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  InboxMessageListVM();
  // ignore: non_constant_identifier_names
  InboxMessageListVM.setProperty({this.SenderUserID,this.SenderPositionID,this.SenderPositionType,this.SenderUserFullName,this.SenderDepartmentName,this.Title,this.Content,this.DepartmentID,this.Seen,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  InboxMessageListVM.fromJson(Map<String, dynamic> json):SenderUserID = json['SenderUserID'],SenderPositionID = json['SenderPositionID'],SenderPositionType = json['SenderPositionType'],SenderUserFullName = json['SenderUserFullName'],SenderDepartmentName = json['SenderDepartmentName'],Title = json['Title'],Content = json['Content'],DepartmentID = json['DepartmentID'],Seen = json['Seen'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'SenderUserID' : SenderUserID,'SenderPositionID' : SenderPositionID,'SenderPositionType' : SenderPositionType,'SenderUserFullName' : SenderUserFullName,'SenderDepartmentName' : SenderDepartmentName,'Title' : Title,'Content' : Content,'DepartmentID' : DepartmentID,'Seen' : Seen,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class NotificationConditionsListVM extends Model{
  // ignore: non_constant_identifier_names
  String NotificationID;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  String ProvinceID;
  // ignore: non_constant_identifier_names
  String ProvinceName;
  // ignore: non_constant_identifier_names
  int PositionType;
  // ignore: non_constant_identifier_names
  String FullName;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  NotificationConditionsListVM();
  // ignore: non_constant_identifier_names
  NotificationConditionsListVM.setProperty({this.NotificationID,this.DepartmentID,this.DepartmentName,this.ProvinceID,this.ProvinceName,this.PositionType,this.FullName,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  NotificationConditionsListVM.fromJson(Map<String, dynamic> json):NotificationID = json['NotificationID'],DepartmentID = json['DepartmentID'],DepartmentName = json['DepartmentName'],ProvinceID = json['ProvinceID'],ProvinceName = json['ProvinceName'],PositionType = json['PositionType'],FullName = json['FullName'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'NotificationID' : NotificationID,'DepartmentID' : DepartmentID,'DepartmentName' : DepartmentName,'ProvinceID' : ProvinceID,'ProvinceName' : ProvinceName,'PositionType' : PositionType,'FullName' : FullName,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class NotificationPositionsListVM extends Model{
  // ignore: non_constant_identifier_names
  String NotificationID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  NotificationPositionsListVM();
  // ignore: non_constant_identifier_names
  NotificationPositionsListVM.setProperty({this.NotificationID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  NotificationPositionsListVM.fromJson(Map<String, dynamic> json):NotificationID = json['NotificationID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'NotificationID' : NotificationID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class NotificationsListVM extends Model{
  // ignore: non_constant_identifier_names
  int SenderType;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String Content;
  // ignore: non_constant_identifier_names
  int Priority;
  // ignore: non_constant_identifier_names
  int State;
  // ignore: non_constant_identifier_names
  DateTime CreationDateFrom;
  // ignore: non_constant_identifier_names
  DateTime CreationDateTo;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  NotificationsListVM();
  // ignore: non_constant_identifier_names
  NotificationsListVM.setProperty({this.SenderType,this.Title,this.Content,this.Priority,this.State,this.CreationDateFrom,this.CreationDateTo,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  NotificationsListVM.fromJson(Map<String, dynamic> json):SenderType = json['SenderType'],Title = json['Title'],Content = json['Content'],Priority = json['Priority'],State = json['State'],CreationDateFrom = AppDateTime.stringToDateTime(json['CreationDateFrom']),CreationDateTo = AppDateTime.stringToDateTime(json['CreationDateTo']),PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'SenderType' : SenderType,'Title' : Title,'Content' : Content,'Priority' : Priority,'State' : State,'CreationDateFrom' : CreationDateFrom.toString(),'CreationDateTo' : CreationDateTo.toString(),'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class TicketForCallCenterListVM extends Model{
  // ignore: non_constant_identifier_names
  String SubjectID;
  // ignore: non_constant_identifier_names
  String TrackingCode;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  int Score;
  // ignore: non_constant_identifier_names
  DateTime ReadDate;
  // ignore: non_constant_identifier_names
  String CreatorPositionID;
  // ignore: non_constant_identifier_names
  String OwnerID;
  // ignore: non_constant_identifier_names
  String OwnerPositionID;
  // ignore: non_constant_identifier_names
  int State;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String SubjectTitle;
  // ignore: non_constant_identifier_names
  String OwnerFullName;
  // ignore: non_constant_identifier_names
  int Priority;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  int TicketAnswerState;
  // ignore: non_constant_identifier_names
  DateTime CloseDate;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  TicketForCallCenterListVM();
  // ignore: non_constant_identifier_names
  TicketForCallCenterListVM.setProperty({this.SubjectID,this.TrackingCode,this.DepartmentID,this.DepartmentName,this.Score,this.ReadDate,this.CreatorPositionID,this.OwnerID,this.OwnerPositionID,this.State,this.Title,this.SubjectTitle,this.OwnerFullName,this.Priority,this.CreationDate,this.TicketAnswerState,this.CloseDate,this.ApplicationID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  TicketForCallCenterListVM.fromJson(Map<String, dynamic> json):SubjectID = json['SubjectID'],TrackingCode = json['TrackingCode'],DepartmentID = json['DepartmentID'],DepartmentName = json['DepartmentName'],Score = json['Score'],ReadDate = AppDateTime.stringToDateTime(json['ReadDate']),CreatorPositionID = json['CreatorPositionID'],OwnerID = json['OwnerID'],OwnerPositionID = json['OwnerPositionID'],State = json['State'],Title = json['Title'],SubjectTitle = json['SubjectTitle'],OwnerFullName = json['OwnerFullName'],Priority = json['Priority'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),TicketAnswerState = json['TicketAnswerState'],CloseDate = AppDateTime.stringToDateTime(json['CloseDate']),ApplicationID = json['ApplicationID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'SubjectID' : SubjectID,'TrackingCode' : TrackingCode,'DepartmentID' : DepartmentID,'DepartmentName' : DepartmentName,'Score' : Score,'ReadDate' : ReadDate.toString(),'CreatorPositionID' : CreatorPositionID,'OwnerID' : OwnerID,'OwnerPositionID' : OwnerPositionID,'State' : State,'Title' : Title,'SubjectTitle' : SubjectTitle,'OwnerFullName' : OwnerFullName,'Priority' : Priority,'CreationDate' : CreationDate.toString(),'TicketAnswerState' : TicketAnswerState,'CloseDate' : CloseDate.toString(),'ApplicationID' : ApplicationID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class TicketReportAllListVM extends Model{
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String SubjectID;
  // ignore: non_constant_identifier_names
  String TrackingCode;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  int State;
  // ignore: non_constant_identifier_names
  int Score;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  int Priority;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  DateTime CreationDateFrom;
  // ignore: non_constant_identifier_names
  DateTime CreationDateTo;
  // ignore: non_constant_identifier_names
  int CreationTicketType;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  TicketReportAllListVM();
  // ignore: non_constant_identifier_names
  TicketReportAllListVM.setProperty({this.ApplicationID,this.SubjectID,this.TrackingCode,this.DepartmentID,this.State,this.Score,this.Title,this.Priority,this.CreationDate,this.CreationDateFrom,this.CreationDateTo,this.CreationTicketType,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  TicketReportAllListVM.fromJson(Map<String, dynamic> json):ApplicationID = json['ApplicationID'],SubjectID = json['SubjectID'],TrackingCode = json['TrackingCode'],DepartmentID = json['DepartmentID'],State = json['State'],Score = json['Score'],Title = json['Title'],Priority = json['Priority'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),CreationDateFrom = AppDateTime.stringToDateTime(json['CreationDateFrom']),CreationDateTo = AppDateTime.stringToDateTime(json['CreationDateTo']),CreationTicketType = json['CreationTicketType'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ApplicationID' : ApplicationID,'SubjectID' : SubjectID,'TrackingCode' : TrackingCode,'DepartmentID' : DepartmentID,'State' : State,'Score' : Score,'Title' : Title,'Priority' : Priority,'CreationDate' : CreationDate.toString(),'CreationDateFrom' : CreationDateFrom.toString(),'CreationDateTo' : CreationDateTo.toString(),'CreationTicketType' : CreationTicketType,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class TicketReportListVM extends Model{
  // ignore: non_constant_identifier_names
  String SubjectID;
  // ignore: non_constant_identifier_names
  String TrackingCode;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String SubjectUserID;
  // ignore: non_constant_identifier_names
  int State;
  // ignore: non_constant_identifier_names
  int Score;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  int Priority;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String OwnerID;
  // ignore: non_constant_identifier_names
  DateTime CreationDateFrom;
  // ignore: non_constant_identifier_names
  DateTime CreationDateTo;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  TicketReportListVM();
  // ignore: non_constant_identifier_names
  TicketReportListVM.setProperty({this.SubjectID,this.TrackingCode,this.DepartmentID,this.SubjectUserID,this.State,this.Score,this.Title,this.Priority,this.CreationDate,this.ApplicationID,this.OwnerID,this.CreationDateFrom,this.CreationDateTo,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  TicketReportListVM.fromJson(Map<String, dynamic> json):SubjectID = json['SubjectID'],TrackingCode = json['TrackingCode'],DepartmentID = json['DepartmentID'],SubjectUserID = json['SubjectUserID'],State = json['State'],Score = json['Score'],Title = json['Title'],Priority = json['Priority'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),ApplicationID = json['ApplicationID'],OwnerID = json['OwnerID'],CreationDateFrom = AppDateTime.stringToDateTime(json['CreationDateFrom']),CreationDateTo = AppDateTime.stringToDateTime(json['CreationDateTo']),PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'SubjectID' : SubjectID,'TrackingCode' : TrackingCode,'DepartmentID' : DepartmentID,'SubjectUserID' : SubjectUserID,'State' : State,'Score' : Score,'Title' : Title,'Priority' : Priority,'CreationDate' : CreationDate.toString(),'ApplicationID' : ApplicationID,'OwnerID' : OwnerID,'CreationDateFrom' : CreationDateFrom.toString(),'CreationDateTo' : CreationDateTo.toString(),'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class TicketListVM extends Model{
  // ignore: non_constant_identifier_names
  String SubjectID;
  // ignore: non_constant_identifier_names
  String TrackingCode;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  int Score;
  // ignore: non_constant_identifier_names
  DateTime ReadDate;
  // ignore: non_constant_identifier_names
  String CreatorPositionID;
  // ignore: non_constant_identifier_names
  String OwnerID;
  // ignore: non_constant_identifier_names
  String OwnerPositionID;
  // ignore: non_constant_identifier_names
  int State;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String SubjectTitle;
  // ignore: non_constant_identifier_names
  String OwnerFullName;
  // ignore: non_constant_identifier_names
  int Priority;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  int TicketAnswerState;
  // ignore: non_constant_identifier_names
  DateTime CloseDate;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  int CreationTicketType;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  TicketListVM();
  // ignore: non_constant_identifier_names
  TicketListVM.setProperty({this.SubjectID,this.TrackingCode,this.DepartmentID,this.DepartmentName,this.Score,this.ReadDate,this.CreatorPositionID,this.OwnerID,this.OwnerPositionID,this.State,this.Title,this.SubjectTitle,this.OwnerFullName,this.Priority,this.CreationDate,this.TicketAnswerState,this.CloseDate,this.ApplicationID,this.CreationTicketType,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  TicketListVM.fromJson(Map<String, dynamic> json):SubjectID = json['SubjectID'],TrackingCode = json['TrackingCode'],DepartmentID = json['DepartmentID'],DepartmentName = json['DepartmentName'],Score = json['Score'],ReadDate = AppDateTime.stringToDateTime(json['ReadDate']),CreatorPositionID = json['CreatorPositionID'],OwnerID = json['OwnerID'],OwnerPositionID = json['OwnerPositionID'],State = json['State'],Title = json['Title'],SubjectTitle = json['SubjectTitle'],OwnerFullName = json['OwnerFullName'],Priority = json['Priority'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),TicketAnswerState = json['TicketAnswerState'],CloseDate = AppDateTime.stringToDateTime(json['CloseDate']),ApplicationID = json['ApplicationID'],CreationTicketType = json['CreationTicketType'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'SubjectID' : SubjectID,'TrackingCode' : TrackingCode,'DepartmentID' : DepartmentID,'DepartmentName' : DepartmentName,'Score' : Score,'ReadDate' : ReadDate.toString(),'CreatorPositionID' : CreatorPositionID,'OwnerID' : OwnerID,'OwnerPositionID' : OwnerPositionID,'State' : State,'Title' : Title,'SubjectTitle' : SubjectTitle,'OwnerFullName' : OwnerFullName,'Priority' : Priority,'CreationDate' : CreationDate.toString(),'TicketAnswerState' : TicketAnswerState,'CloseDate' : CloseDate.toString(),'ApplicationID' : ApplicationID,'CreationTicketType' : CreationTicketType,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class TicketSequenceListVM extends Model{
  // ignore: non_constant_identifier_names
  String TicketID;
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String Content;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  DateTime ReadDate;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  TicketSequenceListVM();
  // ignore: non_constant_identifier_names
  TicketSequenceListVM.setProperty({this.TicketID,this.UserID,this.Content,this.CreationDate,this.ReadDate,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  TicketSequenceListVM.fromJson(Map<String, dynamic> json):TicketID = json['TicketID'],UserID = json['UserID'],Content = json['Content'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),ReadDate = AppDateTime.stringToDateTime(json['ReadDate']),PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'TicketID' : TicketID,'UserID' : UserID,'Content' : Content,'CreationDate' : CreationDate.toString(),'ReadDate' : ReadDate.toString(),'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class TicketSubjectListVM extends Model{
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int Enable;
  // ignore: non_constant_identifier_names
  String FAQGroupID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  TicketSubjectListVM();
  // ignore: non_constant_identifier_names
  TicketSubjectListVM.setProperty({this.ApplicationID,this.Name,this.Enable,this.FAQGroupID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  TicketSubjectListVM.fromJson(Map<String, dynamic> json):ApplicationID = json['ApplicationID'],Name = json['Name'],Enable = json['Enable'],FAQGroupID = json['FAQGroupID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ApplicationID' : ApplicationID,'Name' : Name,'Enable' : Enable,'FAQGroupID' : FAQGroupID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class TicketSubjectUserListVM extends Model{
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String TicketSubjectID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  TicketSubjectUserListVM();
  // ignore: non_constant_identifier_names
  TicketSubjectUserListVM.setProperty({this.UserID,this.TicketSubjectID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  TicketSubjectUserListVM.fromJson(Map<String, dynamic> json):UserID = json['UserID'],TicketSubjectID = json['TicketSubjectID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'UserID' : UserID,'TicketSubjectID' : TicketSubjectID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class InquiryLogListVM extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  String AddressID;
  // ignore: non_constant_identifier_names
  String PostalCode;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  DateTime StartDate;
  // ignore: non_constant_identifier_names
  DateTime EndDate;
  // ignore: non_constant_identifier_names
  int ResultType;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  InquiryLogListVM();
  // ignore: non_constant_identifier_names
  InquiryLogListVM.setProperty({this.Total,this.IndividualID,this.AddressID,this.PostalCode,this.NationalCode,this.StartDate,this.EndDate,this.ResultType,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  InquiryLogListVM.fromJson(Map<String, dynamic> json):Total = json['Total'],IndividualID = json['IndividualID'],AddressID = json['AddressID'],PostalCode = json['PostalCode'],NationalCode = json['NationalCode'],StartDate = AppDateTime.stringToDateTime(json['StartDate']),EndDate = AppDateTime.stringToDateTime(json['EndDate']),ResultType = json['ResultType'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'IndividualID' : IndividualID,'AddressID' : AddressID,'PostalCode' : PostalCode,'NationalCode' : NationalCode,'StartDate' : StartDate.toString(),'EndDate' : EndDate.toString(),'ResultType' : ResultType,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class AddressVM extends Model{
  // ignore: non_constant_identifier_names
  String ID;
  // ignore: non_constant_identifier_names
  String PostalCode;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  AddressVM();
  // ignore: non_constant_identifier_names
  AddressVM.setProperty({this.ID,this.PostalCode,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  AddressVM.fromJson(Map<String, dynamic> json):ID = json['ID'],PostalCode = json['PostalCode'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ID' : ID,'PostalCode' : PostalCode,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class BankMarkaziShebaListVM extends Model{
  // ignore: non_constant_identifier_names
  int AccountOwnerType;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String LegalId;
  // ignore: non_constant_identifier_names
  String ShebaId;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  BankMarkaziShebaListVM();
  // ignore: non_constant_identifier_names
  BankMarkaziShebaListVM.setProperty({this.AccountOwnerType,this.NationalCode,this.LegalId,this.ShebaId,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  BankMarkaziShebaListVM.fromJson(Map<String, dynamic> json):AccountOwnerType = json['AccountOwnerType'],NationalCode = json['NationalCode'],LegalId = json['LegalId'],ShebaId = json['ShebaId'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'AccountOwnerType' : AccountOwnerType,'NationalCode' : NationalCode,'LegalId' : LegalId,'ShebaId' : ShebaId,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class VaccineListVM extends Model{
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  DateTime StartDate;
  // ignore: non_constant_identifier_names
  DateTime EndDate;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  VaccineListVM();
  // ignore: non_constant_identifier_names
  VaccineListVM.setProperty({this.IndividualID,this.NationalCode,this.StartDate,this.EndDate,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  VaccineListVM.fromJson(Map<String, dynamic> json):IndividualID = json['IndividualID'],NationalCode = json['NationalCode'],StartDate = AppDateTime.stringToDateTime(json['StartDate']),EndDate = AppDateTime.stringToDateTime(json['EndDate']),PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'IndividualID' : IndividualID,'NationalCode' : NationalCode,'StartDate' : StartDate.toString(),'EndDate' : EndDate.toString(),'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class Educational2ListVM extends Model{
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  int Gender;
  // ignore: non_constant_identifier_names
  String UniStudyLevel;
  // ignore: non_constant_identifier_names
  String UniStudyingMode;
  // ignore: non_constant_identifier_names
  String UniCourseStudy;
  // ignore: non_constant_identifier_names
  String University;
  // ignore: non_constant_identifier_names
  double AverageLowRange;
  // ignore: non_constant_identifier_names
  double AverageHighRange;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  Educational2ListVM();
  // ignore: non_constant_identifier_names
  Educational2ListVM.setProperty({this.IndividualID,this.NationalCode,this.FirstName,this.LastName,this.Gender,this.UniStudyLevel,this.UniStudyingMode,this.UniCourseStudy,this.University,this.AverageLowRange,this.AverageHighRange,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  Educational2ListVM.fromJson(Map<String, dynamic> json):IndividualID = json['IndividualID'],NationalCode = json['NationalCode'],FirstName = json['FirstName'],LastName = json['LastName'],Gender = json['Gender'],UniStudyLevel = json['UniStudyLevel'],UniStudyingMode = json['UniStudyingMode'],UniCourseStudy = json['UniCourseStudy'],University = json['University'],AverageLowRange = json['AverageLowRange'],AverageHighRange = json['AverageHighRange'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'IndividualID' : IndividualID,'NationalCode' : NationalCode,'FirstName' : FirstName,'LastName' : LastName,'Gender' : Gender,'UniStudyLevel' : UniStudyLevel,'UniStudyingMode' : UniStudyingMode,'UniCourseStudy' : UniCourseStudy,'University' : University,'AverageLowRange' : AverageLowRange,'AverageHighRange' : AverageHighRange,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class EducationalListVM extends Model{
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  EducationalListVM();
  // ignore: non_constant_identifier_names
  EducationalListVM.setProperty({this.IndividualID,this.NationalCode,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  EducationalListVM.fromJson(Map<String, dynamic> json):IndividualID = json['IndividualID'],NationalCode = json['NationalCode'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'IndividualID' : IndividualID,'NationalCode' : NationalCode,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class SacrificialTypeListVM extends Model{
  // ignore: non_constant_identifier_names
  String SacrificialID;
  // ignore: non_constant_identifier_names
  List<String> SacrificialIDs;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  SacrificialTypeListVM();
  // ignore: non_constant_identifier_names
  SacrificialTypeListVM.setProperty({this.SacrificialID,this.SacrificialIDs,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  SacrificialTypeListVM.fromJson(Map<String, dynamic> json):SacrificialID = json['SacrificialID'],SacrificialIDs = json['SacrificialIDs'] != null ? List<String>.from(json['SacrificialIDs'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'SacrificialID' : SacrificialID,'SacrificialIDs ': SacrificialIDs != null ? List<String>.from(SacrificialIDs.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class SacrificialListVM extends Model{
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  List<String> IndividualIDs;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  List<String> NationalCodes;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  int Gender;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  SacrificialListVM();
  // ignore: non_constant_identifier_names
  SacrificialListVM.setProperty({this.IndividualID,this.IndividualIDs,this.NationalCode,this.NationalCodes,this.FirstName,this.LastName,this.Gender,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  SacrificialListVM.fromJson(Map<String, dynamic> json):IndividualID = json['IndividualID'],IndividualIDs = json['IndividualIDs'] != null ? List<String>.from(json['IndividualIDs'].map((x) => x)):[],NationalCode = json['NationalCode'],NationalCodes = json['NationalCodes'] != null ? List<String>.from(json['NationalCodes'].map((x) => x)):[],FirstName = json['FirstName'],LastName = json['LastName'],Gender = json['Gender'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'IndividualID' : IndividualID,'IndividualIDs ': IndividualIDs != null ? List<String>.from(IndividualIDs.map((x) => x)):[],'NationalCode' : NationalCode,'NationalCodes ': NationalCodes != null ? List<String>.from(NationalCodes.map((x) => x)):[],'FirstName' : FirstName,'LastName' : LastName,'Gender' : Gender,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class BudgetCodeAssignmentListVM extends Model{
  // ignore: non_constant_identifier_names
  String PositionSubTypeID;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentBudgetID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  BudgetCodeAssignmentListVM();
  // ignore: non_constant_identifier_names
  BudgetCodeAssignmentListVM.setProperty({this.PositionSubTypeID,this.DepartmentID,this.DepartmentBudgetID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  BudgetCodeAssignmentListVM.fromJson(Map<String, dynamic> json):PositionSubTypeID = json['PositionSubTypeID'],DepartmentID = json['DepartmentID'],DepartmentBudgetID = json['DepartmentBudgetID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'PositionSubTypeID' : PositionSubTypeID,'DepartmentID' : DepartmentID,'DepartmentBudgetID' : DepartmentBudgetID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class CommandByNationalCodeListVM extends Model{
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String RoleID;
  // ignore: non_constant_identifier_names
  int PositionType;
  // ignore: non_constant_identifier_names
  String CommandID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  CommandByNationalCodeListVM();
  // ignore: non_constant_identifier_names
  CommandByNationalCodeListVM.setProperty({this.NationalCode,this.RoleID,this.PositionType,this.CommandID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  CommandByNationalCodeListVM.fromJson(Map<String, dynamic> json):NationalCode = json['NationalCode'],RoleID = json['RoleID'],PositionType = json['PositionType'],CommandID = json['CommandID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'NationalCode' : NationalCode,'RoleID' : RoleID,'PositionType' : PositionType,'CommandID' : CommandID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class DepartmentBudgetForSalaryListVM extends Model{
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String PositionSubTypeID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DepartmentBudgetForSalaryListVM();
  // ignore: non_constant_identifier_names
  DepartmentBudgetForSalaryListVM.setProperty({this.DepartmentID,this.PositionSubTypeID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  DepartmentBudgetForSalaryListVM.fromJson(Map<String, dynamic> json):DepartmentID = json['DepartmentID'],PositionSubTypeID = json['PositionSubTypeID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'DepartmentID' : DepartmentID,'PositionSubTypeID' : PositionSubTypeID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class DepartmentBudgetListVM extends Model{
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  int EnableType;
  // ignore: non_constant_identifier_names
  String BudgetCode;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DepartmentBudgetListVM();
  // ignore: non_constant_identifier_names
  DepartmentBudgetListVM.setProperty({this.DepartmentID,this.EnableType,this.BudgetCode,this.Name,this.Type,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  DepartmentBudgetListVM.fromJson(Map<String, dynamic> json):DepartmentID = json['DepartmentID'],EnableType = json['EnableType'],BudgetCode = json['BudgetCode'],Name = json['Name'],Type = json['Type'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'DepartmentID' : DepartmentID,'EnableType' : EnableType,'BudgetCode' : BudgetCode,'Name' : Name,'Type' : Type,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class DepartmentPostImportListVM extends Model{
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  int EmploymentType;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DepartmentPostImportListVM();
  // ignore: non_constant_identifier_names
  DepartmentPostImportListVM.setProperty({this.DepartmentID,this.EmploymentType,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  DepartmentPostImportListVM.fromJson(Map<String, dynamic> json):DepartmentID = json['DepartmentID'],EmploymentType = json['EmploymentType'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'DepartmentID' : DepartmentID,'EmploymentType' : EmploymentType,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class DepartmentSummaryListVM extends Model{
  // ignore: non_constant_identifier_names
  String ParentID;
  // ignore: non_constant_identifier_names
  String ProvinceID;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  int SubType;
  // ignore: non_constant_identifier_names
  List<String> SystemEnablements;
  // ignore: non_constant_identifier_names
  int CouncilType;
  // ignore: non_constant_identifier_names
  int OrganType;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  String BudgetCode;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  bool SearchWithHierarchy;
  // ignore: non_constant_identifier_names
  List<String> Codes;
  // ignore: non_constant_identifier_names
  List<String> Types;
  // ignore: non_constant_identifier_names
  int COFOG;
  // ignore: non_constant_identifier_names
  int Level;
  // ignore: non_constant_identifier_names
  bool LoadLabel;
  // ignore: non_constant_identifier_names
  int Enabled;
  // ignore: non_constant_identifier_names
  String UnitType;
  // ignore: non_constant_identifier_names
  int NeedsChartType;
  // ignore: non_constant_identifier_names
  int WebServiceSaveType;
  // ignore: non_constant_identifier_names
  int MainOrganType;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DepartmentSummaryListVM();
  // ignore: non_constant_identifier_names
  DepartmentSummaryListVM.setProperty({this.ParentID,this.ProvinceID,this.Type,this.NationalCode,this.SubType,this.SystemEnablements,this.CouncilType,this.OrganType,this.Code,this.BudgetCode,this.Name,this.SearchWithHierarchy,this.Codes,this.Types,this.COFOG,this.Level,this.LoadLabel,this.Enabled,this.UnitType,this.NeedsChartType,this.WebServiceSaveType,this.MainOrganType,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  DepartmentSummaryListVM.fromJson(Map<String, dynamic> json):ParentID = json['ParentID'],ProvinceID = json['ProvinceID'],Type = json['Type'],NationalCode = json['NationalCode'],SubType = json['SubType'],SystemEnablements = json['SystemEnablements'] != null ? List<String>.from(json['SystemEnablements'].map((x) => x)):[],CouncilType = json['CouncilType'],OrganType = json['OrganType'],Code = json['Code'],BudgetCode = json['BudgetCode'],Name = json['Name'],SearchWithHierarchy = json['SearchWithHierarchy'],Codes = json['Codes'] != null ? List<String>.from(json['Codes'].map((x) => x)):[],Types = json['Types'] != null ? List<String>.from(json['Types'].map((x) => x)):[],COFOG = json['COFOG'],Level = json['Level'],LoadLabel = json['LoadLabel'],Enabled = json['Enabled'],UnitType = json['UnitType'],NeedsChartType = json['NeedsChartType'],WebServiceSaveType = json['WebServiceSaveType'],MainOrganType = json['MainOrganType'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ParentID' : ParentID,'ProvinceID' : ProvinceID,'Type' : Type,'NationalCode' : NationalCode,'SubType' : SubType,'SystemEnablements ': SystemEnablements != null ? List<String>.from(SystemEnablements.map((x) => x)):[],'CouncilType' : CouncilType,'OrganType' : OrganType,'Code' : Code,'BudgetCode' : BudgetCode,'Name' : Name,'SearchWithHierarchy' : SearchWithHierarchy,'Codes ': Codes != null ? List<String>.from(Codes.map((x) => x)):[],'Types ': Types != null ? List<String>.from(Types.map((x) => x)):[],'COFOG' : COFOG,'Level' : Level,'LoadLabel' : LoadLabel,'Enabled' : Enabled,'UnitType' : UnitType,'NeedsChartType' : NeedsChartType,'WebServiceSaveType' : WebServiceSaveType,'MainOrganType' : MainOrganType,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class DynamicPermissionObjectsByPositionAndOrganListVM extends Model{
  // ignore: non_constant_identifier_names
  int DynamicPermissionType;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DynamicPermissionObjectsByPositionAndOrganListVM();
  // ignore: non_constant_identifier_names
  DynamicPermissionObjectsByPositionAndOrganListVM.setProperty({this.DynamicPermissionType,this.OrganID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  DynamicPermissionObjectsByPositionAndOrganListVM.fromJson(Map<String, dynamic> json):DynamicPermissionType = json['DynamicPermissionType'],OrganID = json['OrganID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'DynamicPermissionType' : DynamicPermissionType,'OrganID' : OrganID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class DynamicPermissionObjectsByPositionListVM extends Model{
  // ignore: non_constant_identifier_names
  int DynamicPermissionType;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DynamicPermissionObjectsByPositionListVM();
  // ignore: non_constant_identifier_names
  DynamicPermissionObjectsByPositionListVM.setProperty({this.DynamicPermissionType,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  DynamicPermissionObjectsByPositionListVM.fromJson(Map<String, dynamic> json):DynamicPermissionType = json['DynamicPermissionType'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'DynamicPermissionType' : DynamicPermissionType,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class IndividualInquiryListVM extends Model{
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  DateTime CreationDateFrom;
  // ignore: non_constant_identifier_names
  DateTime CreationDateTo;
  // ignore: non_constant_identifier_names
  List<String> NationalCodes;
  // ignore: non_constant_identifier_names
  List<String> ErrorCodes;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  IndividualInquiryListVM();
  // ignore: non_constant_identifier_names
  IndividualInquiryListVM.setProperty({this.NationalCode,this.CreationDateFrom,this.CreationDateTo,this.NationalCodes,this.ErrorCodes,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  IndividualInquiryListVM.fromJson(Map<String, dynamic> json):NationalCode = json['NationalCode'],CreationDateFrom = AppDateTime.stringToDateTime(json['CreationDateFrom']),CreationDateTo = AppDateTime.stringToDateTime(json['CreationDateTo']),NationalCodes = json['NationalCodes'] != null ? List<String>.from(json['NationalCodes'].map((x) => x)):[],ErrorCodes = json['ErrorCodes'] != null ? List<String>.from(json['ErrorCodes'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'NationalCode' : NationalCode,'CreationDateFrom' : CreationDateFrom.toString(),'CreationDateTo' : CreationDateTo.toString(),'NationalCodes ': NationalCodes != null ? List<String>.from(NationalCodes.map((x) => x)):[],'ErrorCodes ': ErrorCodes != null ? List<String>.from(ErrorCodes.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class OutsideSettingListVM extends Model{
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  OutsideSettingListVM();
  // ignore: non_constant_identifier_names
  OutsideSettingListVM.setProperty({this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  OutsideSettingListVM.fromJson(Map<String, dynamic> json):PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class PlaceByCodeListVM extends Model{
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PlaceByCodeListVM();
  // ignore: non_constant_identifier_names
  PlaceByCodeListVM.setProperty({this.Code,this.Type,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  PlaceByCodeListVM.fromJson(Map<String, dynamic> json):Code = json['Code'],Type = json['Type'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Code' : Code,'Type' : Type,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class PositionHistoryListVM extends Model{
  // ignore: non_constant_identifier_names
  String PositionID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PositionHistoryListVM();
  // ignore: non_constant_identifier_names
  PositionHistoryListVM.setProperty({this.PositionID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  PositionHistoryListVM.fromJson(Map<String, dynamic> json):PositionID = json['PositionID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'PositionID' : PositionID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class PositionSubTypeListVM extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  List<String> Types;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PositionSubTypeListVM();
  // ignore: non_constant_identifier_names
  PositionSubTypeListVM.setProperty({this.Name,this.DepartmentID,this.DepartmentName,this.Type,this.Types,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  PositionSubTypeListVM.fromJson(Map<String, dynamic> json):Name = json['Name'],DepartmentID = json['DepartmentID'],DepartmentName = json['DepartmentName'],Type = json['Type'],Types = json['Types'] != null ? List<String>.from(json['Types'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Name' : Name,'DepartmentID' : DepartmentID,'DepartmentName' : DepartmentName,'Type' : Type,'Types ': Types != null ? List<String>.from(Types.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class DepartmentByUserListVM extends Model{
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DepartmentByUserListVM();
  // ignore: non_constant_identifier_names
  DepartmentByUserListVM.setProperty({this.UserID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  DepartmentByUserListVM.fromJson(Map<String, dynamic> json):UserID = json['UserID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'UserID' : UserID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class ApplicationByUserListVM extends Model{
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ApplicationByUserListVM();
  // ignore: non_constant_identifier_names
  ApplicationByUserListVM.setProperty({this.UserID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  ApplicationByUserListVM.fromJson(Map<String, dynamic> json):UserID = json['UserID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'UserID' : UserID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class WebServiceUserActionListVM extends Model{
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String ActionID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  WebServiceUserActionListVM();
  // ignore: non_constant_identifier_names
  WebServiceUserActionListVM.setProperty({this.UserID,this.ActionID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  WebServiceUserActionListVM.fromJson(Map<String, dynamic> json):UserID = json['UserID'],ActionID = json['ActionID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'UserID' : UserID,'ActionID' : ActionID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class WebServiceUserPermissionListVM extends Model{
  // ignore: non_constant_identifier_names
  String WebServiceUserID;
  // ignore: non_constant_identifier_names
  String ActionID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  WebServiceUserPermissionListVM();
  // ignore: non_constant_identifier_names
  WebServiceUserPermissionListVM.setProperty({this.WebServiceUserID,this.ActionID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  WebServiceUserPermissionListVM.fromJson(Map<String, dynamic> json):WebServiceUserID = json['WebServiceUserID'],ActionID = json['ActionID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'WebServiceUserID' : WebServiceUserID,'ActionID' : ActionID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class DepartmentListVM extends Model{
  // ignore: non_constant_identifier_names
  String ParentID;
  // ignore: non_constant_identifier_names
  String ProvinceID;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  int SubType;
  // ignore: non_constant_identifier_names
  List<String> SystemEnablements;
  // ignore: non_constant_identifier_names
  int CouncilType;
  // ignore: non_constant_identifier_names
  int OrganType;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  String BudgetCode;
  // ignore: non_constant_identifier_names
  bool OnlyFetchedWithProvinceSubDepartments;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  bool SearchWithHierarchy;
  // ignore: non_constant_identifier_names
  List<String> Codes;
  // ignore: non_constant_identifier_names
  List<String> Types;
  // ignore: non_constant_identifier_names
  int COFOG;
  // ignore: non_constant_identifier_names
  int Level;
  // ignore: non_constant_identifier_names
  bool LoadLabel;
  // ignore: non_constant_identifier_names
  int Enabled;
  // ignore: non_constant_identifier_names
  String UnitType;
  // ignore: non_constant_identifier_names
  int NeedsChartType;
  // ignore: non_constant_identifier_names
  int WebServiceSaveType;
  // ignore: non_constant_identifier_names
  int MainOrganType;
  // ignore: non_constant_identifier_names
  int ElaboratedBudgetType;
  // ignore: non_constant_identifier_names
  int TreasurySupervisionType;
  // ignore: non_constant_identifier_names
  int UserDefinitionReferenceType;
  // ignore: non_constant_identifier_names
  int BoardOfTrusteesType;
  // ignore: non_constant_identifier_names
  List<String> UserDefinitionReferenceTypes;
  // ignore: non_constant_identifier_names
  int ArrangementTypeInSalary;
  // ignore: non_constant_identifier_names
  int BriefNameType;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DepartmentListVM();
  // ignore: non_constant_identifier_names
  DepartmentListVM.setProperty({this.ParentID,this.ProvinceID,this.Type,this.NationalCode,this.SubType,this.SystemEnablements,this.CouncilType,this.OrganType,this.Code,this.BudgetCode,this.OnlyFetchedWithProvinceSubDepartments,this.Name,this.SearchWithHierarchy,this.Codes,this.Types,this.COFOG,this.Level,this.LoadLabel,this.Enabled,this.UnitType,this.NeedsChartType,this.WebServiceSaveType,this.MainOrganType,this.ElaboratedBudgetType,this.TreasurySupervisionType,this.UserDefinitionReferenceType,this.BoardOfTrusteesType,this.UserDefinitionReferenceTypes,this.ArrangementTypeInSalary,this.BriefNameType,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  DepartmentListVM.fromJson(Map<String, dynamic> json):ParentID = json['ParentID'],ProvinceID = json['ProvinceID'],Type = json['Type'],NationalCode = json['NationalCode'],SubType = json['SubType'],SystemEnablements = json['SystemEnablements'] != null ? List<String>.from(json['SystemEnablements'].map((x) => x)):[],CouncilType = json['CouncilType'],OrganType = json['OrganType'],Code = json['Code'],BudgetCode = json['BudgetCode'],OnlyFetchedWithProvinceSubDepartments = json['OnlyFetchedWithProvinceSubDepartments'],Name = json['Name'],SearchWithHierarchy = json['SearchWithHierarchy'],Codes = json['Codes'] != null ? List<String>.from(json['Codes'].map((x) => x)):[],Types = json['Types'] != null ? List<String>.from(json['Types'].map((x) => x)):[],COFOG = json['COFOG'],Level = json['Level'],LoadLabel = json['LoadLabel'],Enabled = json['Enabled'],UnitType = json['UnitType'],NeedsChartType = json['NeedsChartType'],WebServiceSaveType = json['WebServiceSaveType'],MainOrganType = json['MainOrganType'],ElaboratedBudgetType = json['ElaboratedBudgetType'],TreasurySupervisionType = json['TreasurySupervisionType'],UserDefinitionReferenceType = json['UserDefinitionReferenceType'],BoardOfTrusteesType = json['BoardOfTrusteesType'],UserDefinitionReferenceTypes = json['UserDefinitionReferenceTypes'] != null ? List<String>.from(json['UserDefinitionReferenceTypes'].map((x) => x)):[],ArrangementTypeInSalary = json['ArrangementTypeInSalary'],BriefNameType = json['BriefNameType'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ParentID' : ParentID,'ProvinceID' : ProvinceID,'Type' : Type,'NationalCode' : NationalCode,'SubType' : SubType,'SystemEnablements ': SystemEnablements != null ? List<String>.from(SystemEnablements.map((x) => x)):[],'CouncilType' : CouncilType,'OrganType' : OrganType,'Code' : Code,'BudgetCode' : BudgetCode,'OnlyFetchedWithProvinceSubDepartments' : OnlyFetchedWithProvinceSubDepartments,'Name' : Name,'SearchWithHierarchy' : SearchWithHierarchy,'Codes ': Codes != null ? List<String>.from(Codes.map((x) => x)):[],'Types ': Types != null ? List<String>.from(Types.map((x) => x)):[],'COFOG' : COFOG,'Level' : Level,'LoadLabel' : LoadLabel,'Enabled' : Enabled,'UnitType' : UnitType,'NeedsChartType' : NeedsChartType,'WebServiceSaveType' : WebServiceSaveType,'MainOrganType' : MainOrganType,'ElaboratedBudgetType' : ElaboratedBudgetType,'TreasurySupervisionType' : TreasurySupervisionType,'UserDefinitionReferenceType' : UserDefinitionReferenceType,'BoardOfTrusteesType' : BoardOfTrusteesType,'UserDefinitionReferenceTypes ': UserDefinitionReferenceTypes != null ? List<String>.from(UserDefinitionReferenceTypes.map((x) => x)):[],'ArrangementTypeInSalary' : ArrangementTypeInSalary,'BriefNameType' : BriefNameType,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class DynamicPermissionListPositionsVM extends Model{
  // ignore: non_constant_identifier_names
  String ObjectID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DynamicPermissionListPositionsVM();
  // ignore: non_constant_identifier_names
  DynamicPermissionListPositionsVM.setProperty({this.ObjectID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  DynamicPermissionListPositionsVM.fromJson(Map<String, dynamic> json):ObjectID = json['ObjectID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ObjectID' : ObjectID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class DynamicPermissionListVM extends Model{
  // ignore: non_constant_identifier_names
  String ObjectID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DynamicPermissionListVM();
  // ignore: non_constant_identifier_names
  DynamicPermissionListVM.setProperty({this.ObjectID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  DynamicPermissionListVM.fromJson(Map<String, dynamic> json):ObjectID = json['ObjectID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ObjectID' : ObjectID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class IndividualListVM extends Model{
  // ignore: non_constant_identifier_names
  List<String> IDs;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  DateTime BirthDate;
  // ignore: non_constant_identifier_names
  String BirthDateJalali;
  // ignore: non_constant_identifier_names
  int ConfirmType;
  // ignore: non_constant_identifier_names
  List<String> NationalCodes;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  IndividualListVM();
  // ignore: non_constant_identifier_names
  IndividualListVM.setProperty({this.IDs,this.FirstName,this.LastName,this.NationalCode,this.BirthDate,this.BirthDateJalali,this.ConfirmType,this.NationalCodes,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  IndividualListVM.fromJson(Map<String, dynamic> json):IDs = json['IDs'] != null ? List<String>.from(json['IDs'].map((x) => x)):[],FirstName = json['FirstName'],LastName = json['LastName'],NationalCode = json['NationalCode'],BirthDate = AppDateTime.stringToDateTime(json['BirthDate']),BirthDateJalali = json['BirthDateJalali'],ConfirmType = json['ConfirmType'],NationalCodes = json['NationalCodes'] != null ? List<String>.from(json['NationalCodes'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'IDs ': IDs != null ? List<String>.from(IDs.map((x) => x)):[],'FirstName' : FirstName,'LastName' : LastName,'NationalCode' : NationalCode,'BirthDate' : BirthDate.toString(),'BirthDateJalali' : BirthDateJalali,'ConfirmType' : ConfirmType,'NationalCodes ': NationalCodes != null ? List<String>.from(NationalCodes.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class PlaceListVM extends Model{
  // ignore: non_constant_identifier_names
  List<String> IDs;
  // ignore: non_constant_identifier_names
  String ParentID;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int AncestorLevel;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int DevelopmentType;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PlaceListVM();
  // ignore: non_constant_identifier_names
  PlaceListVM.setProperty({this.IDs,this.ParentID,this.Type,this.AncestorLevel,this.Name,this.DevelopmentType,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  PlaceListVM.fromJson(Map<String, dynamic> json):IDs = json['IDs'] != null ? List<String>.from(json['IDs'].map((x) => x)):[],ParentID = json['ParentID'],Type = json['Type'],AncestorLevel = json['AncestorLevel'],Name = json['Name'],DevelopmentType = json['DevelopmentType'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'IDs ': IDs != null ? List<String>.from(IDs.map((x) => x)):[],'ParentID' : ParentID,'Type' : Type,'AncestorLevel' : AncestorLevel,'Name' : Name,'DevelopmentType' : DevelopmentType,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class PositionDepartmentMappingListVM extends Model{
  // ignore: non_constant_identifier_names
  int PositionType;
  // ignore: non_constant_identifier_names
  int DepartmentType;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PositionDepartmentMappingListVM();
  // ignore: non_constant_identifier_names
  PositionDepartmentMappingListVM.setProperty({this.PositionType,this.DepartmentType,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  PositionDepartmentMappingListVM.fromJson(Map<String, dynamic> json):PositionType = json['PositionType'],DepartmentType = json['DepartmentType'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'PositionType' : PositionType,'DepartmentType' : DepartmentType,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class PositionListVM extends Model{
  // ignore: non_constant_identifier_names
  List<String> IDs;
  // ignore: non_constant_identifier_names
  String ParentDepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  List<String> ApplicationIDs;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  List<String> Types;
  // ignore: non_constant_identifier_names
  int UserType;
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String CellPhone;
  // ignore: non_constant_identifier_names
  String Email;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  bool IsPublicDefinition;
  // ignore: non_constant_identifier_names
  int EnableState;
  // ignore: non_constant_identifier_names
  int OnlineState;
  // ignore: non_constant_identifier_names
  String RoleID;
  // ignore: non_constant_identifier_names
  int SubType;
  // ignore: non_constant_identifier_names
  List<String> DepartmentIDs;
  // ignore: non_constant_identifier_names
  String PositionSubTypeID;
  // ignore: non_constant_identifier_names
  String CommandID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PositionListVM();
  // ignore: non_constant_identifier_names
  PositionListVM.setProperty({this.IDs,this.ParentDepartmentID,this.DepartmentID,this.ApplicationID,this.ApplicationIDs,this.Type,this.Types,this.UserType,this.UserID,this.NationalCode,this.Name,this.FirstName,this.LastName,this.CellPhone,this.Email,this.DepartmentName,this.IsPublicDefinition,this.EnableState,this.OnlineState,this.RoleID,this.SubType,this.DepartmentIDs,this.PositionSubTypeID,this.CommandID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  PositionListVM.fromJson(Map<String, dynamic> json):IDs = json['IDs'] != null ? List<String>.from(json['IDs'].map((x) => x)):[],ParentDepartmentID = json['ParentDepartmentID'],DepartmentID = json['DepartmentID'],ApplicationID = json['ApplicationID'],ApplicationIDs = json['ApplicationIDs'] != null ? List<String>.from(json['ApplicationIDs'].map((x) => x)):[],Type = json['Type'],Types = json['Types'] != null ? List<String>.from(json['Types'].map((x) => x)):[],UserType = json['UserType'],UserID = json['UserID'],NationalCode = json['NationalCode'],Name = json['Name'],FirstName = json['FirstName'],LastName = json['LastName'],CellPhone = json['CellPhone'],Email = json['Email'],DepartmentName = json['DepartmentName'],IsPublicDefinition = json['IsPublicDefinition'],EnableState = json['EnableState'],OnlineState = json['OnlineState'],RoleID = json['RoleID'],SubType = json['SubType'],DepartmentIDs = json['DepartmentIDs'] != null ? List<String>.from(json['DepartmentIDs'].map((x) => x)):[],PositionSubTypeID = json['PositionSubTypeID'],CommandID = json['CommandID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'IDs ': IDs != null ? List<String>.from(IDs.map((x) => x)):[],'ParentDepartmentID' : ParentDepartmentID,'DepartmentID' : DepartmentID,'ApplicationID' : ApplicationID,'ApplicationIDs ': ApplicationIDs != null ? List<String>.from(ApplicationIDs.map((x) => x)):[],'Type' : Type,'Types ': Types != null ? List<String>.from(Types.map((x) => x)):[],'UserType' : UserType,'UserID' : UserID,'NationalCode' : NationalCode,'Name' : Name,'FirstName' : FirstName,'LastName' : LastName,'CellPhone' : CellPhone,'Email' : Email,'DepartmentName' : DepartmentName,'IsPublicDefinition' : IsPublicDefinition,'EnableState' : EnableState,'OnlineState' : OnlineState,'RoleID' : RoleID,'SubType' : SubType,'DepartmentIDs ': DepartmentIDs != null ? List<String>.from(DepartmentIDs.map((x) => x)):[],'PositionSubTypeID' : PositionSubTypeID,'CommandID' : CommandID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class AnnouncementListVM extends Model{
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  int Enable;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  AnnouncementListVM();
  // ignore: non_constant_identifier_names
  AnnouncementListVM.setProperty({this.Title,this.Enable,this.Type,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  AnnouncementListVM.fromJson(Map<String, dynamic> json):Title = json['Title'],Enable = json['Enable'],Type = json['Type'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Title' : Title,'Enable' : Enable,'Type' : Type,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class ContactListVM extends Model{
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String Content;
  // ignore: non_constant_identifier_names
  DateTime CreationDateFrom;
  // ignore: non_constant_identifier_names
  DateTime CreationDateTo;
  // ignore: non_constant_identifier_names
  int ArchivedType;
  // ignore: non_constant_identifier_names
  String Note;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ContactListVM();
  // ignore: non_constant_identifier_names
  ContactListVM.setProperty({this.Title,this.Content,this.CreationDateFrom,this.CreationDateTo,this.ArchivedType,this.Note,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  ContactListVM.fromJson(Map<String, dynamic> json):Title = json['Title'],Content = json['Content'],CreationDateFrom = AppDateTime.stringToDateTime(json['CreationDateFrom']),CreationDateTo = AppDateTime.stringToDateTime(json['CreationDateTo']),ArchivedType = json['ArchivedType'],Note = json['Note'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Title' : Title,'Content' : Content,'CreationDateFrom' : CreationDateFrom.toString(),'CreationDateTo' : CreationDateTo.toString(),'ArchivedType' : ArchivedType,'Note' : Note,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class RoleListVM extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int PositionType;
  // ignore: non_constant_identifier_names
  String PositionID;
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String CommandID;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  bool IsPublic;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  RoleListVM();
  // ignore: non_constant_identifier_names
  RoleListVM.setProperty({this.Name,this.PositionType,this.PositionID,this.UserID,this.CommandID,this.NationalCode,this.IsPublic,this.ApplicationID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  RoleListVM.fromJson(Map<String, dynamic> json):Name = json['Name'],PositionType = json['PositionType'],PositionID = json['PositionID'],UserID = json['UserID'],CommandID = json['CommandID'],NationalCode = json['NationalCode'],IsPublic = json['IsPublic'],ApplicationID = json['ApplicationID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Name' : Name,'PositionType' : PositionType,'PositionID' : PositionID,'UserID' : UserID,'CommandID' : CommandID,'NationalCode' : NationalCode,'IsPublic' : IsPublic,'ApplicationID' : ApplicationID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class FAQGroupListVM extends Model{
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  FAQGroupListVM();
  // ignore: non_constant_identifier_names
  FAQGroupListVM.setProperty({this.Title,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  FAQGroupListVM.fromJson(Map<String, dynamic> json):Title = json['Title'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Title' : Title,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class FAQListVM extends Model{
  // ignore: non_constant_identifier_names
  String faqGroupId;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  FAQListVM();
  // ignore: non_constant_identifier_names
  FAQListVM.setProperty({this.faqGroupId,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  FAQListVM.fromJson(Map<String, dynamic> json):faqGroupId = json['faqGroupId'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'faqGroupId' : faqGroupId,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class WebServiceUserListVM extends Model{
  // ignore: non_constant_identifier_names
  String UserName;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  int Enabled;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  WebServiceUserListVM();
  // ignore: non_constant_identifier_names
  WebServiceUserListVM.setProperty({this.UserName,this.OrganID,this.Enabled,this.ApplicationID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  WebServiceUserListVM.fromJson(Map<String, dynamic> json):UserName = json['UserName'],OrganID = json['OrganID'],Enabled = json['Enabled'],ApplicationID = json['ApplicationID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'UserName' : UserName,'OrganID' : OrganID,'Enabled' : Enabled,'ApplicationID' : ApplicationID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class WebServiceUserGetVM extends Model{
  // ignore: non_constant_identifier_names
  String UserName;
  // ignore: non_constant_identifier_names
  String Password;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  WebServiceUserGetVM();
  // ignore: non_constant_identifier_names
  WebServiceUserGetVM.setProperty({this.UserName,this.Password,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  WebServiceUserGetVM.fromJson(Map<String, dynamic> json):UserName = json['UserName'],Password = json['Password'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'UserName' : UserName,'Password' : Password,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class UserListVM extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String Email;
  // ignore: non_constant_identifier_names
  String CellPhone;
  // ignore: non_constant_identifier_names
  int EnableOrDisable;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  UserListVM();
  // ignore: non_constant_identifier_names
  UserListVM.setProperty({this.Name,this.NationalCode,this.Email,this.CellPhone,this.EnableOrDisable,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  UserListVM.fromJson(Map<String, dynamic> json):Name = json['Name'],NationalCode = json['NationalCode'],Email = json['Email'],CellPhone = json['CellPhone'],EnableOrDisable = json['EnableOrDisable'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Name' : Name,'NationalCode' : NationalCode,'Email' : Email,'CellPhone' : CellPhone,'EnableOrDisable' : EnableOrDisable,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class SsoVM extends Model{
  // ignore: non_constant_identifier_names
  String UserID;
  // ignore: non_constant_identifier_names
  String UserHash;
  // ignore: non_constant_identifier_names
  String CallBack;
  // ignore: non_constant_identifier_names
  String ApplicationID;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  SsoVM();
  // ignore: non_constant_identifier_names
  SsoVM.setProperty({this.UserID,this.UserHash,this.CallBack,this.ApplicationID,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  SsoVM.fromJson(Map<String, dynamic> json):UserID = json['UserID'],UserHash = json['UserHash'],CallBack = json['CallBack'],ApplicationID = json['ApplicationID'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'UserID' : UserID,'UserHash' : UserHash,'CallBack' : CallBack,'ApplicationID' : ApplicationID,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class DepartmentWebServiceListVM extends Model{
  // ignore: non_constant_identifier_names
  String ParentID;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DepartmentWebServiceListVM();
  // ignore: non_constant_identifier_names
  DepartmentWebServiceListVM.setProperty({this.ParentID,this.Type,this.Name,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  DepartmentWebServiceListVM.fromJson(Map<String, dynamic> json):ParentID = json['ParentID'],Type = json['Type'],Name = json['Name'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ParentID' : ParentID,'Type' : Type,'Name' : Name,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class ActivityLogListVM extends Model{
  // ignore: non_constant_identifier_names
  String UserFullName;
  // ignore: non_constant_identifier_names
  String UserName;
  // ignore: non_constant_identifier_names
  int UserType;
  // ignore: non_constant_identifier_names
  String UserIP;
  // ignore: non_constant_identifier_names
  String Date;
  // ignore: non_constant_identifier_names
  String Time;
  // ignore: non_constant_identifier_names
  String ControllerID;
  // ignore: non_constant_identifier_names
  String ControllerName;
  // ignore: non_constant_identifier_names
  String ActionID;
  // ignore: non_constant_identifier_names
  String ActionName;
  // ignore: non_constant_identifier_names
  int Duration;
  // ignore: non_constant_identifier_names
  DateTime StartDate;
  // ignore: non_constant_identifier_names
  DateTime EndDate;
  // ignore: non_constant_identifier_names
  int OS;
  // ignore: non_constant_identifier_names
  int Browser;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  int DeviceType;
  // ignore: non_constant_identifier_names
  int LogType;
  // ignore: non_constant_identifier_names
  String ObjectID;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  bool Success;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ActivityLogListVM();
  // ignore: non_constant_identifier_names
  ActivityLogListVM.setProperty({this.UserFullName,this.UserName,this.UserType,this.UserIP,this.Date,this.Time,this.ControllerID,this.ControllerName,this.ActionID,this.ActionName,this.Duration,this.StartDate,this.EndDate,this.OS,this.Browser,this.DepartmentName,this.DeviceType,this.LogType,this.ObjectID,this.Total,this.Success,this.PageSize,this.PageIndex,this.SortExp,this.GetTotalCount});
  @override
  ActivityLogListVM.fromJson(Map<String, dynamic> json):UserFullName = json['UserFullName'],UserName = json['UserName'],UserType = json['UserType'],UserIP = json['UserIP'],Date = json['Date'],Time = json['Time'],ControllerID = json['ControllerID'],ControllerName = json['ControllerName'],ActionID = json['ActionID'],ActionName = json['ActionName'],Duration = json['Duration'],StartDate = AppDateTime.stringToDateTime(json['StartDate']),EndDate = AppDateTime.stringToDateTime(json['EndDate']),OS = json['OS'],Browser = json['Browser'],DepartmentName = json['DepartmentName'],DeviceType = json['DeviceType'],LogType = json['LogType'],ObjectID = json['ObjectID'],Total = json['Total'],Success = json['Success'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'UserFullName' : UserFullName,'UserName' : UserName,'UserType' : UserType,'UserIP' : UserIP,'Date' : Date,'Time' : Time,'ControllerID' : ControllerID,'ControllerName' : ControllerName,'ActionID' : ActionID,'ActionName' : ActionName,'Duration' : Duration,'StartDate' : StartDate.toString(),'EndDate' : EndDate.toString(),'OS' : OS,'Browser' : Browser,'DepartmentName' : DepartmentName,'DeviceType' : DeviceType,'LogType' : LogType,'ObjectID' : ObjectID,'Total' : Total,'Success' : Success,'PageSize' : PageSize,'PageIndex' : PageIndex,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class ActivityLogObject extends Model{
  // ignore: non_constant_identifier_names
  String ObjectJson;
  // ignore: non_constant_identifier_names
  String ID;
  ActivityLogObject();
  // ignore: non_constant_identifier_names
  ActivityLogObject.setProperty({this.ObjectJson,this.ID});
  @override
  ActivityLogObject.fromJson(Map<String, dynamic> json):ObjectJson = json['ObjectJson'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'ObjectJson' : ObjectJson,'ID' : ID};
}
class DynamicReportTemplate extends Model{
  // ignore: non_constant_identifier_names
  int DynamicReportType;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  String Template;
  // ignore: non_constant_identifier_names
  int Order;
  // ignore: non_constant_identifier_names
  bool VisibleForOthers;
  // ignore: non_constant_identifier_names
  String Comment;
  // ignore: non_constant_identifier_names
  String CreatorUserName;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ID;
  DynamicReportTemplate();
  // ignore: non_constant_identifier_names
  DynamicReportTemplate.setProperty({this.DynamicReportType,this.Title,this.Template,this.Order,this.VisibleForOthers,this.Comment,this.CreatorUserName,this.Total,this.ID});
  @override
  DynamicReportTemplate.fromJson(Map<String, dynamic> json):DynamicReportType = json['DynamicReportType'],Title = json['Title'],Template = json['Template'],Order = json['Order'],VisibleForOthers = json['VisibleForOthers'],Comment = json['Comment'],CreatorUserName = json['CreatorUserName'],Total = json['Total'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'DynamicReportType' : DynamicReportType,'Title' : Title,'Template' : Template,'Order' : Order,'VisibleForOthers' : VisibleForOthers,'Comment' : Comment,'CreatorUserName' : CreatorUserName,'Total' : Total,'ID' : ID};
}
class DynamicReportTypeVM extends Model{
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String ID;
  DynamicReportTypeVM();
  // ignore: non_constant_identifier_names
  DynamicReportTypeVM.setProperty({this.Type,this.ID});
  @override
  DynamicReportTypeVM.fromJson(Map<String, dynamic> json):Type = json['Type'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Type' : Type,'ID' : ID};
}
class DynamicReportVM extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String TypeName;
  // ignore: non_constant_identifier_names
  bool Enable;
  // ignore: non_constant_identifier_names
  DateTime ReportUpdteDate;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  DateTime FromIssuanceDate;
  // ignore: non_constant_identifier_names
  DateTime ToIssuanceDate;
  // ignore: non_constant_identifier_names
  bool ViewAllUsers;
  // ignore: non_constant_identifier_names
  String Comment;
  // ignore: non_constant_identifier_names
  String ID;
  DynamicReportVM();
  // ignore: non_constant_identifier_names
  DynamicReportVM.setProperty({this.Total,this.Type,this.TypeName,this.Enable,this.ReportUpdteDate,this.CreationDate,this.FromIssuanceDate,this.ToIssuanceDate,this.ViewAllUsers,this.Comment,this.ID});
  @override
  DynamicReportVM.fromJson(Map<String, dynamic> json):Total = json['Total'],Type = json['Type'],TypeName = json['TypeName'],Enable = json['Enable'],ReportUpdteDate = AppDateTime.stringToDateTime(json['ReportUpdteDate']),CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),FromIssuanceDate = AppDateTime.stringToDateTime(json['FromIssuanceDate']),ToIssuanceDate = AppDateTime.stringToDateTime(json['ToIssuanceDate']),ViewAllUsers = json['ViewAllUsers'],Comment = json['Comment'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'Type' : Type,'TypeName' : TypeName,'Enable' : Enable,'ReportUpdteDate' : ReportUpdteDate.toString(),'CreationDate' : CreationDate.toString(),'FromIssuanceDate' : FromIssuanceDate.toString(),'ToIssuanceDate' : ToIssuanceDate.toString(),'ViewAllUsers' : ViewAllUsers,'Comment' : Comment,'ID' : ID};
}
class FieldGroup extends Model{
  // ignore: non_constant_identifier_names
  int DynamicReportType;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  List<String> Fields;
  // ignore: non_constant_identifier_names
  int Order;
  // ignore: non_constant_identifier_names
  String ID;
  FieldGroup();
  // ignore: non_constant_identifier_names
  FieldGroup.setProperty({this.DynamicReportType,this.Name,this.Total,this.Fields,this.Order,this.ID});
  @override
  FieldGroup.fromJson(Map<String, dynamic> json):DynamicReportType = json['DynamicReportType'],Name = json['Name'],Total = json['Total'],Fields = json['Fields'] != null ? List<String>.from(json['Fields'].map((x) => x)):[],Order = json['Order'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'DynamicReportType' : DynamicReportType,'Name' : Name,'Total' : Total,'Fields ': Fields != null ? List<String>.from(Fields.map((x) => x)):[],'Order' : Order,'ID' : ID};
}
class DocumentStatisticsListVM extends Model{
  // ignore: non_constant_identifier_names
  int DocumentType;
  // ignore: non_constant_identifier_names
  String UserPositionID;
  // ignore: non_constant_identifier_names
  String ID;
  DocumentStatisticsListVM();
  // ignore: non_constant_identifier_names
  DocumentStatisticsListVM.setProperty({this.DocumentType,this.UserPositionID,this.ID});
  @override
  DocumentStatisticsListVM.fromJson(Map<String, dynamic> json):DocumentType = json['DocumentType'],UserPositionID = json['UserPositionID'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'DocumentType' : DocumentType,'UserPositionID' : UserPositionID,'ID' : ID};
}
class PositionOrgan extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String OrganCode;
  // ignore: non_constant_identifier_names
  String PositionID;
  // ignore: non_constant_identifier_names
  bool OrganSubSetIncluded;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String ID;
  PositionOrgan();
  // ignore: non_constant_identifier_names
  PositionOrgan.setProperty({this.Total,this.OrganID,this.OrganName,this.OrganCode,this.PositionID,this.OrganSubSetIncluded,this.FirstName,this.LastName,this.NationalCode,this.ID});
  @override
  PositionOrgan.fromJson(Map<String, dynamic> json):Total = json['Total'],OrganID = json['OrganID'],OrganName = json['OrganName'],OrganCode = json['OrganCode'],PositionID = json['PositionID'],OrganSubSetIncluded = json['OrganSubSetIncluded'],FirstName = json['FirstName'],LastName = json['LastName'],NationalCode = json['NationalCode'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'OrganID' : OrganID,'OrganName' : OrganName,'OrganCode' : OrganCode,'PositionID' : PositionID,'OrganSubSetIncluded' : OrganSubSetIncluded,'FirstName' : FirstName,'LastName' : LastName,'NationalCode' : NationalCode,'ID' : ID};
}
class ProcessAllowedDate extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ProcessID;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  DateTime RequestCreationDate;
  // ignore: non_constant_identifier_names
  DateTime RequestFinalApprovalDate;
  // ignore: non_constant_identifier_names
  DateTime ModifyApprovedRequestDate;
  // ignore: non_constant_identifier_names
  DateTime RequestPublificationDate;
  // ignore: non_constant_identifier_names
  String ID;
  ProcessAllowedDate();
  // ignore: non_constant_identifier_names
  ProcessAllowedDate.setProperty({this.Total,this.ProcessID,this.Month,this.Year,this.RequestCreationDate,this.RequestFinalApprovalDate,this.ModifyApprovedRequestDate,this.RequestPublificationDate,this.ID});
  @override
  ProcessAllowedDate.fromJson(Map<String, dynamic> json):Total = json['Total'],ProcessID = json['ProcessID'],Month = json['Month'],Year = json['Year'],RequestCreationDate = AppDateTime.stringToDateTime(json['RequestCreationDate']),RequestFinalApprovalDate = AppDateTime.stringToDateTime(json['RequestFinalApprovalDate']),ModifyApprovedRequestDate = AppDateTime.stringToDateTime(json['ModifyApprovedRequestDate']),RequestPublificationDate = AppDateTime.stringToDateTime(json['RequestPublificationDate']),ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'ProcessID' : ProcessID,'Month' : Month,'Year' : Year,'RequestCreationDate' : RequestCreationDate.toString(),'RequestFinalApprovalDate' : RequestFinalApprovalDate.toString(),'ModifyApprovedRequestDate' : ModifyApprovedRequestDate.toString(),'RequestPublificationDate' : RequestPublificationDate.toString(),'ID' : ID};
}
class ProcessConfirmer extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String ProcessID;
  // ignore: non_constant_identifier_names
  int ConfirmerPositionType;
  // ignore: non_constant_identifier_names
  bool FinalApproval;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int OrderConfirmerPositionType;
  // ignore: non_constant_identifier_names
  bool Checked;
  // ignore: non_constant_identifier_names
  String ID;
  ProcessConfirmer();
  // ignore: non_constant_identifier_names
  ProcessConfirmer.setProperty({this.Total,this.ProcessID,this.ConfirmerPositionType,this.FinalApproval,this.Type,this.OrderConfirmerPositionType,this.Checked,this.ID});
  @override
  ProcessConfirmer.fromJson(Map<String, dynamic> json):Total = json['Total'],ProcessID = json['ProcessID'],ConfirmerPositionType = json['ConfirmerPositionType'],FinalApproval = json['FinalApproval'],Type = json['Type'],OrderConfirmerPositionType = json['OrderConfirmerPositionType'],Checked = json['Checked'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'ProcessID' : ProcessID,'ConfirmerPositionType' : ConfirmerPositionType,'FinalApproval' : FinalApproval,'Type' : Type,'OrderConfirmerPositionType' : OrderConfirmerPositionType,'Checked' : Checked,'ID' : ID};
}
class Process extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  bool EnableForSave;
  // ignore: non_constant_identifier_names
  bool EnableForConfirm;
  // ignore: non_constant_identifier_names
  bool EnableForFinalConfirm;
  // ignore: non_constant_identifier_names
  String Comment;
  // ignore: non_constant_identifier_names
  String CreatorPositionID;
  // ignore: non_constant_identifier_names
  String CreatorUserID;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  bool ViewAllUsers;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  String ID;
  Process();
  // ignore: non_constant_identifier_names
  Process.setProperty({this.Total,this.Name,this.Type,this.EnableForSave,this.EnableForConfirm,this.EnableForFinalConfirm,this.Comment,this.CreatorPositionID,this.CreatorUserID,this.CreationDate,this.ViewAllUsers,this.Code,this.ID});
  @override
  Process.fromJson(Map<String, dynamic> json):Total = json['Total'],Name = json['Name'],Type = json['Type'],EnableForSave = json['EnableForSave'],EnableForConfirm = json['EnableForConfirm'],EnableForFinalConfirm = json['EnableForFinalConfirm'],Comment = json['Comment'],CreatorPositionID = json['CreatorPositionID'],CreatorUserID = json['CreatorUserID'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),ViewAllUsers = json['ViewAllUsers'],Code = json['Code'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'Name' : Name,'Type' : Type,'EnableForSave' : EnableForSave,'EnableForConfirm' : EnableForConfirm,'EnableForFinalConfirm' : EnableForFinalConfirm,'Comment' : Comment,'CreatorPositionID' : CreatorPositionID,'CreatorUserID' : CreatorUserID,'CreationDate' : CreationDate.toString(),'ViewAllUsers' : ViewAllUsers,'Code' : Code,'ID' : ID};
}
class DepartmentReport extends Model{
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  String FirstParentDepartmentID;
  // ignore: non_constant_identifier_names
  String FirstParentDepartmentName;
  // ignore: non_constant_identifier_names
  String SecondParentDepartmentID;
  // ignore: non_constant_identifier_names
  String SecondParentDepartmentName;
  // ignore: non_constant_identifier_names
  String DepartmentCategoryName;
  // ignore: non_constant_identifier_names
  int EmployeeCount;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  int RasmiPeymaniCount;
  // ignore: non_constant_identifier_names
  int ContractCount;
  // ignore: non_constant_identifier_names
  int PostCount;
  // ignore: non_constant_identifier_names
  String ID;
  DepartmentReport();
  // ignore: non_constant_identifier_names
  DepartmentReport.setProperty({this.DepartmentID,this.DepartmentName,this.FirstParentDepartmentID,this.FirstParentDepartmentName,this.SecondParentDepartmentID,this.SecondParentDepartmentName,this.DepartmentCategoryName,this.EmployeeCount,this.LawName,this.LawID,this.RasmiPeymaniCount,this.ContractCount,this.PostCount,this.ID});
  @override
  DepartmentReport.fromJson(Map<String, dynamic> json):DepartmentID = json['DepartmentID'],DepartmentName = json['DepartmentName'],FirstParentDepartmentID = json['FirstParentDepartmentID'],FirstParentDepartmentName = json['FirstParentDepartmentName'],SecondParentDepartmentID = json['SecondParentDepartmentID'],SecondParentDepartmentName = json['SecondParentDepartmentName'],DepartmentCategoryName = json['DepartmentCategoryName'],EmployeeCount = json['EmployeeCount'],LawName = json['LawName'],LawID = json['LawID'],RasmiPeymaniCount = json['RasmiPeymaniCount'],ContractCount = json['ContractCount'],PostCount = json['PostCount'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'DepartmentID' : DepartmentID,'DepartmentName' : DepartmentName,'FirstParentDepartmentID' : FirstParentDepartmentID,'FirstParentDepartmentName' : FirstParentDepartmentName,'SecondParentDepartmentID' : SecondParentDepartmentID,'SecondParentDepartmentName' : SecondParentDepartmentName,'DepartmentCategoryName' : DepartmentCategoryName,'EmployeeCount' : EmployeeCount,'LawName' : LawName,'LawID' : LawID,'RasmiPeymaniCount' : RasmiPeymaniCount,'ContractCount' : ContractCount,'PostCount' : PostCount,'ID' : ID};
}
class PayrollEmployeeReport extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String PayrollEmployeeID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String WageTitleName;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String FatherName;
  // ignore: non_constant_identifier_names
  String BCNumber;
  // ignore: non_constant_identifier_names
  int Gender;
  // ignore: non_constant_identifier_names
  DateTime BirthDate;
  // ignore: non_constant_identifier_names
  int SelfLess;
  // ignore: non_constant_identifier_names
  String PayrollID;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  String EmployeeID;
  // ignore: non_constant_identifier_names
  int PostLevel;
  // ignore: non_constant_identifier_names
  int ServiceYears;
  // ignore: non_constant_identifier_names
  int ServiceYearsType;
  // ignore: non_constant_identifier_names
  int EducationDegree;
  // ignore: non_constant_identifier_names
  int EmploymentType;
  // ignore: non_constant_identifier_names
  int JobBase;
  // ignore: non_constant_identifier_names
  BigInt SumPayments;
  // ignore: non_constant_identifier_names
  BigInt SumDeductions;
  // ignore: non_constant_identifier_names
  BigInt Sum;
  // ignore: non_constant_identifier_names
  BigInt Salary;
  // ignore: non_constant_identifier_names
  BigInt Continuous;
  // ignore: non_constant_identifier_names
  BigInt NonContinuous;
  // ignore: non_constant_identifier_names
  BigInt Reward;
  // ignore: non_constant_identifier_names
  BigInt Welfare;
  // ignore: non_constant_identifier_names
  BigInt Other;
  // ignore: non_constant_identifier_names
  BigInt Deductions;
  // ignore: non_constant_identifier_names
  BigInt SumHokm;
  // ignore: non_constant_identifier_names
  BigInt SumNHokm;
  // ignore: non_constant_identifier_names
  String PostTitle;
  // ignore: non_constant_identifier_names
  String PostNumber;
  // ignore: non_constant_identifier_names
  String ID;
  PayrollEmployeeReport();
  // ignore: non_constant_identifier_names
  PayrollEmployeeReport.setProperty({this.Total,this.OrganID,this.PayrollEmployeeID,this.OrganName,this.WageTitleName,this.LawID,this.LawName,this.NationalCode,this.FirstName,this.LastName,this.FatherName,this.BCNumber,this.Gender,this.BirthDate,this.SelfLess,this.PayrollID,this.Year,this.Month,this.EmployeeID,this.PostLevel,this.ServiceYears,this.ServiceYearsType,this.EducationDegree,this.EmploymentType,this.JobBase,this.SumPayments,this.SumDeductions,this.Sum,this.Salary,this.Continuous,this.NonContinuous,this.Reward,this.Welfare,this.Other,this.Deductions,this.SumHokm,this.SumNHokm,this.PostTitle,this.PostNumber,this.ID});
  @override
  PayrollEmployeeReport.fromJson(Map<String, dynamic> json):Total = json['Total'],OrganID = json['OrganID'],PayrollEmployeeID = json['PayrollEmployeeID'],OrganName = json['OrganName'],WageTitleName = json['WageTitleName'],LawID = json['LawID'],LawName = json['LawName'],NationalCode = json['NationalCode'],FirstName = json['FirstName'],LastName = json['LastName'],FatherName = json['FatherName'],BCNumber = json['BCNumber'],Gender = json['Gender'],BirthDate = AppDateTime.stringToDateTime(json['BirthDate']),SelfLess = json['SelfLess'],PayrollID = json['PayrollID'],Year = json['Year'],Month = json['Month'],EmployeeID = json['EmployeeID'],PostLevel = json['PostLevel'],ServiceYears = json['ServiceYears'],ServiceYearsType = json['ServiceYearsType'],EducationDegree = json['EducationDegree'],EmploymentType = json['EmploymentType'],JobBase = json['JobBase'],SumPayments = new BigInt.from(json['SumPayments']),SumDeductions = new BigInt.from(json['SumDeductions']),Sum = new BigInt.from(json['Sum']),Salary = new BigInt.from(json['Salary']),Continuous = new BigInt.from(json['Continuous']),NonContinuous = new BigInt.from(json['NonContinuous']),Reward = new BigInt.from(json['Reward']),Welfare = new BigInt.from(json['Welfare']),Other = new BigInt.from(json['Other']),Deductions = new BigInt.from(json['Deductions']),SumHokm = new BigInt.from(json['SumHokm']),SumNHokm = new BigInt.from(json['SumNHokm']),PostTitle = json['PostTitle'],PostNumber = json['PostNumber'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'OrganID' : OrganID,'PayrollEmployeeID' : PayrollEmployeeID,'OrganName' : OrganName,'WageTitleName' : WageTitleName,'LawID' : LawID,'LawName' : LawName,'NationalCode' : NationalCode,'FirstName' : FirstName,'LastName' : LastName,'FatherName' : FatherName,'BCNumber' : BCNumber,'Gender' : Gender,'BirthDate' : BirthDate.toString(),'SelfLess' : SelfLess,'PayrollID' : PayrollID,'Year' : Year,'Month' : Month,'EmployeeID' : EmployeeID,'PostLevel' : PostLevel,'ServiceYears' : ServiceYears,'ServiceYearsType' : ServiceYearsType,'EducationDegree' : EducationDegree,'EmploymentType' : EmploymentType,'JobBase' : JobBase,'SumPayments' : SumPayments,'SumDeductions' : SumDeductions,'Sum' : Sum,'Salary' : Salary,'Continuous' : Continuous,'NonContinuous' : NonContinuous,'Reward' : Reward,'Welfare' : Welfare,'Other' : Other,'Deductions' : Deductions,'SumHokm' : SumHokm,'SumNHokm' : SumNHokm,'PostTitle' : PostTitle,'PostNumber' : PostNumber,'ID' : ID};
}
class DeletedPayrollReport extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String RemoverUserID;
  // ignore: non_constant_identifier_names
  String RemoverUserName;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  BigInt Minimum;
  // ignore: non_constant_identifier_names
  BigInt Maximum;
  // ignore: non_constant_identifier_names
  BigInt Average;
  // ignore: non_constant_identifier_names
  String ToUserName;
  // ignore: non_constant_identifier_names
  String ToOrganID;
  // ignore: non_constant_identifier_names
  String ToOrganName;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  DateTime RemoveDate;
  // ignore: non_constant_identifier_names
  String FileName;
  // ignore: non_constant_identifier_names
  DateTime ConfirmDate;
  // ignore: non_constant_identifier_names
  String Attachment;
  // ignore: non_constant_identifier_names
  int EmployeesCount;
  // ignore: non_constant_identifier_names
  DateTime SalaryUpdateDate;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int SubType;
  // ignore: non_constant_identifier_names
  String MainOrganName;
  // ignore: non_constant_identifier_names
  List<PayrollEmployee> Employees;
  // ignore: non_constant_identifier_names
  List<PayrollDetail> Details;
  // ignore: non_constant_identifier_names
  List<String> PayrollWageTitles;
  // ignore: non_constant_identifier_names
  List<String> PivotDetails;
  // ignore: non_constant_identifier_names
  String ToPositionID;
  // ignore: non_constant_identifier_names
  int PayrollType;
  // ignore: non_constant_identifier_names
  String ID;
  DeletedPayrollReport();
  // ignore: non_constant_identifier_names
  DeletedPayrollReport.setProperty({this.Total,this.RemoverUserID,this.RemoverUserName,this.OrganID,this.OrganName,this.LawID,this.LawName,this.Year,this.Month,this.Minimum,this.Maximum,this.Average,this.ToUserName,this.ToOrganID,this.ToOrganName,this.CreationDate,this.RemoveDate,this.FileName,this.ConfirmDate,this.Attachment,this.EmployeesCount,this.SalaryUpdateDate,this.Type,this.SubType,this.MainOrganName,this.Employees,this.Details,this.PayrollWageTitles,this.PivotDetails,this.ToPositionID,this.PayrollType,this.ID});
  @override
  DeletedPayrollReport.fromJson(Map<String, dynamic> json):Total = json['Total'],RemoverUserID = json['RemoverUserID'],RemoverUserName = json['RemoverUserName'],OrganID = json['OrganID'],OrganName = json['OrganName'],LawID = json['LawID'],LawName = json['LawName'],Year = json['Year'],Month = json['Month'],Minimum = new BigInt.from(json['Minimum']),Maximum = new BigInt.from(json['Maximum']),Average = new BigInt.from(json['Average']),ToUserName = json['ToUserName'],ToOrganID = json['ToOrganID'],ToOrganName = json['ToOrganName'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),RemoveDate = AppDateTime.stringToDateTime(json['RemoveDate']),FileName = json['FileName'],ConfirmDate = AppDateTime.stringToDateTime(json['ConfirmDate']),Attachment = json['Attachment'],EmployeesCount = json['EmployeesCount'],SalaryUpdateDate = AppDateTime.stringToDateTime(json['SalaryUpdateDate']),Type = json['Type'],SubType = json['SubType'],MainOrganName = json['MainOrganName'],Employees = json['Employees'] != null ?List<PayrollEmployee>.from(json['Employees'].map((x) => PayrollEmployee.fromJson(x))):[],Details = json['Details'] != null ?List<PayrollDetail>.from(json['Details'].map((x) => PayrollDetail.fromJson(x))):[],PayrollWageTitles = json['PayrollWageTitles'] != null ? List<String>.from(json['PayrollWageTitles'].map((x) => x)):[],PivotDetails = json['PivotDetails'] != null ? List<String>.from(json['PivotDetails'].map((x) => x)):[],ToPositionID = json['ToPositionID'],PayrollType = json['PayrollType'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'RemoverUserID' : RemoverUserID,'RemoverUserName' : RemoverUserName,'OrganID' : OrganID,'OrganName' : OrganName,'LawID' : LawID,'LawName' : LawName,'Year' : Year,'Month' : Month,'Minimum' : Minimum,'Maximum' : Maximum,'Average' : Average,'ToUserName' : ToUserName,'ToOrganID' : ToOrganID,'ToOrganName' : ToOrganName,'CreationDate' : CreationDate.toString(),'RemoveDate' : RemoveDate.toString(),'FileName' : FileName,'ConfirmDate' : ConfirmDate.toString(),'Attachment' : Attachment,'EmployeesCount' : EmployeesCount,'SalaryUpdateDate' : SalaryUpdateDate.toString(),'Type' : Type,'SubType' : SubType,'MainOrganName' : MainOrganName,'Employees ': Employees != null ? List<dynamic>.from(Employees.map((x) => x.toJson())):[],'Details ': Details != null ? List<dynamic>.from(Details.map((x) => x.toJson())):[],'PayrollWageTitles ': PayrollWageTitles != null ? List<String>.from(PayrollWageTitles.map((x) => x)):[],'PivotDetails ': PivotDetails != null ? List<String>.from(PivotDetails.map((x) => x)):[],'ToPositionID' : ToPositionID,'PayrollType' : PayrollType,'ID' : ID};
}
class EmployeePerPayroll extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String PayrollID;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  String PayrollLawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  String FullName;
  // ignore: non_constant_identifier_names
  int EmployeeCount;
  // ignore: non_constant_identifier_names
  int EmployeeInPayrollCount;
  // ignore: non_constant_identifier_names
  String ID;
  EmployeePerPayroll();
  // ignore: non_constant_identifier_names
  EmployeePerPayroll.setProperty({this.Total,this.OrganID,this.PayrollID,this.DepartmentName,this.PayrollLawID,this.LawName,this.FullName,this.EmployeeCount,this.EmployeeInPayrollCount,this.ID});
  @override
  EmployeePerPayroll.fromJson(Map<String, dynamic> json):Total = json['Total'],OrganID = json['OrganID'],PayrollID = json['PayrollID'],DepartmentName = json['DepartmentName'],PayrollLawID = json['PayrollLawID'],LawName = json['LawName'],FullName = json['FullName'],EmployeeCount = json['EmployeeCount'],EmployeeInPayrollCount = json['EmployeeInPayrollCount'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'OrganID' : OrganID,'PayrollID' : PayrollID,'DepartmentName' : DepartmentName,'PayrollLawID' : PayrollLawID,'LawName' : LawName,'FullName' : FullName,'EmployeeCount' : EmployeeCount,'EmployeeInPayrollCount' : EmployeeInPayrollCount,'ID' : ID};
}
class PayrollEmployeeWithDetailsReport extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String PayrollEmployeeID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String WageTitleName;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String FatherName;
  // ignore: non_constant_identifier_names
  String BCNumber;
  // ignore: non_constant_identifier_names
  int Gender;
  // ignore: non_constant_identifier_names
  DateTime BirthDate;
  // ignore: non_constant_identifier_names
  int SelfLess;
  // ignore: non_constant_identifier_names
  String PayrollID;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  String EmployeeID;
  // ignore: non_constant_identifier_names
  int PostLevel;
  // ignore: non_constant_identifier_names
  int ServiceYears;
  // ignore: non_constant_identifier_names
  int ServiceYearsType;
  // ignore: non_constant_identifier_names
  int EducationDegree;
  // ignore: non_constant_identifier_names
  int EmploymentType;
  // ignore: non_constant_identifier_names
  int JobBase;
  // ignore: non_constant_identifier_names
  int SumPayments;
  // ignore: non_constant_identifier_names
  int SumDeductions;
  // ignore: non_constant_identifier_names
  int Sum;
  // ignore: non_constant_identifier_names
  String ID;
  PayrollEmployeeWithDetailsReport();
  // ignore: non_constant_identifier_names
  PayrollEmployeeWithDetailsReport.setProperty({this.Total,this.OrganID,this.PayrollEmployeeID,this.OrganName,this.WageTitleName,this.LawID,this.LawName,this.NationalCode,this.FirstName,this.LastName,this.FatherName,this.BCNumber,this.Gender,this.BirthDate,this.SelfLess,this.PayrollID,this.Year,this.Month,this.EmployeeID,this.PostLevel,this.ServiceYears,this.ServiceYearsType,this.EducationDegree,this.EmploymentType,this.JobBase,this.SumPayments,this.SumDeductions,this.Sum,this.ID});
  @override
  PayrollEmployeeWithDetailsReport.fromJson(Map<String, dynamic> json):Total = json['Total'],OrganID = json['OrganID'],PayrollEmployeeID = json['PayrollEmployeeID'],OrganName = json['OrganName'],WageTitleName = json['WageTitleName'],LawID = json['LawID'],LawName = json['LawName'],NationalCode = json['NationalCode'],FirstName = json['FirstName'],LastName = json['LastName'],FatherName = json['FatherName'],BCNumber = json['BCNumber'],Gender = json['Gender'],BirthDate = AppDateTime.stringToDateTime(json['BirthDate']),SelfLess = json['SelfLess'],PayrollID = json['PayrollID'],Year = json['Year'],Month = json['Month'],EmployeeID = json['EmployeeID'],PostLevel = json['PostLevel'],ServiceYears = json['ServiceYears'],ServiceYearsType = json['ServiceYearsType'],EducationDegree = json['EducationDegree'],EmploymentType = json['EmploymentType'],JobBase = json['JobBase'],SumPayments = json['SumPayments'],SumDeductions = json['SumDeductions'],Sum = json['Sum'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'OrganID' : OrganID,'PayrollEmployeeID' : PayrollEmployeeID,'OrganName' : OrganName,'WageTitleName' : WageTitleName,'LawID' : LawID,'LawName' : LawName,'NationalCode' : NationalCode,'FirstName' : FirstName,'LastName' : LastName,'FatherName' : FatherName,'BCNumber' : BCNumber,'Gender' : Gender,'BirthDate' : BirthDate.toString(),'SelfLess' : SelfLess,'PayrollID' : PayrollID,'Year' : Year,'Month' : Month,'EmployeeID' : EmployeeID,'PostLevel' : PostLevel,'ServiceYears' : ServiceYears,'ServiceYearsType' : ServiceYearsType,'EducationDegree' : EducationDegree,'EmploymentType' : EmploymentType,'JobBase' : JobBase,'SumPayments' : SumPayments,'SumDeductions' : SumDeductions,'Sum' : Sum,'ID' : ID};
}
class PayrollEmployeeWithDetailsReport_ extends Model{
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String WageTitleName;
  // ignore: non_constant_identifier_names
  String WageTitleCode;
  // ignore: non_constant_identifier_names
  String WageTitleGroupName;
  // ignore: non_constant_identifier_names
  String WageTitleGroupCode;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  int PostLevel;
  // ignore: non_constant_identifier_names
  int EducationDegree;
  // ignore: non_constant_identifier_names
  int EmploymentType;
  // ignore: non_constant_identifier_names
  int JobBase;
  // ignore: non_constant_identifier_names
  int Gender;
  // ignore: non_constant_identifier_names
  double AvgAmount;
  // ignore: non_constant_identifier_names
  double YearAvgAmount;
  // ignore: non_constant_identifier_names
  double MaxAmount;
  // ignore: non_constant_identifier_names
  double MinAmount;
  // ignore: non_constant_identifier_names
  int EmployeeCount;
  // ignore: non_constant_identifier_names
  String ID;
  PayrollEmployeeWithDetailsReport_();
  // ignore: non_constant_identifier_names
  PayrollEmployeeWithDetailsReport_.setProperty({this.OrganName,this.WageTitleName,this.WageTitleCode,this.WageTitleGroupName,this.WageTitleGroupCode,this.Year,this.Month,this.PostLevel,this.EducationDegree,this.EmploymentType,this.JobBase,this.Gender,this.AvgAmount,this.YearAvgAmount,this.MaxAmount,this.MinAmount,this.EmployeeCount,this.ID});
  @override
  PayrollEmployeeWithDetailsReport_.fromJson(Map<String, dynamic> json):OrganName = json['OrganName'],WageTitleName = json['WageTitleName'],WageTitleCode = json['WageTitleCode'],WageTitleGroupName = json['WageTitleGroupName'],WageTitleGroupCode = json['WageTitleGroupCode'],Year = json['Year'],Month = json['Month'],PostLevel = json['PostLevel'],EducationDegree = json['EducationDegree'],EmploymentType = json['EmploymentType'],JobBase = json['JobBase'],Gender = json['Gender'],AvgAmount = json['AvgAmount'],YearAvgAmount = json['YearAvgAmount'],MaxAmount = json['MaxAmount'],MinAmount = json['MinAmount'],EmployeeCount = json['EmployeeCount'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'OrganName' : OrganName,'WageTitleName' : WageTitleName,'WageTitleCode' : WageTitleCode,'WageTitleGroupName' : WageTitleGroupName,'WageTitleGroupCode' : WageTitleGroupCode,'Year' : Year,'Month' : Month,'PostLevel' : PostLevel,'EducationDegree' : EducationDegree,'EmploymentType' : EmploymentType,'JobBase' : JobBase,'Gender' : Gender,'AvgAmount' : AvgAmount,'YearAvgAmount' : YearAvgAmount,'MaxAmount' : MaxAmount,'MinAmount' : MinAmount,'EmployeeCount' : EmployeeCount,'ID' : ID};
}
class PayrollExcelVM extends Model{
  // ignore: non_constant_identifier_names
  int RowIndex;
  // ignore: non_constant_identifier_names
  String RawNationalCode;
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String PostLevelString;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  String PostName;
  // ignore: non_constant_identifier_names
  int PostLevel;
  // ignore: non_constant_identifier_names
  bool PostLevelIsValid;
  // ignore: non_constant_identifier_names
  String JobBaseString;
  // ignore: non_constant_identifier_names
  int JobBase;
  // ignore: non_constant_identifier_names
  bool JobBaseIsValid;
  // ignore: non_constant_identifier_names
  String EducationDegreeString;
  // ignore: non_constant_identifier_names
  int EducationDegree;
  // ignore: non_constant_identifier_names
  bool EducationDegreeIsValid;
  // ignore: non_constant_identifier_names
  String EmploymentTypeString;
  // ignore: non_constant_identifier_names
  int EmploymentType;
  // ignore: non_constant_identifier_names
  bool EmploymentTypeIsValid;
  // ignore: non_constant_identifier_names
  String ServiceYearsString;
  // ignore: non_constant_identifier_names
  String OrganCode;
  // ignore: non_constant_identifier_names
  int ServiceYears;
  // ignore: non_constant_identifier_names
  String EmployeeID;
  // ignore: non_constant_identifier_names
  int ServiceYearsType;
  // ignore: non_constant_identifier_names
  bool ServiceYearsIsValid;
  // ignore: non_constant_identifier_names
  List<PayrollExcelWageTitleVM> WageTitles;
  // ignore: non_constant_identifier_names
  BigInt SumPayments;
  // ignore: non_constant_identifier_names
  BigInt SumDeductions;
  // ignore: non_constant_identifier_names
  BigInt Sum;
  // ignore: non_constant_identifier_names
  String ID;
  PayrollExcelVM();
  // ignore: non_constant_identifier_names
  PayrollExcelVM.setProperty({this.RowIndex,this.RawNationalCode,this.IndividualID,this.NationalCode,this.PostLevelString,this.Year,this.PostName,this.PostLevel,this.PostLevelIsValid,this.JobBaseString,this.JobBase,this.JobBaseIsValid,this.EducationDegreeString,this.EducationDegree,this.EducationDegreeIsValid,this.EmploymentTypeString,this.EmploymentType,this.EmploymentTypeIsValid,this.ServiceYearsString,this.OrganCode,this.ServiceYears,this.EmployeeID,this.ServiceYearsType,this.ServiceYearsIsValid,this.WageTitles,this.SumPayments,this.SumDeductions,this.Sum,this.ID});
  @override
  PayrollExcelVM.fromJson(Map<String, dynamic> json):RowIndex = json['RowIndex'],RawNationalCode = json['RawNationalCode'],IndividualID = json['IndividualID'],NationalCode = json['NationalCode'],PostLevelString = json['PostLevelString'],Year = json['Year'],PostName = json['PostName'],PostLevel = json['PostLevel'],PostLevelIsValid = json['PostLevelIsValid'],JobBaseString = json['JobBaseString'],JobBase = json['JobBase'],JobBaseIsValid = json['JobBaseIsValid'],EducationDegreeString = json['EducationDegreeString'],EducationDegree = json['EducationDegree'],EducationDegreeIsValid = json['EducationDegreeIsValid'],EmploymentTypeString = json['EmploymentTypeString'],EmploymentType = json['EmploymentType'],EmploymentTypeIsValid = json['EmploymentTypeIsValid'],ServiceYearsString = json['ServiceYearsString'],OrganCode = json['OrganCode'],ServiceYears = json['ServiceYears'],EmployeeID = json['EmployeeID'],ServiceYearsType = json['ServiceYearsType'],ServiceYearsIsValid = json['ServiceYearsIsValid'],WageTitles = json['WageTitles'] != null ?List<PayrollExcelWageTitleVM>.from(json['WageTitles'].map((x) => PayrollExcelWageTitleVM.fromJson(x))):[],SumPayments = new BigInt.from(json['SumPayments']),SumDeductions = new BigInt.from(json['SumDeductions']),Sum = new BigInt.from(json['Sum']),ID = json['ID'];
  Map<String, dynamic> toJson() =>{'RowIndex' : RowIndex,'RawNationalCode' : RawNationalCode,'IndividualID' : IndividualID,'NationalCode' : NationalCode,'PostLevelString' : PostLevelString,'Year' : Year,'PostName' : PostName,'PostLevel' : PostLevel,'PostLevelIsValid' : PostLevelIsValid,'JobBaseString' : JobBaseString,'JobBase' : JobBase,'JobBaseIsValid' : JobBaseIsValid,'EducationDegreeString' : EducationDegreeString,'EducationDegree' : EducationDegree,'EducationDegreeIsValid' : EducationDegreeIsValid,'EmploymentTypeString' : EmploymentTypeString,'EmploymentType' : EmploymentType,'EmploymentTypeIsValid' : EmploymentTypeIsValid,'ServiceYearsString' : ServiceYearsString,'OrganCode' : OrganCode,'ServiceYears' : ServiceYears,'EmployeeID' : EmployeeID,'ServiceYearsType' : ServiceYearsType,'ServiceYearsIsValid' : ServiceYearsIsValid,'WageTitles ': WageTitles != null ? List<dynamic>.from(WageTitles.map((x) => x.toJson())):[],'SumPayments' : SumPayments,'SumDeductions' : SumDeductions,'Sum' : Sum,'ID' : ID};
}
class PayrollExcelWageTitleVM extends Model{
  // ignore: non_constant_identifier_names
  int IncomeType;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  String ValueString;
  // ignore: non_constant_identifier_names
  BigInt Value;
  // ignore: non_constant_identifier_names
  String ID;
  PayrollExcelWageTitleVM();
  // ignore: non_constant_identifier_names
  PayrollExcelWageTitleVM.setProperty({this.IncomeType,this.Code,this.ValueString,this.Value,this.ID});
  @override
  PayrollExcelWageTitleVM.fromJson(Map<String, dynamic> json):IncomeType = json['IncomeType'],Code = json['Code'],ValueString = json['ValueString'],Value = new BigInt.from(json['Value']),ID = json['ID'];
  Map<String, dynamic> toJson() =>{'IncomeType' : IncomeType,'Code' : Code,'ValueString' : ValueString,'Value' : Value,'ID' : ID};
}
class PayrollSubsets extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  String ID;
  PayrollSubsets();
  // ignore: non_constant_identifier_names
  PayrollSubsets.setProperty({this.Total,this.Year,this.Month,this.ID});
  @override
  PayrollSubsets.fromJson(Map<String, dynamic> json):Total = json['Total'],Year = json['Year'],Month = json['Month'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'Year' : Year,'Month' : Month,'ID' : ID};
}
class PayrollWarning extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String PayrollID;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String ErrorLine;
  // ignore: non_constant_identifier_names
  String ErrorDescriptions;
  // ignore: non_constant_identifier_names
  DateTime CreateDateTime;
  // ignore: non_constant_identifier_names
  String ID;
  PayrollWarning();
  // ignore: non_constant_identifier_names
  PayrollWarning.setProperty({this.Total,this.PayrollID,this.NationalCode,this.FirstName,this.LastName,this.ErrorLine,this.ErrorDescriptions,this.CreateDateTime,this.ID});
  @override
  PayrollWarning.fromJson(Map<String, dynamic> json):Total = json['Total'],PayrollID = json['PayrollID'],NationalCode = json['NationalCode'],FirstName = json['FirstName'],LastName = json['LastName'],ErrorLine = json['ErrorLine'],ErrorDescriptions = json['ErrorDescriptions'],CreateDateTime = AppDateTime.stringToDateTime(json['CreateDateTime']),ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'PayrollID' : PayrollID,'NationalCode' : NationalCode,'FirstName' : FirstName,'LastName' : LastName,'ErrorLine' : ErrorLine,'ErrorDescriptions' : ErrorDescriptions,'CreateDateTime' : CreateDateTime.toString(),'ID' : ID};
}
class SalaryPublish extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  String PublishUrl;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  String ID;
  SalaryPublish();
  // ignore: non_constant_identifier_names
  SalaryPublish.setProperty({this.Total,this.OrganID,this.OrganName,this.Year,this.Month,this.PublishUrl,this.CreationDate,this.ID});
  @override
  SalaryPublish.fromJson(Map<String, dynamic> json):Total = json['Total'],OrganID = json['OrganID'],OrganName = json['OrganName'],Year = json['Year'],Month = json['Month'],PublishUrl = json['PublishUrl'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'OrganID' : OrganID,'OrganName' : OrganName,'Year' : Year,'Month' : Month,'PublishUrl' : PublishUrl,'CreationDate' : CreationDate.toString(),'ID' : ID};
}
class PayrollReport extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  int EmployeesCount;
  // ignore: non_constant_identifier_names
  double Minimum;
  // ignore: non_constant_identifier_names
  double Maximum;
  // ignore: non_constant_identifier_names
  double Average;
  // ignore: non_constant_identifier_names
  DateTime ConfirmDate;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  String ID;
  PayrollReport();
  // ignore: non_constant_identifier_names
  PayrollReport.setProperty({this.Total,this.OrganID,this.OrganName,this.LawID,this.LawName,this.Year,this.Month,this.EmployeesCount,this.Minimum,this.Maximum,this.Average,this.ConfirmDate,this.CreationDate,this.ID});
  @override
  PayrollReport.fromJson(Map<String, dynamic> json):Total = json['Total'],OrganID = json['OrganID'],OrganName = json['OrganName'],LawID = json['LawID'],LawName = json['LawName'],Year = json['Year'],Month = json['Month'],EmployeesCount = json['EmployeesCount'],Minimum = json['Minimum'],Maximum = json['Maximum'],Average = json['Average'],ConfirmDate = AppDateTime.stringToDateTime(json['ConfirmDate']),CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'OrganID' : OrganID,'OrganName' : OrganName,'LawID' : LawID,'LawName' : LawName,'Year' : Year,'Month' : Month,'EmployeesCount' : EmployeesCount,'Minimum' : Minimum,'Maximum' : Maximum,'Average' : Average,'ConfirmDate' : ConfirmDate.toString(),'CreationDate' : CreationDate.toString(),'ID' : ID};
}
class OrganEmployeeCountListVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganCode;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  String ID;
  OrganEmployeeCountListVM();
  // ignore: non_constant_identifier_names
  OrganEmployeeCountListVM.setProperty({this.OrganID,this.OrganCode,this.OrganName,this.PageSize,this.PageIndex,this.ID});
  @override
  OrganEmployeeCountListVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],OrganCode = json['OrganCode'],OrganName = json['OrganName'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'OrganCode' : OrganCode,'OrganName' : OrganName,'PageSize' : PageSize,'PageIndex' : PageIndex,'ID' : ID};
}
class OrganEmployeeCount extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String OrganCode;
  // ignore: non_constant_identifier_names
  int Count;
  // ignore: non_constant_identifier_names
  String ID;
  OrganEmployeeCount();
  // ignore: non_constant_identifier_names
  OrganEmployeeCount.setProperty({this.Total,this.OrganID,this.OrganName,this.OrganCode,this.Count,this.ID});
  @override
  OrganEmployeeCount.fromJson(Map<String, dynamic> json):Total = json['Total'],OrganID = json['OrganID'],OrganName = json['OrganName'],OrganCode = json['OrganCode'],Count = json['Count'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'OrganID' : OrganID,'OrganName' : OrganName,'OrganCode' : OrganCode,'Count' : Count,'ID' : ID};
}
class FlowPrerequisite extends Model{
  // ignore: non_constant_identifier_names
  int LastDocState;
  // ignore: non_constant_identifier_names
  String LastToPositionID;
  // ignore: non_constant_identifier_names
  String OrganExpertPositionID;
  // ignore: non_constant_identifier_names
  String OrganFinancialManagerPositionID;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String ParentOrganFinancialManagerPositionID;
  // ignore: non_constant_identifier_names
  bool CurrentOrganIndependent;
  // ignore: non_constant_identifier_names
  bool CurrentOrganSubsetIndependent;
  // ignore: non_constant_identifier_names
  String ID;
  FlowPrerequisite();
  // ignore: non_constant_identifier_names
  FlowPrerequisite.setProperty({this.LastDocState,this.LastToPositionID,this.OrganExpertPositionID,this.OrganFinancialManagerPositionID,this.Year,this.OrganName,this.ParentOrganFinancialManagerPositionID,this.CurrentOrganIndependent,this.CurrentOrganSubsetIndependent,this.ID});
  @override
  FlowPrerequisite.fromJson(Map<String, dynamic> json):LastDocState = json['LastDocState'],LastToPositionID = json['LastToPositionID'],OrganExpertPositionID = json['OrganExpertPositionID'],OrganFinancialManagerPositionID = json['OrganFinancialManagerPositionID'],Year = json['Year'],OrganName = json['OrganName'],ParentOrganFinancialManagerPositionID = json['ParentOrganFinancialManagerPositionID'],CurrentOrganIndependent = json['CurrentOrganIndependent'],CurrentOrganSubsetIndependent = json['CurrentOrganSubsetIndependent'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'LastDocState' : LastDocState,'LastToPositionID' : LastToPositionID,'OrganExpertPositionID' : OrganExpertPositionID,'OrganFinancialManagerPositionID' : OrganFinancialManagerPositionID,'Year' : Year,'OrganName' : OrganName,'ParentOrganFinancialManagerPositionID' : ParentOrganFinancialManagerPositionID,'CurrentOrganIndependent' : CurrentOrganIndependent,'CurrentOrganSubsetIndependent' : CurrentOrganSubsetIndependent,'ID' : ID};
}
class EmployeeCount extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  int State1Count;
  // ignore: non_constant_identifier_names
  int State2Count;
  // ignore: non_constant_identifier_names
  int State3Count;
  // ignore: non_constant_identifier_names
  int State4Count;
  // ignore: non_constant_identifier_names
  int State5Count;
  // ignore: non_constant_identifier_names
  String ID;
  EmployeeCount();
  // ignore: non_constant_identifier_names
  EmployeeCount.setProperty({this.OrganID,this.State1Count,this.State2Count,this.State3Count,this.State4Count,this.State5Count,this.ID});
  @override
  EmployeeCount.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],State1Count = json['State1Count'],State2Count = json['State2Count'],State3Count = json['State3Count'],State4Count = json['State4Count'],State5Count = json['State5Count'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'State1Count' : State1Count,'State2Count' : State2Count,'State3Count' : State3Count,'State4Count' : State4Count,'State5Count' : State5Count,'ID' : ID};
}
class PayrollEmployee extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  List<String> OrganIDs;
  // ignore: non_constant_identifier_names
  String PayrollEmployeeID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String FatherName;
  // ignore: non_constant_identifier_names
  String BCNumber;
  // ignore: non_constant_identifier_names
  int Gender;
  // ignore: non_constant_identifier_names
  DateTime BirthDate;
  // ignore: non_constant_identifier_names
  int SelfLess;
  // ignore: non_constant_identifier_names
  String PayrollID;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  String EmployeeID;
  // ignore: non_constant_identifier_names
  int PostLevel;
  // ignore: non_constant_identifier_names
  int ServiceYears;
  // ignore: non_constant_identifier_names
  int ServiceYearsType;
  // ignore: non_constant_identifier_names
  int EducationDegree;
  // ignore: non_constant_identifier_names
  int EmploymentType;
  // ignore: non_constant_identifier_names
  int JobBase;
  // ignore: non_constant_identifier_names
  BigInt SumPayments;
  // ignore: non_constant_identifier_names
  BigInt SumDeductions;
  // ignore: non_constant_identifier_names
  BigInt Sum;
  // ignore: non_constant_identifier_names
  BigInt Salary;
  // ignore: non_constant_identifier_names
  BigInt Continuous;
  // ignore: non_constant_identifier_names
  BigInt NonContinuous;
  // ignore: non_constant_identifier_names
  BigInt Reward;
  // ignore: non_constant_identifier_names
  BigInt Welfare;
  // ignore: non_constant_identifier_names
  BigInt Other;
  // ignore: non_constant_identifier_names
  BigInt Deductions;
  // ignore: non_constant_identifier_names
  BigInt SumHokm;
  // ignore: non_constant_identifier_names
  BigInt SumNHokm;
  // ignore: non_constant_identifier_names
  bool HasPayroll;
  // ignore: non_constant_identifier_names
  String PostTitle;
  // ignore: non_constant_identifier_names
  String PostNumber;
  // ignore: non_constant_identifier_names
  int PayrollType;
  // ignore: non_constant_identifier_names
  String OrganSubSetName;
  // ignore: non_constant_identifier_names
  String OrganSubSetID;
  // ignore: non_constant_identifier_names
  int PostUniqueID;
  // ignore: non_constant_identifier_names
  String PostName;
  // ignore: non_constant_identifier_names
  String Description;
  // ignore: non_constant_identifier_names
  int PostTypeCategory;
  // ignore: non_constant_identifier_names
  int PostManagementType;
  // ignore: non_constant_identifier_names
  int PostCategory;
  // ignore: non_constant_identifier_names
  int PostPositionType;
  // ignore: non_constant_identifier_names
  String OrganCode;
  // ignore: non_constant_identifier_names
  List<PayrollDetail> PayrollDetails;
  // ignore: non_constant_identifier_names
  String ID;
  PayrollEmployee();
  // ignore: non_constant_identifier_names
  PayrollEmployee.setProperty({this.Total,this.OrganID,this.OrganIDs,this.PayrollEmployeeID,this.OrganName,this.LawID,this.LawName,this.NationalCode,this.FirstName,this.LastName,this.FatherName,this.BCNumber,this.Gender,this.BirthDate,this.SelfLess,this.PayrollID,this.Year,this.Month,this.EmployeeID,this.PostLevel,this.ServiceYears,this.ServiceYearsType,this.EducationDegree,this.EmploymentType,this.JobBase,this.SumPayments,this.SumDeductions,this.Sum,this.Salary,this.Continuous,this.NonContinuous,this.Reward,this.Welfare,this.Other,this.Deductions,this.SumHokm,this.SumNHokm,this.HasPayroll,this.PostTitle,this.PostNumber,this.PayrollType,this.OrganSubSetName,this.OrganSubSetID,this.PostUniqueID,this.PostName,this.Description,this.PostTypeCategory,this.PostManagementType,this.PostCategory,this.PostPositionType,this.OrganCode,this.PayrollDetails,this.ID});
  @override
  PayrollEmployee.fromJson(Map<String, dynamic> json):Total = json['Total'],OrganID = json['OrganID'],OrganIDs = json['OrganIDs'] != null ? List<String>.from(json['OrganIDs'].map((x) => x)):[],PayrollEmployeeID = json['PayrollEmployeeID'],OrganName = json['OrganName'],LawID = json['LawID'],LawName = json['LawName'],NationalCode = json['NationalCode'],FirstName = json['FirstName'],LastName = json['LastName'],FatherName = json['FatherName'],BCNumber = json['BCNumber'],Gender = json['Gender'],BirthDate = AppDateTime.stringToDateTime(json['BirthDate']),SelfLess = json['SelfLess'],PayrollID = json['PayrollID'],Year = json['Year'],Month = json['Month'],EmployeeID = json['EmployeeID'],PostLevel = json['PostLevel'],ServiceYears = json['ServiceYears'],ServiceYearsType = json['ServiceYearsType'],EducationDegree = json['EducationDegree'],EmploymentType = json['EmploymentType'],JobBase = json['JobBase'],SumPayments = new BigInt.from(json['SumPayments']),SumDeductions = new BigInt.from(json['SumDeductions']),Sum = new BigInt.from(json['Sum']),Salary = new BigInt.from(json['Salary']),Continuous = new BigInt.from(json['Continuous']),NonContinuous = new BigInt.from(json['NonContinuous']),Reward = new BigInt.from(json['Reward']),Welfare = new BigInt.from(json['Welfare']),Other = new BigInt.from(json['Other']),Deductions = new BigInt.from(json['Deductions']),SumHokm = new BigInt.from(json['SumHokm']),SumNHokm = new BigInt.from(json['SumNHokm']),HasPayroll = json['HasPayroll'],PostTitle = json['PostTitle'],PostNumber = json['PostNumber'],PayrollType = json['PayrollType'],OrganSubSetName = json['OrganSubSetName'],OrganSubSetID = json['OrganSubSetID'],PostUniqueID = json['PostUniqueID'],PostName = json['PostName'],Description = json['Description'],PostTypeCategory = json['PostTypeCategory'],PostManagementType = json['PostManagementType'],PostCategory = json['PostCategory'],PostPositionType = json['PostPositionType'],OrganCode = json['OrganCode'],PayrollDetails = json['PayrollDetails'] != null ?List<PayrollDetail>.from(json['PayrollDetails'].map((x) => PayrollDetail.fromJson(x))):[],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'OrganID' : OrganID,'OrganIDs ': OrganIDs != null ? List<String>.from(OrganIDs.map((x) => x)):[],'PayrollEmployeeID' : PayrollEmployeeID,'OrganName' : OrganName,'LawID' : LawID,'LawName' : LawName,'NationalCode' : NationalCode,'FirstName' : FirstName,'LastName' : LastName,'FatherName' : FatherName,'BCNumber' : BCNumber,'Gender' : Gender,'BirthDate' : BirthDate.toString(),'SelfLess' : SelfLess,'PayrollID' : PayrollID,'Year' : Year,'Month' : Month,'EmployeeID' : EmployeeID,'PostLevel' : PostLevel,'ServiceYears' : ServiceYears,'ServiceYearsType' : ServiceYearsType,'EducationDegree' : EducationDegree,'EmploymentType' : EmploymentType,'JobBase' : JobBase,'SumPayments' : SumPayments,'SumDeductions' : SumDeductions,'Sum' : Sum,'Salary' : Salary,'Continuous' : Continuous,'NonContinuous' : NonContinuous,'Reward' : Reward,'Welfare' : Welfare,'Other' : Other,'Deductions' : Deductions,'SumHokm' : SumHokm,'SumNHokm' : SumNHokm,'HasPayroll' : HasPayroll,'PostTitle' : PostTitle,'PostNumber' : PostNumber,'PayrollType' : PayrollType,'OrganSubSetName' : OrganSubSetName,'OrganSubSetID' : OrganSubSetID,'PostUniqueID' : PostUniqueID,'PostName' : PostName,'Description' : Description,'PostTypeCategory' : PostTypeCategory,'PostManagementType' : PostManagementType,'PostCategory' : PostCategory,'PostPositionType' : PostPositionType,'OrganCode' : OrganCode,'PayrollDetails ': PayrollDetails != null ? List<dynamic>.from(PayrollDetails.map((x) => x.toJson())):[],'ID' : ID};
}
class RecomendedWageTitleListVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  String DepartmentName;
  // ignore: non_constant_identifier_names
  String CreatorName;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String ConfirmerName;
  // ignore: non_constant_identifier_names
  int IncomeType;
  // ignore: non_constant_identifier_names
  int ConfirmType;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  String ID;
  RecomendedWageTitleListVM();
  // ignore: non_constant_identifier_names
  RecomendedWageTitleListVM.setProperty({this.OrganID,this.Name,this.LawID,this.DepartmentID,this.LawName,this.DepartmentName,this.CreatorName,this.OrganName,this.ConfirmerName,this.IncomeType,this.ConfirmType,this.PageSize,this.PageIndex,this.ID});
  @override
  RecomendedWageTitleListVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],Name = json['Name'],LawID = json['LawID'],DepartmentID = json['DepartmentID'],LawName = json['LawName'],DepartmentName = json['DepartmentName'],CreatorName = json['CreatorName'],OrganName = json['OrganName'],ConfirmerName = json['ConfirmerName'],IncomeType = json['IncomeType'],ConfirmType = json['ConfirmType'],PageSize = json['PageSize'],PageIndex = json['PageIndex'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'Name' : Name,'LawID' : LawID,'DepartmentID' : DepartmentID,'LawName' : LawName,'DepartmentName' : DepartmentName,'CreatorName' : CreatorName,'OrganName' : OrganName,'ConfirmerName' : ConfirmerName,'IncomeType' : IncomeType,'ConfirmType' : ConfirmType,'PageSize' : PageSize,'PageIndex' : PageIndex,'ID' : ID};
}
class Statistics extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  DateTime Date;
  // ignore: non_constant_identifier_names
  int AllUsersCount;
  // ignore: non_constant_identifier_names
  int OrgansWithUserCount;
  // ignore: non_constant_identifier_names
  int OrgansWithLawCount;
  // ignore: non_constant_identifier_names
  int AllEmployeesCount;
  // ignore: non_constant_identifier_names
  int OrgansWithEmployeeCount;
  // ignore: non_constant_identifier_names
  int OrgansWithPayrollCount;
  // ignore: non_constant_identifier_names
  int PayrollsCount;
  // ignore: non_constant_identifier_names
  String ID;
  Statistics();
  // ignore: non_constant_identifier_names
  Statistics.setProperty({this.Total,this.Date,this.AllUsersCount,this.OrgansWithUserCount,this.OrgansWithLawCount,this.AllEmployeesCount,this.OrgansWithEmployeeCount,this.OrgansWithPayrollCount,this.PayrollsCount,this.ID});
  @override
  Statistics.fromJson(Map<String, dynamic> json):Total = json['Total'],Date = AppDateTime.stringToDateTime(json['Date']),AllUsersCount = json['AllUsersCount'],OrgansWithUserCount = json['OrgansWithUserCount'],OrgansWithLawCount = json['OrgansWithLawCount'],AllEmployeesCount = json['AllEmployeesCount'],OrgansWithEmployeeCount = json['OrgansWithEmployeeCount'],OrgansWithPayrollCount = json['OrgansWithPayrollCount'],PayrollsCount = json['PayrollsCount'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'Date' : Date.toString(),'AllUsersCount' : AllUsersCount,'OrgansWithUserCount' : OrgansWithUserCount,'OrgansWithLawCount' : OrgansWithLawCount,'AllEmployeesCount' : AllEmployeesCount,'OrgansWithEmployeeCount' : OrgansWithEmployeeCount,'OrgansWithPayrollCount' : OrgansWithPayrollCount,'PayrollsCount' : PayrollsCount,'ID' : ID};
}
class ReportSearch extends Model{
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  List<WageTitle> WageTitleGroups;
  // ignore: non_constant_identifier_names
  List<String> PostLevels;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  String ID;
  ReportSearch();
  // ignore: non_constant_identifier_names
  ReportSearch.setProperty({this.LawID,this.OrganID,this.WageTitleGroups,this.PostLevels,this.Year,this.Month,this.ID});
  @override
  ReportSearch.fromJson(Map<String, dynamic> json):LawID = json['LawID'],OrganID = json['OrganID'],WageTitleGroups = json['WageTitleGroups'] != null ?List<WageTitle>.from(json['WageTitleGroups'].map((x) => WageTitle.fromJson(x))):[],PostLevels = json['PostLevels'] != null ? List<String>.from(json['PostLevels'].map((x) => x)):[],Year = json['Year'],Month = json['Month'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'LawID' : LawID,'OrganID' : OrganID,'WageTitleGroups ': WageTitleGroups != null ? List<dynamic>.from(WageTitleGroups.map((x) => x.toJson())):[],'PostLevels ': PostLevels != null ? List<String>.from(PostLevels.map((x) => x)):[],'Year' : Year,'Month' : Month,'ID' : ID};
}
class Report extends Model{
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String WageTitleName;
  // ignore: non_constant_identifier_names
  String WageTitleCode;
  // ignore: non_constant_identifier_names
  String WageTitleGroupName;
  // ignore: non_constant_identifier_names
  String WageTitleGroupCode;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  int PostLevel;
  // ignore: non_constant_identifier_names
  int EducationDegree;
  // ignore: non_constant_identifier_names
  int EmploymentType;
  // ignore: non_constant_identifier_names
  int JobBase;
  // ignore: non_constant_identifier_names
  int Gender;
  // ignore: non_constant_identifier_names
  double AvgAmount;
  // ignore: non_constant_identifier_names
  double YearAvgAmount;
  // ignore: non_constant_identifier_names
  double MaxAmount;
  // ignore: non_constant_identifier_names
  double MinAmount;
  // ignore: non_constant_identifier_names
  int EmployeeCount;
  // ignore: non_constant_identifier_names
  String ID;
  Report();
  // ignore: non_constant_identifier_names
  Report.setProperty({this.OrganName,this.WageTitleName,this.WageTitleCode,this.WageTitleGroupName,this.WageTitleGroupCode,this.Year,this.Month,this.PostLevel,this.EducationDegree,this.EmploymentType,this.JobBase,this.Gender,this.AvgAmount,this.YearAvgAmount,this.MaxAmount,this.MinAmount,this.EmployeeCount,this.ID});
  @override
  Report.fromJson(Map<String, dynamic> json):OrganName = json['OrganName'],WageTitleName = json['WageTitleName'],WageTitleCode = json['WageTitleCode'],WageTitleGroupName = json['WageTitleGroupName'],WageTitleGroupCode = json['WageTitleGroupCode'],Year = json['Year'],Month = json['Month'],PostLevel = json['PostLevel'],EducationDegree = json['EducationDegree'],EmploymentType = json['EmploymentType'],JobBase = json['JobBase'],Gender = json['Gender'],AvgAmount = json['AvgAmount'],YearAvgAmount = json['YearAvgAmount'],MaxAmount = json['MaxAmount'],MinAmount = json['MinAmount'],EmployeeCount = json['EmployeeCount'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'OrganName' : OrganName,'WageTitleName' : WageTitleName,'WageTitleCode' : WageTitleCode,'WageTitleGroupName' : WageTitleGroupName,'WageTitleGroupCode' : WageTitleGroupCode,'Year' : Year,'Month' : Month,'PostLevel' : PostLevel,'EducationDegree' : EducationDegree,'EmploymentType' : EmploymentType,'JobBase' : JobBase,'Gender' : Gender,'AvgAmount' : AvgAmount,'YearAvgAmount' : YearAvgAmount,'MaxAmount' : MaxAmount,'MinAmount' : MinAmount,'EmployeeCount' : EmployeeCount,'ID' : ID};
}
class TreasuryItem extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  int Code;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String ID;
  TreasuryItem();
  // ignore: non_constant_identifier_names
  TreasuryItem.setProperty({this.Total,this.Code,this.Name,this.Type,this.ID});
  @override
  TreasuryItem.fromJson(Map<String, dynamic> json):Total = json['Total'],Code = json['Code'],Name = json['Name'],Type = json['Type'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'Code' : Code,'Name' : Name,'Type' : Type,'ID' : ID};
}
class PayrollDetail extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String EmployeeID;
  // ignore: non_constant_identifier_names
  String WageTitleID;
  // ignore: non_constant_identifier_names
  int WageTitleType;
  // ignore: non_constant_identifier_names
  String WageTitleName;
  // ignore: non_constant_identifier_names
  String WageTitleCode;
  // ignore: non_constant_identifier_names
  String ParentWageTitleCode;
  // ignore: non_constant_identifier_names
  int WageTitleIncomeType;
  // ignore: non_constant_identifier_names
  int WageTitleOrderType;
  // ignore: non_constant_identifier_names
  String Node;
  // ignore: non_constant_identifier_names
  String ParentNode;
  // ignore: non_constant_identifier_names
  int Order;
  // ignore: non_constant_identifier_names
  String PayrollID;
  // ignore: non_constant_identifier_names
  BigInt Amount;
  // ignore: non_constant_identifier_names
  int EmployeesCount;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String ID;
  PayrollDetail();
  // ignore: non_constant_identifier_names
  PayrollDetail.setProperty({this.OrganID,this.EmployeeID,this.WageTitleID,this.WageTitleType,this.WageTitleName,this.WageTitleCode,this.ParentWageTitleCode,this.WageTitleIncomeType,this.WageTitleOrderType,this.Node,this.ParentNode,this.Order,this.PayrollID,this.Amount,this.EmployeesCount,this.OrganName,this.ID});
  @override
  PayrollDetail.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],EmployeeID = json['EmployeeID'],WageTitleID = json['WageTitleID'],WageTitleType = json['WageTitleType'],WageTitleName = json['WageTitleName'],WageTitleCode = json['WageTitleCode'],ParentWageTitleCode = json['ParentWageTitleCode'],WageTitleIncomeType = json['WageTitleIncomeType'],WageTitleOrderType = json['WageTitleOrderType'],Node = json['Node'],ParentNode = json['ParentNode'],Order = json['Order'],PayrollID = json['PayrollID'],Amount = new BigInt.from(json['Amount']),EmployeesCount = json['EmployeesCount'],OrganName = json['OrganName'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'EmployeeID' : EmployeeID,'WageTitleID' : WageTitleID,'WageTitleType' : WageTitleType,'WageTitleName' : WageTitleName,'WageTitleCode' : WageTitleCode,'ParentWageTitleCode' : ParentWageTitleCode,'WageTitleIncomeType' : WageTitleIncomeType,'WageTitleOrderType' : WageTitleOrderType,'Node' : Node,'ParentNode' : ParentNode,'Order' : Order,'PayrollID' : PayrollID,'Amount' : Amount,'EmployeesCount' : EmployeesCount,'OrganName' : OrganName,'ID' : ID};
}
class Employee extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String IndividualID;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  String FatherName;
  // ignore: non_constant_identifier_names
  String BCNumber;
  // ignore: non_constant_identifier_names
  int Gender;
  // ignore: non_constant_identifier_names
  DateTime BirthDate;
  // ignore: non_constant_identifier_names
  int SelfLess;
  // ignore: non_constant_identifier_names
  int State;
  // ignore: non_constant_identifier_names
  String ID;
  Employee();
  // ignore: non_constant_identifier_names
  Employee.setProperty({this.Total,this.OrganID,this.OrganName,this.IndividualID,this.NationalCode,this.FirstName,this.LastName,this.FatherName,this.BCNumber,this.Gender,this.BirthDate,this.SelfLess,this.State,this.ID});
  @override
  Employee.fromJson(Map<String, dynamic> json):Total = json['Total'],OrganID = json['OrganID'],OrganName = json['OrganName'],IndividualID = json['IndividualID'],NationalCode = json['NationalCode'],FirstName = json['FirstName'],LastName = json['LastName'],FatherName = json['FatherName'],BCNumber = json['BCNumber'],Gender = json['Gender'],BirthDate = AppDateTime.stringToDateTime(json['BirthDate']),SelfLess = json['SelfLess'],State = json['State'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'OrganID' : OrganID,'OrganName' : OrganName,'IndividualID' : IndividualID,'NationalCode' : NationalCode,'FirstName' : FirstName,'LastName' : LastName,'FatherName' : FatherName,'BCNumber' : BCNumber,'Gender' : Gender,'BirthDate' : BirthDate.toString(),'SelfLess' : SelfLess,'State' : State,'ID' : ID};
}
class Law extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String OwnerOrganID;
  // ignore: non_constant_identifier_names
  String OrganLawID;
  // ignore: non_constant_identifier_names
  bool Enabled;
  // ignore: non_constant_identifier_names
  String OwnerOrganName;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Comment;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String MainOrganName;
  // ignore: non_constant_identifier_names
  String MainOrgan2Name;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int SubType;
  // ignore: non_constant_identifier_names
  int ActionState;
  // ignore: non_constant_identifier_names
  int LastDocState;
  // ignore: non_constant_identifier_names
  String ToUserName;
  // ignore: non_constant_identifier_names
  int ToPositionType;
  // ignore: non_constant_identifier_names
  String ID;
  Law();
  // ignore: non_constant_identifier_names
  Law.setProperty({this.Total,this.OwnerOrganID,this.OrganLawID,this.Enabled,this.OwnerOrganName,this.Code,this.Name,this.Comment,this.OrganID,this.OrganName,this.MainOrganName,this.MainOrgan2Name,this.Type,this.SubType,this.ActionState,this.LastDocState,this.ToUserName,this.ToPositionType,this.ID});
  @override
  Law.fromJson(Map<String, dynamic> json):Total = json['Total'],OwnerOrganID = json['OwnerOrganID'],OrganLawID = json['OrganLawID'],Enabled = json['Enabled'],OwnerOrganName = json['OwnerOrganName'],Code = json['Code'],Name = json['Name'],Comment = json['Comment'],OrganID = json['OrganID'],OrganName = json['OrganName'],MainOrganName = json['MainOrganName'],MainOrgan2Name = json['MainOrgan2Name'],Type = json['Type'],SubType = json['SubType'],ActionState = json['ActionState'],LastDocState = json['LastDocState'],ToUserName = json['ToUserName'],ToPositionType = json['ToPositionType'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'OwnerOrganID' : OwnerOrganID,'OrganLawID' : OrganLawID,'Enabled' : Enabled,'OwnerOrganName' : OwnerOrganName,'Code' : Code,'Name' : Name,'Comment' : Comment,'OrganID' : OrganID,'OrganName' : OrganName,'MainOrganName' : MainOrganName,'MainOrgan2Name' : MainOrgan2Name,'Type' : Type,'SubType' : SubType,'ActionState' : ActionState,'LastDocState' : LastDocState,'ToUserName' : ToUserName,'ToPositionType' : ToPositionType,'ID' : ID};
}
class Payroll extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String ProcessID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  BigInt Minimum;
  // ignore: non_constant_identifier_names
  BigInt Maximum;
  // ignore: non_constant_identifier_names
  BigInt Average;
  // ignore: non_constant_identifier_names
  int ActionState;
  // ignore: non_constant_identifier_names
  int LastDocState;
  // ignore: non_constant_identifier_names
  String ToUserName;
  // ignore: non_constant_identifier_names
  int ToPositionType;
  // ignore: non_constant_identifier_names
  String ToOrganID;
  // ignore: non_constant_identifier_names
  String ToOrganName;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  String FileName;
  // ignore: non_constant_identifier_names
  DateTime ConfirmDate;
  // ignore: non_constant_identifier_names
  String Attachment;
  // ignore: non_constant_identifier_names
  int EmployeesCount;
  // ignore: non_constant_identifier_names
  DateTime SalaryUpdateDate;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int SubType;
  // ignore: non_constant_identifier_names
  String MainOrganName;
  // ignore: non_constant_identifier_names
  List<PayrollEmployee> Employees;
  // ignore: non_constant_identifier_names
  List<PayrollDetail> Details;
  // ignore: non_constant_identifier_names
  List<String> PayrollWageTitles;
  // ignore: non_constant_identifier_names
  List<String> PivotDetails;
  // ignore: non_constant_identifier_names
  String ToPositionID;
  // ignore: non_constant_identifier_names
  int PayrollType;
  // ignore: non_constant_identifier_names
  String ID;
  Payroll();
  // ignore: non_constant_identifier_names
  Payroll.setProperty({this.Total,this.OrganID,this.ProcessID,this.OrganName,this.LawID,this.LawName,this.Year,this.Month,this.Minimum,this.Maximum,this.Average,this.ActionState,this.LastDocState,this.ToUserName,this.ToPositionType,this.ToOrganID,this.ToOrganName,this.CreationDate,this.FileName,this.ConfirmDate,this.Attachment,this.EmployeesCount,this.SalaryUpdateDate,this.Type,this.SubType,this.MainOrganName,this.Employees,this.Details,this.PayrollWageTitles,this.PivotDetails,this.ToPositionID,this.PayrollType,this.ID});
  @override
  Payroll.fromJson(Map<String, dynamic> json):Total = json['Total'],OrganID = json['OrganID'],ProcessID = json['ProcessID'],OrganName = json['OrganName'],LawID = json['LawID'],LawName = json['LawName'],Year = json['Year'],Month = json['Month'],Minimum = new BigInt.from(json['Minimum']),Maximum = new BigInt.from(json['Maximum']),Average = new BigInt.from(json['Average']),ActionState = json['ActionState'],LastDocState = json['LastDocState'],ToUserName = json['ToUserName'],ToPositionType = json['ToPositionType'],ToOrganID = json['ToOrganID'],ToOrganName = json['ToOrganName'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),FileName = json['FileName'],ConfirmDate = AppDateTime.stringToDateTime(json['ConfirmDate']),Attachment = json['Attachment'],EmployeesCount = json['EmployeesCount'],SalaryUpdateDate = AppDateTime.stringToDateTime(json['SalaryUpdateDate']),Type = json['Type'],SubType = json['SubType'],MainOrganName = json['MainOrganName'],Employees = json['Employees'] != null ?List<PayrollEmployee>.from(json['Employees'].map((x) => PayrollEmployee.fromJson(x))):[],Details = json['Details'] != null ?List<PayrollDetail>.from(json['Details'].map((x) => PayrollDetail.fromJson(x))):[],PayrollWageTitles = json['PayrollWageTitles'] != null ? List<String>.from(json['PayrollWageTitles'].map((x) => x)):[],PivotDetails = json['PivotDetails'] != null ? List<String>.from(json['PivotDetails'].map((x) => x)):[],ToPositionID = json['ToPositionID'],PayrollType = json['PayrollType'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'OrganID' : OrganID,'ProcessID' : ProcessID,'OrganName' : OrganName,'LawID' : LawID,'LawName' : LawName,'Year' : Year,'Month' : Month,'Minimum' : Minimum,'Maximum' : Maximum,'Average' : Average,'ActionState' : ActionState,'LastDocState' : LastDocState,'ToUserName' : ToUserName,'ToPositionType' : ToPositionType,'ToOrganID' : ToOrganID,'ToOrganName' : ToOrganName,'CreationDate' : CreationDate.toString(),'FileName' : FileName,'ConfirmDate' : ConfirmDate.toString(),'Attachment' : Attachment,'EmployeesCount' : EmployeesCount,'SalaryUpdateDate' : SalaryUpdateDate.toString(),'Type' : Type,'SubType' : SubType,'MainOrganName' : MainOrganName,'Employees ': Employees != null ? List<dynamic>.from(Employees.map((x) => x.toJson())):[],'Details ': Details != null ? List<dynamic>.from(Details.map((x) => x.toJson())):[],'PayrollWageTitles ': PayrollWageTitles != null ? List<String>.from(PayrollWageTitles.map((x) => x)):[],'PivotDetails ': PivotDetails != null ? List<String>.from(PivotDetails.map((x) => x)):[],'ToPositionID' : ToPositionID,'PayrollType' : PayrollType,'ID' : ID};
}
class RecomendedWageTitle extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String CreatorUserID;
  // ignore: non_constant_identifier_names
  String CreatorName;
  // ignore: non_constant_identifier_names
  String ConfirmerName;
  // ignore: non_constant_identifier_names
  DateTime CreationDate;
  // ignore: non_constant_identifier_names
  int IncomeType;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Comment;
  // ignore: non_constant_identifier_names
  String ConfirmWageTitleID;
  // ignore: non_constant_identifier_names
  String ConfirmUserID;
  // ignore: non_constant_identifier_names
  DateTime ConfirmDate;
  // ignore: non_constant_identifier_names
  int ConfirmType;
  // ignore: non_constant_identifier_names
  String ConfirmComment;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  String ID;
  RecomendedWageTitle();
  // ignore: non_constant_identifier_names
  RecomendedWageTitle.setProperty({this.Total,this.OrganID,this.OrganName,this.CreatorUserID,this.CreatorName,this.ConfirmerName,this.CreationDate,this.IncomeType,this.Code,this.Name,this.Comment,this.ConfirmWageTitleID,this.ConfirmUserID,this.ConfirmDate,this.ConfirmType,this.ConfirmComment,this.LawID,this.LawName,this.ID});
  @override
  RecomendedWageTitle.fromJson(Map<String, dynamic> json):Total = json['Total'],OrganID = json['OrganID'],OrganName = json['OrganName'],CreatorUserID = json['CreatorUserID'],CreatorName = json['CreatorName'],ConfirmerName = json['ConfirmerName'],CreationDate = AppDateTime.stringToDateTime(json['CreationDate']),IncomeType = json['IncomeType'],Code = json['Code'],Name = json['Name'],Comment = json['Comment'],ConfirmWageTitleID = json['ConfirmWageTitleID'],ConfirmUserID = json['ConfirmUserID'],ConfirmDate = AppDateTime.stringToDateTime(json['ConfirmDate']),ConfirmType = json['ConfirmType'],ConfirmComment = json['ConfirmComment'],LawID = json['LawID'],LawName = json['LawName'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'OrganID' : OrganID,'OrganName' : OrganName,'CreatorUserID' : CreatorUserID,'CreatorName' : CreatorName,'ConfirmerName' : ConfirmerName,'CreationDate' : CreationDate.toString(),'IncomeType' : IncomeType,'Code' : Code,'Name' : Name,'Comment' : Comment,'ConfirmWageTitleID' : ConfirmWageTitleID,'ConfirmUserID' : ConfirmUserID,'ConfirmDate' : ConfirmDate.toString(),'ConfirmType' : ConfirmType,'ConfirmComment' : ConfirmComment,'LawID' : LawID,'LawName' : LawName,'ID' : ID};
}
class WageTitle extends Model{
  // ignore: non_constant_identifier_names
  int Total;
  // ignore: non_constant_identifier_names
  int IncomeType;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  bool Enabled;
  // ignore: non_constant_identifier_names
  BigInt Minimum;
  // ignore: non_constant_identifier_names
  BigInt Maximum;
  // ignore: non_constant_identifier_names
  String TreasuryItemID;
  // ignore: non_constant_identifier_names
  String TreasuryItemName;
  // ignore: non_constant_identifier_names
  String ID;
  WageTitle();
  // ignore: non_constant_identifier_names
  WageTitle.setProperty({this.Total,this.IncomeType,this.Type,this.Code,this.Name,this.Enabled,this.Minimum,this.Maximum,this.TreasuryItemID,this.TreasuryItemName,this.ID});
  @override
  WageTitle.fromJson(Map<String, dynamic> json):Total = json['Total'],IncomeType = json['IncomeType'],Type = json['Type'],Code = json['Code'],Name = json['Name'],Enabled = json['Enabled'],Minimum = new BigInt.from(json['Minimum']),Maximum = new BigInt.from(json['Maximum']),TreasuryItemID = json['TreasuryItemID'],TreasuryItemName = json['TreasuryItemName'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'Total' : Total,'IncomeType' : IncomeType,'Type' : Type,'Code' : Code,'Name' : Name,'Enabled' : Enabled,'Minimum' : Minimum,'Maximum' : Maximum,'TreasuryItemID' : TreasuryItemID,'TreasuryItemName' : TreasuryItemName,'ID' : ID};
}
class WSPayroll extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  String ID;
  WSPayroll();
  // ignore: non_constant_identifier_names
  WSPayroll.setProperty({this.OrganID,this.OrganName,this.LawID,this.LawName,this.Year,this.Month,this.ID});
  @override
  WSPayroll.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],OrganName = json['OrganName'],LawID = json['LawID'],LawName = json['LawName'],Year = json['Year'],Month = json['Month'],ID = json['ID'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'OrganName' : OrganName,'LawID' : LawID,'LawName' : LawName,'Year' : Year,'Month' : Month,'ID' : ID};
}
class ListBlackUserVM extends Model{
  // ignore: non_constant_identifier_names
  String UserIP;
  // ignore: non_constant_identifier_names
  String Username;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ListBlackUserVM();
  // ignore: non_constant_identifier_names
  ListBlackUserVM.setProperty({this.UserIP,this.Username,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  ListBlackUserVM.fromJson(Map<String, dynamic> json):UserIP = json['UserIP'],Username = json['Username'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'UserIP' : UserIP,'Username' : Username,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class ControllerListVM extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ControllerListVM();
  // ignore: non_constant_identifier_names
  ControllerListVM.setProperty({this.Name,this.Title,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  ControllerListVM.fromJson(Map<String, dynamic> json):Name = json['Name'],Title = json['Title'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Name' : Name,'Title' : Title,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class DynamicReportTemplateListVM extends Model{
  // ignore: non_constant_identifier_names
  int DynamicReportType;
  // ignore: non_constant_identifier_names
  String Title;
  // ignore: non_constant_identifier_names
  bool VisibleForOther;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DynamicReportTemplateListVM();
  // ignore: non_constant_identifier_names
  DynamicReportTemplateListVM.setProperty({this.DynamicReportType,this.Title,this.VisibleForOther,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  DynamicReportTemplateListVM.fromJson(Map<String, dynamic> json):DynamicReportType = json['DynamicReportType'],Title = json['Title'],VisibleForOther = json['VisibleForOther'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'DynamicReportType' : DynamicReportType,'Title' : Title,'VisibleForOther' : VisibleForOther,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class DynamicReportListForRequestVM extends Model{
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int Enable;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DynamicReportListForRequestVM();
  // ignore: non_constant_identifier_names
  DynamicReportListForRequestVM.setProperty({this.Type,this.Enable,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  DynamicReportListForRequestVM.fromJson(Map<String, dynamic> json):Type = json['Type'],Enable = json['Enable'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Type' : Type,'Enable' : Enable,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class DynamicReportListVM extends Model{
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int Enable;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DynamicReportListVM();
  // ignore: non_constant_identifier_names
  DynamicReportListVM.setProperty({this.Type,this.Enable,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  DynamicReportListVM.fromJson(Map<String, dynamic> json):Type = json['Type'],Enable = json['Enable'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Type' : Type,'Enable' : Enable,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class FieldGroupListVM extends Model{
  // ignore: non_constant_identifier_names
  int DynamicReportType;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  bool LoadFields;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  FieldGroupListVM();
  // ignore: non_constant_identifier_names
  FieldGroupListVM.setProperty({this.DynamicReportType,this.Name,this.LoadFields,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  FieldGroupListVM.fromJson(Map<String, dynamic> json):DynamicReportType = json['DynamicReportType'],Name = json['Name'],LoadFields = json['LoadFields'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'DynamicReportType' : DynamicReportType,'Name' : Name,'LoadFields' : LoadFields,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class FieldListVM extends Model{
  // ignore: non_constant_identifier_names
  int DynamicReportType;
  // ignore: non_constant_identifier_names
  String GroupID;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String PersianName;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  String EnumName;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  FieldListVM();
  // ignore: non_constant_identifier_names
  FieldListVM.setProperty({this.DynamicReportType,this.GroupID,this.Name,this.PersianName,this.Type,this.EnumName,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  FieldListVM.fromJson(Map<String, dynamic> json):DynamicReportType = json['DynamicReportType'],GroupID = json['GroupID'],Name = json['Name'],PersianName = json['PersianName'],Type = json['Type'],EnumName = json['EnumName'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'DynamicReportType' : DynamicReportType,'GroupID' : GroupID,'Name' : Name,'PersianName' : PersianName,'Type' : Type,'EnumName' : EnumName,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class PayrollDepartmentListVM extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  bool PayrollNeeded;
  // ignore: non_constant_identifier_names
  String ParentID;
  // ignore: non_constant_identifier_names
  String ParentName;
  // ignore: non_constant_identifier_names
  String ProvinceName;
  // ignore: non_constant_identifier_names
  String ProvinceID;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int SubType;
  // ignore: non_constant_identifier_names
  int OrganType;
  // ignore: non_constant_identifier_names
  int Level;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  String BudgetCode;
  // ignore: non_constant_identifier_names
  bool SearchWithHierarchy;
  // ignore: non_constant_identifier_names
  int COFOG;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PayrollDepartmentListVM();
  // ignore: non_constant_identifier_names
  PayrollDepartmentListVM.setProperty({this.Name,this.DepartmentID,this.PayrollNeeded,this.ParentID,this.ParentName,this.ProvinceName,this.ProvinceID,this.Type,this.SubType,this.OrganType,this.Level,this.Code,this.BudgetCode,this.SearchWithHierarchy,this.COFOG,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  PayrollDepartmentListVM.fromJson(Map<String, dynamic> json):Name = json['Name'],DepartmentID = json['DepartmentID'],PayrollNeeded = json['PayrollNeeded'],ParentID = json['ParentID'],ParentName = json['ParentName'],ProvinceName = json['ProvinceName'],ProvinceID = json['ProvinceID'],Type = json['Type'],SubType = json['SubType'],OrganType = json['OrganType'],Level = json['Level'],Code = json['Code'],BudgetCode = json['BudgetCode'],SearchWithHierarchy = json['SearchWithHierarchy'],COFOG = json['COFOG'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Name' : Name,'DepartmentID' : DepartmentID,'PayrollNeeded' : PayrollNeeded,'ParentID' : ParentID,'ParentName' : ParentName,'ProvinceName' : ProvinceName,'ProvinceID' : ProvinceID,'Type' : Type,'SubType' : SubType,'OrganType' : OrganType,'Level' : Level,'Code' : Code,'BudgetCode' : BudgetCode,'SearchWithHierarchy' : SearchWithHierarchy,'COFOG' : COFOG,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class PositionOrganListVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String PositionID;
  // ignore: non_constant_identifier_names
  bool OrganSubSetIncluded;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PositionOrganListVM();
  // ignore: non_constant_identifier_names
  PositionOrganListVM.setProperty({this.OrganID,this.PositionID,this.OrganSubSetIncluded,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  PositionOrganListVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],PositionID = json['PositionID'],OrganSubSetIncluded = json['OrganSubSetIncluded'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'PositionID' : PositionID,'OrganSubSetIncluded' : OrganSubSetIncluded,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class ProcessAllowedDateListVM extends Model{
  // ignore: non_constant_identifier_names
  String ProcessID;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ProcessAllowedDateListVM();
  // ignore: non_constant_identifier_names
  ProcessAllowedDateListVM.setProperty({this.ProcessID,this.Month,this.Year,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  ProcessAllowedDateListVM.fromJson(Map<String, dynamic> json):ProcessID = json['ProcessID'],Month = json['Month'],Year = json['Year'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ProcessID' : ProcessID,'Month' : Month,'Year' : Year,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class ProcessConfirmerListVM extends Model{
  // ignore: non_constant_identifier_names
  String ProcessID;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ProcessConfirmerListVM();
  // ignore: non_constant_identifier_names
  ProcessConfirmerListVM.setProperty({this.ProcessID,this.Type,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  ProcessConfirmerListVM.fromJson(Map<String, dynamic> json):ProcessID = json['ProcessID'],Type = json['Type'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'ProcessID' : ProcessID,'Type' : Type,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class ProcessListForRequestVM extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int EnableForSave;
  // ignore: non_constant_identifier_names
  int EnableForConfirm;
  // ignore: non_constant_identifier_names
  int EnableForFinalConfirm;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ProcessListForRequestVM();
  // ignore: non_constant_identifier_names
  ProcessListForRequestVM.setProperty({this.Name,this.Type,this.EnableForSave,this.EnableForConfirm,this.EnableForFinalConfirm,this.OrganID,this.Code,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  ProcessListForRequestVM.fromJson(Map<String, dynamic> json):Name = json['Name'],Type = json['Type'],EnableForSave = json['EnableForSave'],EnableForConfirm = json['EnableForConfirm'],EnableForFinalConfirm = json['EnableForFinalConfirm'],OrganID = json['OrganID'],Code = json['Code'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Name' : Name,'Type' : Type,'EnableForSave' : EnableForSave,'EnableForConfirm' : EnableForConfirm,'EnableForFinalConfirm' : EnableForFinalConfirm,'OrganID' : OrganID,'Code' : Code,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class ProcessListVM extends Model{
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int EnableForSave;
  // ignore: non_constant_identifier_names
  int EnableForConfirm;
  // ignore: non_constant_identifier_names
  int EnableForFinalConfirm;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ProcessListVM();
  // ignore: non_constant_identifier_names
  ProcessListVM.setProperty({this.Name,this.Type,this.EnableForSave,this.EnableForConfirm,this.EnableForFinalConfirm,this.Code,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  ProcessListVM.fromJson(Map<String, dynamic> json):Name = json['Name'],Type = json['Type'],EnableForSave = json['EnableForSave'],EnableForConfirm = json['EnableForConfirm'],EnableForFinalConfirm = json['EnableForFinalConfirm'],Code = json['Code'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Name' : Name,'Type' : Type,'EnableForSave' : EnableForSave,'EnableForConfirm' : EnableForConfirm,'EnableForFinalConfirm' : EnableForFinalConfirm,'Code' : Code,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class ListByEmployeeVM extends Model{
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ListByEmployeeVM();
  // ignore: non_constant_identifier_names
  ListByEmployeeVM.setProperty({this.FirstName,this.LastName,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  ListByEmployeeVM.fromJson(Map<String, dynamic> json):FirstName = json['FirstName'],LastName = json['LastName'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'FirstName' : FirstName,'LastName' : LastName,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class OrgansProgressReportInPercentageListVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  int ReportType;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String ParentOrganID;
  // ignore: non_constant_identifier_names
  String ParentOrganName;
  // ignore: non_constant_identifier_names
  int DepartmentType;
  // ignore: non_constant_identifier_names
  int DepartmentSubType;
  // ignore: non_constant_identifier_names
  int OrganType;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int FromYear;
  // ignore: non_constant_identifier_names
  int FromMonth;
  // ignore: non_constant_identifier_names
  int ToYear;
  // ignore: non_constant_identifier_names
  int ToMonth;
  // ignore: non_constant_identifier_names
  DateTime FromConfirmDate;
  // ignore: non_constant_identifier_names
  DateTime ToConfirmDate;
  // ignore: non_constant_identifier_names
  DateTime FromCreationDate;
  // ignore: non_constant_identifier_names
  DateTime ToCreationDate;
  // ignore: non_constant_identifier_names
  bool SearchWithhierarchy;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  OrgansProgressReportInPercentageListVM();
  // ignore: non_constant_identifier_names
  OrgansProgressReportInPercentageListVM.setProperty({this.OrganID,this.ReportType,this.OrganName,this.ParentOrganID,this.ParentOrganName,this.DepartmentType,this.DepartmentSubType,this.OrganType,this.LawID,this.LawName,this.Year,this.FromYear,this.FromMonth,this.ToYear,this.ToMonth,this.FromConfirmDate,this.ToConfirmDate,this.FromCreationDate,this.ToCreationDate,this.SearchWithhierarchy,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  OrgansProgressReportInPercentageListVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],ReportType = json['ReportType'],OrganName = json['OrganName'],ParentOrganID = json['ParentOrganID'],ParentOrganName = json['ParentOrganName'],DepartmentType = json['DepartmentType'],DepartmentSubType = json['DepartmentSubType'],OrganType = json['OrganType'],LawID = json['LawID'],LawName = json['LawName'],Year = json['Year'],FromYear = json['FromYear'],FromMonth = json['FromMonth'],ToYear = json['ToYear'],ToMonth = json['ToMonth'],FromConfirmDate = AppDateTime.stringToDateTime(json['FromConfirmDate']),ToConfirmDate = AppDateTime.stringToDateTime(json['ToConfirmDate']),FromCreationDate = AppDateTime.stringToDateTime(json['FromCreationDate']),ToCreationDate = AppDateTime.stringToDateTime(json['ToCreationDate']),SearchWithhierarchy = json['SearchWithhierarchy'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'ReportType' : ReportType,'OrganName' : OrganName,'ParentOrganID' : ParentOrganID,'ParentOrganName' : ParentOrganName,'DepartmentType' : DepartmentType,'DepartmentSubType' : DepartmentSubType,'OrganType' : OrganType,'LawID' : LawID,'LawName' : LawName,'Year' : Year,'FromYear' : FromYear,'FromMonth' : FromMonth,'ToYear' : ToYear,'ToMonth' : ToMonth,'FromConfirmDate' : FromConfirmDate.toString(),'ToConfirmDate' : ToConfirmDate.toString(),'FromCreationDate' : FromCreationDate.toString(),'ToCreationDate' : ToCreationDate.toString(),'SearchWithhierarchy' : SearchWithhierarchy,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class PayrollEmployeeReportListVM extends Model{
  // ignore: non_constant_identifier_names
  bool WithDetail;
  // ignore: non_constant_identifier_names
  List<Payroll> Payrolls;
  // ignore: non_constant_identifier_names
  List<Department> Organs;
  // ignore: non_constant_identifier_names
  List<Law> Laws;
  // ignore: non_constant_identifier_names
  List<String> Years;
  // ignore: non_constant_identifier_names
  List<String> Months;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  int FromAmount;
  // ignore: non_constant_identifier_names
  int ToAmount;
  // ignore: non_constant_identifier_names
  int FromSumPayment;
  // ignore: non_constant_identifier_names
  int ToSumPayment;
  // ignore: non_constant_identifier_names
  int FromDeduction;
  // ignore: non_constant_identifier_names
  int ToDeduction;
  // ignore: non_constant_identifier_names
  int FromSumHokm;
  // ignore: non_constant_identifier_names
  int ToSumHokm;
  // ignore: non_constant_identifier_names
  int FromSumNHokm;
  // ignore: non_constant_identifier_names
  int ToSumNHokm;
  // ignore: non_constant_identifier_names
  List<String> PostLevels;
  // ignore: non_constant_identifier_names
  int JobBase;
  // ignore: non_constant_identifier_names
  List<String> OrganPosts;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PayrollEmployeeReportListVM();
  // ignore: non_constant_identifier_names
  PayrollEmployeeReportListVM.setProperty({this.WithDetail,this.Payrolls,this.Organs,this.Laws,this.Years,this.Months,this.NationalCode,this.FirstName,this.LastName,this.FromAmount,this.ToAmount,this.FromSumPayment,this.ToSumPayment,this.FromDeduction,this.ToDeduction,this.FromSumHokm,this.ToSumHokm,this.FromSumNHokm,this.ToSumNHokm,this.PostLevels,this.JobBase,this.OrganPosts,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  PayrollEmployeeReportListVM.fromJson(Map<String, dynamic> json):WithDetail = json['WithDetail'],Payrolls = json['Payrolls'] != null ?List<Payroll>.from(json['Payrolls'].map((x) => Payroll.fromJson(x))):[],Organs = json['Organs'] != null ?List<Department>.from(json['Organs'].map((x) => Department.fromJson(x))):[],Laws = json['Laws'] != null ?List<Law>.from(json['Laws'].map((x) => Law.fromJson(x))):[],Years = json['Years'] != null ? List<String>.from(json['Years'].map((x) => x)):[],Months = json['Months'] != null ? List<String>.from(json['Months'].map((x) => x)):[],NationalCode = json['NationalCode'],FirstName = json['FirstName'],LastName = json['LastName'],FromAmount = json['FromAmount'],ToAmount = json['ToAmount'],FromSumPayment = json['FromSumPayment'],ToSumPayment = json['ToSumPayment'],FromDeduction = json['FromDeduction'],ToDeduction = json['ToDeduction'],FromSumHokm = json['FromSumHokm'],ToSumHokm = json['ToSumHokm'],FromSumNHokm = json['FromSumNHokm'],ToSumNHokm = json['ToSumNHokm'],PostLevels = json['PostLevels'] != null ? List<String>.from(json['PostLevels'].map((x) => x)):[],JobBase = json['JobBase'],OrganPosts = json['OrganPosts'] != null ? List<String>.from(json['OrganPosts'].map((x) => x)):[],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'WithDetail' : WithDetail,'Payrolls ': Payrolls != null ? List<dynamic>.from(Payrolls.map((x) => x.toJson())):[],'Organs ': Organs != null ? List<dynamic>.from(Organs.map((x) => x.toJson())):[],'Laws ': Laws != null ? List<dynamic>.from(Laws.map((x) => x.toJson())):[],'Years ': Years != null ? List<String>.from(Years.map((x) => x)):[],'Months ': Months != null ? List<String>.from(Months.map((x) => x)):[],'NationalCode' : NationalCode,'FirstName' : FirstName,'LastName' : LastName,'FromAmount' : FromAmount,'ToAmount' : ToAmount,'FromSumPayment' : FromSumPayment,'ToSumPayment' : ToSumPayment,'FromDeduction' : FromDeduction,'ToDeduction' : ToDeduction,'FromSumHokm' : FromSumHokm,'ToSumHokm' : ToSumHokm,'FromSumNHokm' : FromSumNHokm,'ToSumNHokm' : ToSumNHokm,'PostLevels ': PostLevels != null ? List<String>.from(PostLevels.map((x) => x)):[],'JobBase' : JobBase,'OrganPosts ': OrganPosts != null ? List<String>.from(OrganPosts.map((x) => x)):[],'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class DeletedPayrollReportListVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String RemoverUserID;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int SubType;
  // ignore: non_constant_identifier_names
  int FromEmployeesCount;
  // ignore: non_constant_identifier_names
  int ToEmployeesCount;
  // ignore: non_constant_identifier_names
  int FromMinimum;
  // ignore: non_constant_identifier_names
  int ToMinimum;
  // ignore: non_constant_identifier_names
  int FromMaximum;
  // ignore: non_constant_identifier_names
  int ToMaximum;
  // ignore: non_constant_identifier_names
  int FromAverage;
  // ignore: non_constant_identifier_names
  int ToAverage;
  // ignore: non_constant_identifier_names
  DateTime FromRemoveDate;
  // ignore: non_constant_identifier_names
  DateTime ToRemoveDate;
  // ignore: non_constant_identifier_names
  int PayrollType;
  // ignore: non_constant_identifier_names
  int UserType;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  DeletedPayrollReportListVM();
  // ignore: non_constant_identifier_names
  DeletedPayrollReportListVM.setProperty({this.OrganID,this.OrganName,this.RemoverUserID,this.LawID,this.LawName,this.Year,this.Month,this.Type,this.SubType,this.FromEmployeesCount,this.ToEmployeesCount,this.FromMinimum,this.ToMinimum,this.FromMaximum,this.ToMaximum,this.FromAverage,this.ToAverage,this.FromRemoveDate,this.ToRemoveDate,this.PayrollType,this.UserType,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  DeletedPayrollReportListVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],OrganName = json['OrganName'],RemoverUserID = json['RemoverUserID'],LawID = json['LawID'],LawName = json['LawName'],Year = json['Year'],Month = json['Month'],Type = json['Type'],SubType = json['SubType'],FromEmployeesCount = json['FromEmployeesCount'],ToEmployeesCount = json['ToEmployeesCount'],FromMinimum = json['FromMinimum'],ToMinimum = json['ToMinimum'],FromMaximum = json['FromMaximum'],ToMaximum = json['ToMaximum'],FromAverage = json['FromAverage'],ToAverage = json['ToAverage'],FromRemoveDate = AppDateTime.stringToDateTime(json['FromRemoveDate']),ToRemoveDate = AppDateTime.stringToDateTime(json['ToRemoveDate']),PayrollType = json['PayrollType'],UserType = json['UserType'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'OrganName' : OrganName,'RemoverUserID' : RemoverUserID,'LawID' : LawID,'LawName' : LawName,'Year' : Year,'Month' : Month,'Type' : Type,'SubType' : SubType,'FromEmployeesCount' : FromEmployeesCount,'ToEmployeesCount' : ToEmployeesCount,'FromMinimum' : FromMinimum,'ToMinimum' : ToMinimum,'FromMaximum' : FromMaximum,'ToMaximum' : ToMaximum,'FromAverage' : FromAverage,'ToAverage' : ToAverage,'FromRemoveDate' : FromRemoveDate.toString(),'ToRemoveDate' : ToRemoveDate.toString(),'PayrollType' : PayrollType,'UserType' : UserType,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class PayrollReportListVM extends Model{
  // ignore: non_constant_identifier_names
  List<Department> Organs;
  // ignore: non_constant_identifier_names
  List<Law> Laws;
  // ignore: non_constant_identifier_names
  List<String> Years;
  // ignore: non_constant_identifier_names
  List<String> Months;
  // ignore: non_constant_identifier_names
  int PostLevel;
  // ignore: non_constant_identifier_names
  int JobBase;
  // ignore: non_constant_identifier_names
  int EducationDegree;
  // ignore: non_constant_identifier_names
  int EmploymentType;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PayrollReportListVM();
  // ignore: non_constant_identifier_names
  PayrollReportListVM.setProperty({this.Organs,this.Laws,this.Years,this.Months,this.PostLevel,this.JobBase,this.EducationDegree,this.EmploymentType,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  PayrollReportListVM.fromJson(Map<String, dynamic> json):Organs = json['Organs'] != null ?List<Department>.from(json['Organs'].map((x) => Department.fromJson(x))):[],Laws = json['Laws'] != null ?List<Law>.from(json['Laws'].map((x) => Law.fromJson(x))):[],Years = json['Years'] != null ? List<String>.from(json['Years'].map((x) => x)):[],Months = json['Months'] != null ? List<String>.from(json['Months'].map((x) => x)):[],PostLevel = json['PostLevel'],JobBase = json['JobBase'],EducationDegree = json['EducationDegree'],EmploymentType = json['EmploymentType'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Organs ': Organs != null ? List<dynamic>.from(Organs.map((x) => x.toJson())):[],'Laws ': Laws != null ? List<dynamic>.from(Laws.map((x) => x.toJson())):[],'Years ': Years != null ? List<String>.from(Years.map((x) => x)):[],'Months ': Months != null ? List<String>.from(Months.map((x) => x)):[],'PostLevel' : PostLevel,'JobBase' : JobBase,'EducationDegree' : EducationDegree,'EmploymentType' : EmploymentType,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class ReportSummaryByPayrollEmployeeListVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  List<String> OrganIDs;
  // ignore: non_constant_identifier_names
  String ParentOrganID;
  // ignore: non_constant_identifier_names
  int EmploymentType;
  // ignore: non_constant_identifier_names
  String WpProvinceID;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ReportSummaryByPayrollEmployeeListVM();
  // ignore: non_constant_identifier_names
  ReportSummaryByPayrollEmployeeListVM.setProperty({this.OrganID,this.OrganIDs,this.ParentOrganID,this.EmploymentType,this.WpProvinceID,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  ReportSummaryByPayrollEmployeeListVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],OrganIDs = json['OrganIDs'] != null ? List<String>.from(json['OrganIDs'].map((x) => x)):[],ParentOrganID = json['ParentOrganID'],EmploymentType = json['EmploymentType'],WpProvinceID = json['WpProvinceID'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'OrganIDs ': OrganIDs != null ? List<String>.from(OrganIDs.map((x) => x)):[],'ParentOrganID' : ParentOrganID,'EmploymentType' : EmploymentType,'WpProvinceID' : WpProvinceID,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class N2NReportListVM extends Model{
  // ignore: non_constant_identifier_names
  List<Department> Organs;
  // ignore: non_constant_identifier_names
  List<Law> Laws;
  // ignore: non_constant_identifier_names
  List<String> Years;
  // ignore: non_constant_identifier_names
  List<String> Months;
  // ignore: non_constant_identifier_names
  List<String> PostLevels;
  // ignore: non_constant_identifier_names
  int Function;
  // ignore: non_constant_identifier_names
  bool WithDetails;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  N2NReportListVM();
  // ignore: non_constant_identifier_names
  N2NReportListVM.setProperty({this.Organs,this.Laws,this.Years,this.Months,this.PostLevels,this.Function,this.WithDetails,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  N2NReportListVM.fromJson(Map<String, dynamic> json):Organs = json['Organs'] != null ?List<Department>.from(json['Organs'].map((x) => Department.fromJson(x))):[],Laws = json['Laws'] != null ?List<Law>.from(json['Laws'].map((x) => Law.fromJson(x))):[],Years = json['Years'] != null ? List<String>.from(json['Years'].map((x) => x)):[],Months = json['Months'] != null ? List<String>.from(json['Months'].map((x) => x)):[],PostLevels = json['PostLevels'] != null ? List<String>.from(json['PostLevels'].map((x) => x)):[],Function = json['Function'],WithDetails = json['WithDetails'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Organs ': Organs != null ? List<dynamic>.from(Organs.map((x) => x.toJson())):[],'Laws ': Laws != null ? List<dynamic>.from(Laws.map((x) => x.toJson())):[],'Years ': Years != null ? List<String>.from(Years.map((x) => x)):[],'Months ': Months != null ? List<String>.from(Months.map((x) => x)):[],'PostLevels ': PostLevels != null ? List<String>.from(PostLevels.map((x) => x)):[],'Function' : Function,'WithDetails' : WithDetails,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class PayrollEmployeesByNationalCodeReportListVM extends Model{
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PayrollEmployeesByNationalCodeReportListVM();
  // ignore: non_constant_identifier_names
  PayrollEmployeesByNationalCodeReportListVM.setProperty({this.NationalCode,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  PayrollEmployeesByNationalCodeReportListVM.fromJson(Map<String, dynamic> json):NationalCode = json['NationalCode'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'NationalCode' : NationalCode,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class EmployeePerPayrollListVM extends Model{
  // ignore: non_constant_identifier_names
  int YearTo;
  // ignore: non_constant_identifier_names
  int YearFrom;
  // ignore: non_constant_identifier_names
  int MonthFrom;
  // ignore: non_constant_identifier_names
  int MonthTo;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  EmployeePerPayrollListVM();
  // ignore: non_constant_identifier_names
  EmployeePerPayrollListVM.setProperty({this.YearTo,this.YearFrom,this.MonthFrom,this.MonthTo,this.OrganID,this.LawID,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  EmployeePerPayrollListVM.fromJson(Map<String, dynamic> json):YearTo = json['YearTo'],YearFrom = json['YearFrom'],MonthFrom = json['MonthFrom'],MonthTo = json['MonthTo'],OrganID = json['OrganID'],LawID = json['LawID'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'YearTo' : YearTo,'YearFrom' : YearFrom,'MonthFrom' : MonthFrom,'MonthTo' : MonthTo,'OrganID' : OrganID,'LawID' : LawID,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class PayrollEmployeeWithDetailsReportListVM extends Model{
  // ignore: non_constant_identifier_names
  String PayrollID;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  List<String> OrganIDs;
  // ignore: non_constant_identifier_names
  List<String> ParentOrganIDs;
  // ignore: non_constant_identifier_names
  List<String> PostLevels;
  // ignore: non_constant_identifier_names
  List<String> Years;
  // ignore: non_constant_identifier_names
  List<String> Months;
  // ignore: non_constant_identifier_names
  List<String> LawIDs;
  // ignore: non_constant_identifier_names
  List<String> OrganPosts;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PayrollEmployeeWithDetailsReportListVM();
  // ignore: non_constant_identifier_names
  PayrollEmployeeWithDetailsReportListVM.setProperty({this.PayrollID,this.NationalCode,this.OrganIDs,this.ParentOrganIDs,this.PostLevels,this.Years,this.Months,this.LawIDs,this.OrganPosts,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  PayrollEmployeeWithDetailsReportListVM.fromJson(Map<String, dynamic> json):PayrollID = json['PayrollID'],NationalCode = json['NationalCode'],OrganIDs = json['OrganIDs'] != null ? List<String>.from(json['OrganIDs'].map((x) => x)):[],ParentOrganIDs = json['ParentOrganIDs'] != null ? List<String>.from(json['ParentOrganIDs'].map((x) => x)):[],PostLevels = json['PostLevels'] != null ? List<String>.from(json['PostLevels'].map((x) => x)):[],Years = json['Years'] != null ? List<String>.from(json['Years'].map((x) => x)):[],Months = json['Months'] != null ? List<String>.from(json['Months'].map((x) => x)):[],LawIDs = json['LawIDs'] != null ? List<String>.from(json['LawIDs'].map((x) => x)):[],OrganPosts = json['OrganPosts'] != null ? List<String>.from(json['OrganPosts'].map((x) => x)):[],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'PayrollID' : PayrollID,'NationalCode' : NationalCode,'OrganIDs ': OrganIDs != null ? List<String>.from(OrganIDs.map((x) => x)):[],'ParentOrganIDs ': ParentOrganIDs != null ? List<String>.from(ParentOrganIDs.map((x) => x)):[],'PostLevels ': PostLevels != null ? List<String>.from(PostLevels.map((x) => x)):[],'Years ': Years != null ? List<String>.from(Years.map((x) => x)):[],'Months ': Months != null ? List<String>.from(Months.map((x) => x)):[],'LawIDs ': LawIDs != null ? List<String>.from(LawIDs.map((x) => x)):[],'OrganPosts ': OrganPosts != null ? List<String>.from(OrganPosts.map((x) => x)):[],'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class PayrollEmployeeWithDetailsReportListVM_ extends Model{
  // ignore: non_constant_identifier_names
  String PayrollID;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String EmployeeID;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int PostLevel;
  // ignore: non_constant_identifier_names
  int PostLevelFrom;
  // ignore: non_constant_identifier_names
  int PostLevelTo;
  // ignore: non_constant_identifier_names
  int EducationDegree;
  // ignore: non_constant_identifier_names
  int JobBase;
  // ignore: non_constant_identifier_names
  int SumFrom;
  // ignore: non_constant_identifier_names
  int SumTo;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PayrollEmployeeWithDetailsReportListVM_();
  // ignore: non_constant_identifier_names
  PayrollEmployeeWithDetailsReportListVM_.setProperty({this.PayrollID,this.OrganID,this.LawID,this.EmployeeID,this.Year,this.Month,this.NationalCode,this.Name,this.PostLevel,this.PostLevelFrom,this.PostLevelTo,this.EducationDegree,this.JobBase,this.SumFrom,this.SumTo,this.PageIndex,this.PageSize,this.SortExp,this.GetTotalCount});
  @override
  PayrollEmployeeWithDetailsReportListVM_.fromJson(Map<String, dynamic> json):PayrollID = json['PayrollID'],OrganID = json['OrganID'],LawID = json['LawID'],EmployeeID = json['EmployeeID'],Year = json['Year'],Month = json['Month'],NationalCode = json['NationalCode'],Name = json['Name'],PostLevel = json['PostLevel'],PostLevelFrom = json['PostLevelFrom'],PostLevelTo = json['PostLevelTo'],EducationDegree = json['EducationDegree'],JobBase = json['JobBase'],SumFrom = json['SumFrom'],SumTo = json['SumTo'],PageIndex = json['PageIndex'],PageSize = json['PageSize'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'PayrollID' : PayrollID,'OrganID' : OrganID,'LawID' : LawID,'EmployeeID' : EmployeeID,'Year' : Year,'Month' : Month,'NationalCode' : NationalCode,'Name' : Name,'PostLevel' : PostLevel,'PostLevelFrom' : PostLevelFrom,'PostLevelTo' : PostLevelTo,'EducationDegree' : EducationDegree,'JobBase' : JobBase,'SumFrom' : SumFrom,'SumTo' : SumTo,'PageIndex' : PageIndex,'PageSize' : PageSize,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'GetTotalCount' : GetTotalCount};
}
class SendSmsToGroupVM extends Model{
  // ignore: non_constant_identifier_names
  List<String> Items;
  // ignore: non_constant_identifier_names
  String Content;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  SendSmsToGroupVM();
  // ignore: non_constant_identifier_names
  SendSmsToGroupVM.setProperty({this.Items,this.Content,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  SendSmsToGroupVM.fromJson(Map<String, dynamic> json):Items = json['Items'] != null ? List<String>.from(json['Items'].map((x) => x)):[],Content = json['Content'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Items ': Items != null ? List<String>.from(Items.map((x) => x)):[],'Content' : Content,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class GetPayrollEmployeeReport extends Model{
  // ignore: non_constant_identifier_names
  bool WithDetail;
  // ignore: non_constant_identifier_names
  List<String> PayrollIDs;
  // ignore: non_constant_identifier_names
  List<String> OrganIDs;
  // ignore: non_constant_identifier_names
  List<String> ParentOrganIDs;
  // ignore: non_constant_identifier_names
  List<String> PostLevels;
  // ignore: non_constant_identifier_names
  List<String> Years;
  // ignore: non_constant_identifier_names
  List<String> Months;
  // ignore: non_constant_identifier_names
  List<String> LawIDs;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String FirstName;
  // ignore: non_constant_identifier_names
  String LastName;
  // ignore: non_constant_identifier_names
  int SumFrom;
  // ignore: non_constant_identifier_names
  int SumTo;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  GetPayrollEmployeeReport();
  // ignore: non_constant_identifier_names
  GetPayrollEmployeeReport.setProperty({this.WithDetail,this.PayrollIDs,this.OrganIDs,this.ParentOrganIDs,this.PostLevels,this.Years,this.Months,this.LawIDs,this.NationalCode,this.FirstName,this.LastName,this.SumFrom,this.SumTo,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  GetPayrollEmployeeReport.fromJson(Map<String, dynamic> json):WithDetail = json['WithDetail'],PayrollIDs = json['PayrollIDs'] != null ? List<String>.from(json['PayrollIDs'].map((x) => x)):[],OrganIDs = json['OrganIDs'] != null ? List<String>.from(json['OrganIDs'].map((x) => x)):[],ParentOrganIDs = json['ParentOrganIDs'] != null ? List<String>.from(json['ParentOrganIDs'].map((x) => x)):[],PostLevels = json['PostLevels'] != null ? List<String>.from(json['PostLevels'].map((x) => x)):[],Years = json['Years'] != null ? List<String>.from(json['Years'].map((x) => x)):[],Months = json['Months'] != null ? List<String>.from(json['Months'].map((x) => x)):[],LawIDs = json['LawIDs'] != null ? List<String>.from(json['LawIDs'].map((x) => x)):[],NationalCode = json['NationalCode'],FirstName = json['FirstName'],LastName = json['LastName'],SumFrom = json['SumFrom'],SumTo = json['SumTo'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'WithDetail' : WithDetail,'PayrollIDs ': PayrollIDs != null ? List<String>.from(PayrollIDs.map((x) => x)):[],'OrganIDs ': OrganIDs != null ? List<String>.from(OrganIDs.map((x) => x)):[],'ParentOrganIDs ': ParentOrganIDs != null ? List<String>.from(ParentOrganIDs.map((x) => x)):[],'PostLevels ': PostLevels != null ? List<String>.from(PostLevels.map((x) => x)):[],'Years ': Years != null ? List<String>.from(Years.map((x) => x)):[],'Months ': Months != null ? List<String>.from(Months.map((x) => x)):[],'LawIDs ': LawIDs != null ? List<String>.from(LawIDs.map((x) => x)):[],'NationalCode' : NationalCode,'FirstName' : FirstName,'LastName' : LastName,'SumFrom' : SumFrom,'SumTo' : SumTo,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class PayrollSubsetsListVM extends Model{
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PayrollSubsetsListVM();
  // ignore: non_constant_identifier_names
  PayrollSubsetsListVM.setProperty({this.DepartmentID,this.Year,this.Month,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  PayrollSubsetsListVM.fromJson(Map<String, dynamic> json):DepartmentID = json['DepartmentID'],Year = json['Year'],Month = json['Month'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'DepartmentID' : DepartmentID,'Year' : Year,'Month' : Month,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class PayrollWarningListVM extends Model{
  // ignore: non_constant_identifier_names
  String PayrollID;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PayrollWarningListVM();
  // ignore: non_constant_identifier_names
  PayrollWarningListVM.setProperty({this.PayrollID,this.NationalCode,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  PayrollWarningListVM.fromJson(Map<String, dynamic> json):PayrollID = json['PayrollID'],NationalCode = json['NationalCode'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'PayrollID' : PayrollID,'NationalCode' : NationalCode,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class SalaryPublishListVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  SalaryPublishListVM();
  // ignore: non_constant_identifier_names
  SalaryPublishListVM.setProperty({this.OrganID,this.Year,this.Month,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  SalaryPublishListVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],Year = json['Year'],Month = json['Month'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'Year' : Year,'Month' : Month,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class OrgansProgressReportListVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  int ReportType;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String ParentOrganID;
  // ignore: non_constant_identifier_names
  String ParentOrganName;
  // ignore: non_constant_identifier_names
  int DepartmentType;
  // ignore: non_constant_identifier_names
  int DepartmentSubType;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  int FromYear;
  // ignore: non_constant_identifier_names
  int FromMonth;
  // ignore: non_constant_identifier_names
  int ToYear;
  // ignore: non_constant_identifier_names
  int ToMonth;
  // ignore: non_constant_identifier_names
  bool SearchWithhierarchy;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  OrgansProgressReportListVM();
  // ignore: non_constant_identifier_names
  OrgansProgressReportListVM.setProperty({this.OrganID,this.ReportType,this.OrganName,this.ParentOrganID,this.ParentOrganName,this.DepartmentType,this.DepartmentSubType,this.LawID,this.LawName,this.FromYear,this.FromMonth,this.ToYear,this.ToMonth,this.SearchWithhierarchy,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  OrgansProgressReportListVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],ReportType = json['ReportType'],OrganName = json['OrganName'],ParentOrganID = json['ParentOrganID'],ParentOrganName = json['ParentOrganName'],DepartmentType = json['DepartmentType'],DepartmentSubType = json['DepartmentSubType'],LawID = json['LawID'],LawName = json['LawName'],FromYear = json['FromYear'],FromMonth = json['FromMonth'],ToYear = json['ToYear'],ToMonth = json['ToMonth'],SearchWithhierarchy = json['SearchWithhierarchy'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'ReportType' : ReportType,'OrganName' : OrganName,'ParentOrganID' : ParentOrganID,'ParentOrganName' : ParentOrganName,'DepartmentType' : DepartmentType,'DepartmentSubType' : DepartmentSubType,'LawID' : LawID,'LawName' : LawName,'FromYear' : FromYear,'FromMonth' : FromMonth,'ToYear' : ToYear,'ToMonth' : ToMonth,'SearchWithhierarchy' : SearchWithhierarchy,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class EmployeeExcelVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String File;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  EmployeeExcelVM();
  // ignore: non_constant_identifier_names
  EmployeeExcelVM.setProperty({this.OrganID,this.File,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  EmployeeExcelVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],File = json['File'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'File' : File,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class EmployeeReportListVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  int PostLevel;
  // ignore: non_constant_identifier_names
  int EducationDegree;
  // ignore: non_constant_identifier_names
  int EmploymentType;
  // ignore: non_constant_identifier_names
  int ServiceYearsType;
  // ignore: non_constant_identifier_names
  int JobBase;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int PaymentFrom;
  // ignore: non_constant_identifier_names
  int PaymentTo;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  EmployeeReportListVM();
  // ignore: non_constant_identifier_names
  EmployeeReportListVM.setProperty({this.OrganID,this.LawID,this.Year,this.Month,this.PostLevel,this.EducationDegree,this.EmploymentType,this.ServiceYearsType,this.JobBase,this.NationalCode,this.Name,this.PaymentFrom,this.PaymentTo,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  EmployeeReportListVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],LawID = json['LawID'],Year = json['Year'],Month = json['Month'],PostLevel = json['PostLevel'],EducationDegree = json['EducationDegree'],EmploymentType = json['EmploymentType'],ServiceYearsType = json['ServiceYearsType'],JobBase = json['JobBase'],NationalCode = json['NationalCode'],Name = json['Name'],PaymentFrom = json['PaymentFrom'],PaymentTo = json['PaymentTo'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'LawID' : LawID,'Year' : Year,'Month' : Month,'PostLevel' : PostLevel,'EducationDegree' : EducationDegree,'EmploymentType' : EmploymentType,'ServiceYearsType' : ServiceYearsType,'JobBase' : JobBase,'NationalCode' : NationalCode,'Name' : Name,'PaymentFrom' : PaymentFrom,'PaymentTo' : PaymentTo,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class simpleReportListVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  simpleReportListVM();
  // ignore: non_constant_identifier_names
  simpleReportListVM.setProperty({this.OrganID,this.OrganName,this.LawID,this.LawName,this.Year,this.Month,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  simpleReportListVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],OrganName = json['OrganName'],LawID = json['LawID'],LawName = json['LawName'],Year = json['Year'],Month = json['Month'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'OrganName' : OrganName,'LawID' : LawID,'LawName' : LawName,'Year' : Year,'Month' : Month,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class ReportListVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String DepartmentID;
  // ignore: non_constant_identifier_names
  String FirstParentDepartmentID;
  // ignore: non_constant_identifier_names
  String SecondParentDepartmentID;
  // ignore: non_constant_identifier_names
  String DepartmentCategoryID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Payments;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  int PostLevel;
  // ignore: non_constant_identifier_names
  String CurrentUserOrganID;
  // ignore: non_constant_identifier_names
  int EducationDegree;
  // ignore: non_constant_identifier_names
  int EmploymentType;
  // ignore: non_constant_identifier_names
  int ServiceYearsType;
  // ignore: non_constant_identifier_names
  int JobBase;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  ReportListVM();
  // ignore: non_constant_identifier_names
  ReportListVM.setProperty({this.OrganID,this.DepartmentID,this.FirstParentDepartmentID,this.SecondParentDepartmentID,this.DepartmentCategoryID,this.OrganName,this.LawID,this.LawName,this.Year,this.Payments,this.Month,this.PostLevel,this.CurrentUserOrganID,this.EducationDegree,this.EmploymentType,this.ServiceYearsType,this.JobBase,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  ReportListVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],DepartmentID = json['DepartmentID'],FirstParentDepartmentID = json['FirstParentDepartmentID'],SecondParentDepartmentID = json['SecondParentDepartmentID'],DepartmentCategoryID = json['DepartmentCategoryID'],OrganName = json['OrganName'],LawID = json['LawID'],LawName = json['LawName'],Year = json['Year'],Payments = json['Payments'],Month = json['Month'],PostLevel = json['PostLevel'],CurrentUserOrganID = json['CurrentUserOrganID'],EducationDegree = json['EducationDegree'],EmploymentType = json['EmploymentType'],ServiceYearsType = json['ServiceYearsType'],JobBase = json['JobBase'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'DepartmentID' : DepartmentID,'FirstParentDepartmentID' : FirstParentDepartmentID,'SecondParentDepartmentID' : SecondParentDepartmentID,'DepartmentCategoryID' : DepartmentCategoryID,'OrganName' : OrganName,'LawID' : LawID,'LawName' : LawName,'Year' : Year,'Payments' : Payments,'Month' : Month,'PostLevel' : PostLevel,'CurrentUserOrganID' : CurrentUserOrganID,'EducationDegree' : EducationDegree,'EmploymentType' : EmploymentType,'ServiceYearsType' : ServiceYearsType,'JobBase' : JobBase,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class EmployeeListVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String File;
  // ignore: non_constant_identifier_names
  int State;
  // ignore: non_constant_identifier_names
  int PostLevel;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  EmployeeListVM();
  // ignore: non_constant_identifier_names
  EmployeeListVM.setProperty({this.OrganID,this.OrganName,this.Name,this.NationalCode,this.File,this.State,this.PostLevel,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  EmployeeListVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],OrganName = json['OrganName'],Name = json['Name'],NationalCode = json['NationalCode'],File = json['File'],State = json['State'],PostLevel = json['PostLevel'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'OrganName' : OrganName,'Name' : Name,'NationalCode' : NationalCode,'File' : File,'State' : State,'PostLevel' : PostLevel,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class PayrollDetailListVM extends Model{
  // ignore: non_constant_identifier_names
  List<String> PayrollIDs;
  // ignore: non_constant_identifier_names
  List<String> OrganIDs;
  // ignore: non_constant_identifier_names
  List<String> LawIDs;
  // ignore: non_constant_identifier_names
  List<String> Years;
  // ignore: non_constant_identifier_names
  List<String> Months;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PayrollDetailListVM();
  // ignore: non_constant_identifier_names
  PayrollDetailListVM.setProperty({this.PayrollIDs,this.OrganIDs,this.LawIDs,this.Years,this.Months,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  PayrollDetailListVM.fromJson(Map<String, dynamic> json):PayrollIDs = json['PayrollIDs'] != null ? List<String>.from(json['PayrollIDs'].map((x) => x)):[],OrganIDs = json['OrganIDs'] != null ? List<String>.from(json['OrganIDs'].map((x) => x)):[],LawIDs = json['LawIDs'] != null ? List<String>.from(json['LawIDs'].map((x) => x)):[],Years = json['Years'] != null ? List<String>.from(json['Years'].map((x) => x)):[],Months = json['Months'] != null ? List<String>.from(json['Months'].map((x) => x)):[],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'PayrollIDs ': PayrollIDs != null ? List<String>.from(PayrollIDs.map((x) => x)):[],'OrganIDs ': OrganIDs != null ? List<String>.from(OrganIDs.map((x) => x)):[],'LawIDs ': LawIDs != null ? List<String>.from(LawIDs.map((x) => x)):[],'Years ': Years != null ? List<String>.from(Years.map((x) => x)):[],'Months ': Months != null ? List<String>.from(Months.map((x) => x)):[],'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class PayrollEmployeeListVM extends Model{
  // ignore: non_constant_identifier_names
  int DetailType;
  // ignore: non_constant_identifier_names
  String PayrollID;
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String EmployeeID;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  String NationalCode;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  List<String> PostLevels;
  // ignore: non_constant_identifier_names
  int PostLevel;
  // ignore: non_constant_identifier_names
  int PostLevelFrom;
  // ignore: non_constant_identifier_names
  int PostLevelTo;
  // ignore: non_constant_identifier_names
  int EducationDegree;
  // ignore: non_constant_identifier_names
  int JobBase;
  // ignore: non_constant_identifier_names
  int SumFrom;
  // ignore: non_constant_identifier_names
  int SumTo;
  // ignore: non_constant_identifier_names
  int PostUniqueID;
  // ignore: non_constant_identifier_names
  String PostName;
  // ignore: non_constant_identifier_names
  int PostTypeCategory;
  // ignore: non_constant_identifier_names
  int PostManagementType;
  // ignore: non_constant_identifier_names
  int PostCategory;
  // ignore: non_constant_identifier_names
  int PostPositionType;
  // ignore: non_constant_identifier_names
  String OrganCode;
  // ignore: non_constant_identifier_names
  int LastState;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PayrollEmployeeListVM();
  // ignore: non_constant_identifier_names
  PayrollEmployeeListVM.setProperty({this.DetailType,this.PayrollID,this.OrganID,this.LawID,this.EmployeeID,this.Year,this.Month,this.NationalCode,this.Name,this.PostLevels,this.PostLevel,this.PostLevelFrom,this.PostLevelTo,this.EducationDegree,this.JobBase,this.SumFrom,this.SumTo,this.PostUniqueID,this.PostName,this.PostTypeCategory,this.PostManagementType,this.PostCategory,this.PostPositionType,this.OrganCode,this.LastState,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  PayrollEmployeeListVM.fromJson(Map<String, dynamic> json):DetailType = json['DetailType'],PayrollID = json['PayrollID'],OrganID = json['OrganID'],LawID = json['LawID'],EmployeeID = json['EmployeeID'],Year = json['Year'],Month = json['Month'],NationalCode = json['NationalCode'],Name = json['Name'],PostLevels = json['PostLevels'] != null ? List<String>.from(json['PostLevels'].map((x) => x)):[],PostLevel = json['PostLevel'],PostLevelFrom = json['PostLevelFrom'],PostLevelTo = json['PostLevelTo'],EducationDegree = json['EducationDegree'],JobBase = json['JobBase'],SumFrom = json['SumFrom'],SumTo = json['SumTo'],PostUniqueID = json['PostUniqueID'],PostName = json['PostName'],PostTypeCategory = json['PostTypeCategory'],PostManagementType = json['PostManagementType'],PostCategory = json['PostCategory'],PostPositionType = json['PostPositionType'],OrganCode = json['OrganCode'],LastState = json['LastState'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'DetailType' : DetailType,'PayrollID' : PayrollID,'OrganID' : OrganID,'LawID' : LawID,'EmployeeID' : EmployeeID,'Year' : Year,'Month' : Month,'NationalCode' : NationalCode,'Name' : Name,'PostLevels ': PostLevels != null ? List<String>.from(PostLevels.map((x) => x)):[],'PostLevel' : PostLevel,'PostLevelFrom' : PostLevelFrom,'PostLevelTo' : PostLevelTo,'EducationDegree' : EducationDegree,'JobBase' : JobBase,'SumFrom' : SumFrom,'SumTo' : SumTo,'PostUniqueID' : PostUniqueID,'PostName' : PostName,'PostTypeCategory' : PostTypeCategory,'PostManagementType' : PostManagementType,'PostCategory' : PostCategory,'PostPositionType' : PostPositionType,'OrganCode' : OrganCode,'LastState' : LastState,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class PayrollListVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  String MainOrganID;
  // ignore: non_constant_identifier_names
  String OrganName;
  // ignore: non_constant_identifier_names
  String LawID;
  // ignore: non_constant_identifier_names
  String LawName;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  int LastDocState;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int SubType;
  // ignore: non_constant_identifier_names
  int FromEmployeesCount;
  // ignore: non_constant_identifier_names
  int ToEmployeesCount;
  // ignore: non_constant_identifier_names
  int FromMinimum;
  // ignore: non_constant_identifier_names
  int ToMinimum;
  // ignore: non_constant_identifier_names
  int FromMaximum;
  // ignore: non_constant_identifier_names
  int ToMaximum;
  // ignore: non_constant_identifier_names
  int FromAverage;
  // ignore: non_constant_identifier_names
  int ToAverage;
  // ignore: non_constant_identifier_names
  DateTime FromCreationDate;
  // ignore: non_constant_identifier_names
  DateTime ToCreationDate;
  // ignore: non_constant_identifier_names
  DateTime FromConfirmDate;
  // ignore: non_constant_identifier_names
  DateTime ToConfirmDate;
  // ignore: non_constant_identifier_names
  int PayrollType;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  PayrollListVM();
  // ignore: non_constant_identifier_names
  PayrollListVM.setProperty({this.OrganID,this.MainOrganID,this.OrganName,this.LawID,this.LawName,this.Year,this.Month,this.LastDocState,this.Type,this.SubType,this.FromEmployeesCount,this.ToEmployeesCount,this.FromMinimum,this.ToMinimum,this.FromMaximum,this.ToMaximum,this.FromAverage,this.ToAverage,this.FromCreationDate,this.ToCreationDate,this.FromConfirmDate,this.ToConfirmDate,this.PayrollType,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  PayrollListVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],MainOrganID = json['MainOrganID'],OrganName = json['OrganName'],LawID = json['LawID'],LawName = json['LawName'],Year = json['Year'],Month = json['Month'],LastDocState = json['LastDocState'],Type = json['Type'],SubType = json['SubType'],FromEmployeesCount = json['FromEmployeesCount'],ToEmployeesCount = json['ToEmployeesCount'],FromMinimum = json['FromMinimum'],ToMinimum = json['ToMinimum'],FromMaximum = json['FromMaximum'],ToMaximum = json['ToMaximum'],FromAverage = json['FromAverage'],ToAverage = json['ToAverage'],FromCreationDate = AppDateTime.stringToDateTime(json['FromCreationDate']),ToCreationDate = AppDateTime.stringToDateTime(json['ToCreationDate']),FromConfirmDate = AppDateTime.stringToDateTime(json['FromConfirmDate']),ToConfirmDate = AppDateTime.stringToDateTime(json['ToConfirmDate']),PayrollType = json['PayrollType'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'MainOrganID' : MainOrganID,'OrganName' : OrganName,'LawID' : LawID,'LawName' : LawName,'Year' : Year,'Month' : Month,'LastDocState' : LastDocState,'Type' : Type,'SubType' : SubType,'FromEmployeesCount' : FromEmployeesCount,'ToEmployeesCount' : ToEmployeesCount,'FromMinimum' : FromMinimum,'ToMinimum' : ToMinimum,'FromMaximum' : FromMaximum,'ToMaximum' : ToMaximum,'FromAverage' : FromAverage,'ToAverage' : ToAverage,'FromCreationDate' : FromCreationDate.toString(),'ToCreationDate' : ToCreationDate.toString(),'FromConfirmDate' : FromConfirmDate.toString(),'ToConfirmDate' : ToConfirmDate.toString(),'PayrollType' : PayrollType,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class TreasuryItemListVM extends Model{
  // ignore: non_constant_identifier_names
  int Code;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  TreasuryItemListVM();
  // ignore: non_constant_identifier_names
  TreasuryItemListVM.setProperty({this.Code,this.Name,this.Type,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  TreasuryItemListVM.fromJson(Map<String, dynamic> json):Code = json['Code'],Name = json['Name'],Type = json['Type'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'Code' : Code,'Name' : Name,'Type' : Type,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class WageTitleListVM extends Model{
  // ignore: non_constant_identifier_names
  List<String> OrganIDs;
  // ignore: non_constant_identifier_names
  List<String> LawIDs;
  // ignore: non_constant_identifier_names
  List<String> Codes;
  // ignore: non_constant_identifier_names
  String Name;
  // ignore: non_constant_identifier_names
  String Code;
  // ignore: non_constant_identifier_names
  int Type;
  // ignore: non_constant_identifier_names
  int IncomeType;
  // ignore: non_constant_identifier_names
  int Enabled;
  // ignore: non_constant_identifier_names
  BigInt FromMinimum;
  // ignore: non_constant_identifier_names
  BigInt ToMinimum;
  // ignore: non_constant_identifier_names
  BigInt FromMaximum;
  // ignore: non_constant_identifier_names
  BigInt ToMaximum;
  // ignore: non_constant_identifier_names
  String TreasuryItemID;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  WageTitleListVM();
  // ignore: non_constant_identifier_names
  WageTitleListVM.setProperty({this.OrganIDs,this.LawIDs,this.Codes,this.Name,this.Code,this.Type,this.IncomeType,this.Enabled,this.FromMinimum,this.ToMinimum,this.FromMaximum,this.ToMaximum,this.TreasuryItemID,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  WageTitleListVM.fromJson(Map<String, dynamic> json):OrganIDs = json['OrganIDs'] != null ? List<String>.from(json['OrganIDs'].map((x) => x)):[],LawIDs = json['LawIDs'] != null ? List<String>.from(json['LawIDs'].map((x) => x)):[],Codes = json['Codes'] != null ? List<String>.from(json['Codes'].map((x) => x)):[],Name = json['Name'],Code = json['Code'],Type = json['Type'],IncomeType = json['IncomeType'],Enabled = json['Enabled'],FromMinimum = new BigInt.from(json['FromMinimum']),ToMinimum = new BigInt.from(json['ToMinimum']),FromMaximum = new BigInt.from(json['FromMaximum']),ToMaximum = new BigInt.from(json['ToMaximum']),TreasuryItemID = json['TreasuryItemID'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganIDs ': OrganIDs != null ? List<String>.from(OrganIDs.map((x) => x)):[],'LawIDs ': LawIDs != null ? List<String>.from(LawIDs.map((x) => x)):[],'Codes ': Codes != null ? List<String>.from(Codes.map((x) => x)):[],'Name' : Name,'Code' : Code,'Type' : Type,'IncomeType' : IncomeType,'Enabled' : Enabled,'FromMinimum' : FromMinimum,'ToMinimum' : ToMinimum,'FromMaximum' : FromMaximum,'ToMaximum' : ToMaximum,'TreasuryItemID' : TreasuryItemID,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class WSListEmployeeVM extends Model{
  // ignore: non_constant_identifier_names
  String PayrollID;
  // ignore: non_constant_identifier_names
  bool NoDetails;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  WSListEmployeeVM();
  // ignore: non_constant_identifier_names
  WSListEmployeeVM.setProperty({this.PayrollID,this.NoDetails,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  WSListEmployeeVM.fromJson(Map<String, dynamic> json):PayrollID = json['PayrollID'],NoDetails = json['NoDetails'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'PayrollID' : PayrollID,'NoDetails' : NoDetails,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
class WSListPayrollVM extends Model{
  // ignore: non_constant_identifier_names
  String OrganID;
  // ignore: non_constant_identifier_names
  int Year;
  // ignore: non_constant_identifier_names
  int Month;
  // ignore: non_constant_identifier_names
  List<String> SortExp;
  // ignore: non_constant_identifier_names
  int PageSize;
  // ignore: non_constant_identifier_names
  int PageIndex;
  // ignore: non_constant_identifier_names
  bool GetTotalCount;
  WSListPayrollVM();
  // ignore: non_constant_identifier_names
  WSListPayrollVM.setProperty({this.OrganID,this.Year,this.Month,this.SortExp,this.PageSize,this.PageIndex,this.GetTotalCount});
  @override
  WSListPayrollVM.fromJson(Map<String, dynamic> json):OrganID = json['OrganID'],Year = json['Year'],Month = json['Month'],SortExp = json['SortExp'] != null ? List<String>.from(json['SortExp'].map((x) => x)):[],PageSize = json['PageSize'],PageIndex = json['PageIndex'],GetTotalCount = json['GetTotalCount'];
  Map<String, dynamic> toJson() =>{'OrganID' : OrganID,'Year' : Year,'Month' : Month,'SortExp ': SortExp != null ? List<String>.from(SortExp.map((x) => x)):[],'PageSize' : PageSize,'PageIndex' : PageIndex,'GetTotalCount' : GetTotalCount};
}
