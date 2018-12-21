part of edropin_eventsapi.api;

class EeEventAutomationUpdate {
  
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
  EeEventAutomationUpdate();

  @override
  String toString() {
    return 'EeEventAutomationUpdate[triggerType=$triggerType, triggerCondition=$triggerCondition, attendeeStateCondition=$attendeeStateCondition, actionType=$actionType, actionData=$actionData, dropletId=$dropletId, dropletData=$dropletData, active=$active, ]';
  }

  EeEventAutomationUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    triggerType = json['triggerType'];
    triggerCondition = json['triggerCondition'];
    attendeeStateCondition = json['attendeeStateCondition'];
    actionType = json['actionType'];
    actionData = json['actionData'];
    dropletId = json['dropletId'];
    dropletData = json['dropletData'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    return {
      'triggerType': triggerType,
      'triggerCondition': triggerCondition,
      'attendeeStateCondition': attendeeStateCondition,
      'actionType': actionType,
      'actionData': actionData,
      'dropletId': dropletId,
      'dropletData': dropletData,
      'active': active
    };
  }

  static List<EeEventAutomationUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventAutomationUpdate>() : json.map((value) => new EeEventAutomationUpdate.fromJson(value)).toList();
  }

  static Map<String, EeEventAutomationUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventAutomationUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventAutomationUpdate.fromJson(value));
    }
    return map;
  }
}

