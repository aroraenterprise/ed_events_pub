part of edropin_eventsapi.api;

class EeAttendeeNotification {
  
  String eventId = null;
  
  List<String> attendeeIds = [];
  
  String message = null;
  EeAttendeeNotification();

  @override
  String toString() {
    return 'EeAttendeeNotification[eventId=$eventId, attendeeIds=$attendeeIds, message=$message, ]';
  }

  EeAttendeeNotification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    eventId = json['eventId'];
    attendeeIds = ((json['attendeeIds'] ?? []) as List).map((item) => item as String).toList();
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'eventId': eventId,
      'attendeeIds': attendeeIds,
      'message': message
    };
  }

  static List<EeAttendeeNotification> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeAttendeeNotification>() : json.map((value) => new EeAttendeeNotification.fromJson(value)).toList();
  }

  static Map<String, EeAttendeeNotification> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeAttendeeNotification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeAttendeeNotification.fromJson(value));
    }
    return map;
  }
}

