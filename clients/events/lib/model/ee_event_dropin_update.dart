part of edropin_eventsapi.api;

class EeEventDropinUpdate {
  
  String name = null;
  
  String color = null;
  
  String dropinType = null;
  //enum dropinTypeEnum {  CheckIn,  CheckOut,  Other,  };{
  
  int startTimestamp = null;
  
  int endTimestamp = null;
  
  bool isNotificationEnabled = true;
  
  String status = "Auto";
  //enum statusEnum {  Auto,  Open,  Closed,  };{
  
  String customMessage = null;
  EeEventDropinUpdate();

  @override
  String toString() {
    return 'EeEventDropinUpdate[name=$name, color=$color, dropinType=$dropinType, startTimestamp=$startTimestamp, endTimestamp=$endTimestamp, isNotificationEnabled=$isNotificationEnabled, status=$status, customMessage=$customMessage, ]';
  }

  EeEventDropinUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    color = json['color'];
    dropinType = json['dropinType'];
    startTimestamp = json['startTimestamp'];
    endTimestamp = json['endTimestamp'];
    isNotificationEnabled = json['isNotificationEnabled'];
    status = json['status'];
    customMessage = json['customMessage'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'color': color,
      'dropinType': dropinType,
      'startTimestamp': startTimestamp,
      'endTimestamp': endTimestamp,
      'isNotificationEnabled': isNotificationEnabled,
      'status': status,
      'customMessage': customMessage
    };
  }

  static List<EeEventDropinUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventDropinUpdate>() : json.map((value) => new EeEventDropinUpdate.fromJson(value)).toList();
  }

  static Map<String, EeEventDropinUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventDropinUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventDropinUpdate.fromJson(value));
    }
    return map;
  }
}

