part of edropin_eventsapi.api;

class EeEventAttendeeClaimUpdateAttendees {
  
  String phone = null;
  
  String name = null;
  
  String id = null;
  
  String title = null;
  
  String email = null;
  
  String memberId = null;
  EeEventAttendeeClaimUpdateAttendees();

  @override
  String toString() {
    return 'EeEventAttendeeClaimUpdateAttendees[phone=$phone, name=$name, id=$id, title=$title, email=$email, memberId=$memberId, ]';
  }

  EeEventAttendeeClaimUpdateAttendees.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    phone = json['phone'];
    name = json['name'];
    id = json['id'];
    title = json['title'];
    email = json['email'];
    memberId = json['memberId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'name': name,
      'id': id,
      'title': title,
      'email': email,
      'memberId': memberId
    };
  }

  static List<EeEventAttendeeClaimUpdateAttendees> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventAttendeeClaimUpdateAttendees>() : json.map((value) => new EeEventAttendeeClaimUpdateAttendees.fromJson(value)).toList();
  }

  static Map<String, EeEventAttendeeClaimUpdateAttendees> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventAttendeeClaimUpdateAttendees>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventAttendeeClaimUpdateAttendees.fromJson(value));
    }
    return map;
  }
}

