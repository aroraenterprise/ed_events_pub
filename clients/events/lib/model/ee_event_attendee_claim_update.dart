part of edropin_eventsapi.api;

class EeEventAttendeeClaimUpdate {
  
  List<EeEventAttendeeClaimUpdateAttendees> attendees = [];
  EeEventAttendeeClaimUpdate();

  @override
  String toString() {
    return 'EeEventAttendeeClaimUpdate[attendees=$attendees, ]';
  }

  EeEventAttendeeClaimUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    attendees = EeEventAttendeeClaimUpdateAttendees.listFromJson(json['attendees']);
  }

  Map<String, dynamic> toJson() {
    return {
      'attendees': attendees
    };
  }

  static List<EeEventAttendeeClaimUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventAttendeeClaimUpdate>() : json.map((value) => new EeEventAttendeeClaimUpdate.fromJson(value)).toList();
  }

  static Map<String, EeEventAttendeeClaimUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventAttendeeClaimUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventAttendeeClaimUpdate.fromJson(value));
    }
    return map;
  }
}

