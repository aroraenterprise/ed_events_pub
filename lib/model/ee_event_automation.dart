part of edropin_eventsapi.api;

class EeEventAutomation {
  
  String id = null;
  
  String createdOn = null;
  
  String modifiedOn = null;
  
  String version = null;
  
  String triggerType = null;
  //enum triggerTypeEnum {  dropin,  certificate,  };{
  
  String triggerCondition = null;
  
  String attendeeStateCondition = null;
  
  String actionType = null;
  //enum actionTypeEnum {  assignCertificate,  };{
  
  Object actionData = null;
  
  String dropletId = null;
  
  Object dropletData = null;
  
  bool active = true;
  
  String eventId = null;
  
  String eventName = null;
  
  String eventLocation = null;
  
  String eventPicture = null;
  
  String organizerId = null;
  
  String organizerName = null;
  EeEventAutomation();

  @override
  String toString() {
    return 'EeEventAutomation[id=$id, createdOn=$createdOn, modifiedOn=$modifiedOn, version=$version, triggerType=$triggerType, triggerCondition=$triggerCondition, attendeeStateCondition=$attendeeStateCondition, actionType=$actionType, actionData=$actionData, dropletId=$dropletId, dropletData=$dropletData, active=$active, eventId=$eventId, eventName=$eventName, eventLocation=$eventLocation, eventPicture=$eventPicture, organizerId=$organizerId, organizerName=$organizerName, ]';
  }

  EeEventAutomation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createdOn = json['createdOn'];
    modifiedOn = json['modifiedOn'];
    version = json['version'];
    triggerType = json['triggerType'];
    triggerCondition = json['triggerCondition'];
    attendeeStateCondition = json['attendeeStateCondition'];
    actionType = json['actionType'];
    actionData = json['actionData'];
    dropletId = json['dropletId'];
    dropletData = json['dropletData'];
    active = json['active'];
    eventId = json['eventId'];
    eventName = json['eventName'];
    eventLocation = json['eventLocation'];
    eventPicture = json['eventPicture'];
    organizerId = json['organizerId'];
    organizerName = json['organizerName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdOn': createdOn,
      'modifiedOn': modifiedOn,
      'version': version,
      'triggerType': triggerType,
      'triggerCondition': triggerCondition,
      'attendeeStateCondition': attendeeStateCondition,
      'actionType': actionType,
      'actionData': actionData,
      'dropletId': dropletId,
      'dropletData': dropletData,
      'active': active,
      'eventId': eventId,
      'eventName': eventName,
      'eventLocation': eventLocation,
      'eventPicture': eventPicture,
      'organizerId': organizerId,
      'organizerName': organizerName
    };
  }

  static List<EeEventAutomation> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventAutomation>() : json.map((value) => new EeEventAutomation.fromJson(value)).toList();
  }

  static Map<String, EeEventAutomation> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventAutomation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventAutomation.fromJson(value));
    }
    return map;
  }
}

