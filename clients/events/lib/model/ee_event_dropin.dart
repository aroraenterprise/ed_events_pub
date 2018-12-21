part of edropin_eventsapi.api;

class EeEventDropin {
  
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
  
  String id = null;
  
  String createdOn = null;
  
  String modifiedOn = null;
  
  String version = null;
  
  String eventId = null;
  
  String eventName = null;
  
  String eventLocation = null;
  
  String eventPicture = null;
  
  String organizerId = null;
  
  String organizerName = null;
  
  List<EeEventDropinTicket> tickets = [];
  EeEventDropin();

  @override
  String toString() {
    return 'EeEventDropin[name=$name, color=$color, dropinType=$dropinType, startTimestamp=$startTimestamp, endTimestamp=$endTimestamp, isNotificationEnabled=$isNotificationEnabled, status=$status, customMessage=$customMessage, id=$id, createdOn=$createdOn, modifiedOn=$modifiedOn, version=$version, eventId=$eventId, eventName=$eventName, eventLocation=$eventLocation, eventPicture=$eventPicture, organizerId=$organizerId, organizerName=$organizerName, tickets=$tickets, ]';
  }

  EeEventDropin.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    color = json['color'];
    dropinType = json['dropinType'];
    startTimestamp = json['startTimestamp'];
    endTimestamp = json['endTimestamp'];
    isNotificationEnabled = json['isNotificationEnabled'];
    status = json['status'];
    customMessage = json['customMessage'];
    id = json['id'];
    createdOn = json['createdOn'];
    modifiedOn = json['modifiedOn'];
    version = json['version'];
    eventId = json['eventId'];
    eventName = json['eventName'];
    eventLocation = json['eventLocation'];
    eventPicture = json['eventPicture'];
    organizerId = json['organizerId'];
    organizerName = json['organizerName'];
    tickets = EeEventDropinTicket.listFromJson(json['tickets']);
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
      'customMessage': customMessage,
      'id': id,
      'createdOn': createdOn,
      'modifiedOn': modifiedOn,
      'version': version,
      'eventId': eventId,
      'eventName': eventName,
      'eventLocation': eventLocation,
      'eventPicture': eventPicture,
      'organizerId': organizerId,
      'organizerName': organizerName,
      'tickets': tickets
    };
  }

  static List<EeEventDropin> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventDropin>() : json.map((value) => new EeEventDropin.fromJson(value)).toList();
  }

  static Map<String, EeEventDropin> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventDropin>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventDropin.fromJson(value));
    }
    return map;
  }
}

