part of edropin_eventsapi.api;

class EeEventAttendeeTransfer {
  
  List<String> attendeeIds = [];
  
  String fromTicketId = null;
  
  String toTicketId = null;
  EeEventAttendeeTransfer();

  @override
  String toString() {
    return 'EeEventAttendeeTransfer[attendeeIds=$attendeeIds, fromTicketId=$fromTicketId, toTicketId=$toTicketId, ]';
  }

  EeEventAttendeeTransfer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    attendeeIds = ((json['attendeeIds'] ?? []) as List).map((item) => item as String).toList();
    fromTicketId = json['fromTicketId'];
    toTicketId = json['toTicketId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'attendeeIds': attendeeIds,
      'fromTicketId': fromTicketId,
      'toTicketId': toTicketId
    };
  }

  static List<EeEventAttendeeTransfer> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventAttendeeTransfer>() : json.map((value) => new EeEventAttendeeTransfer.fromJson(value)).toList();
  }

  static Map<String, EeEventAttendeeTransfer> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventAttendeeTransfer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventAttendeeTransfer.fromJson(value));
    }
    return map;
  }
}

