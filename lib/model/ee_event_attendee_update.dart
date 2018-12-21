part of edropin_eventsapi.api;

class EeEventAttendeeUpdate {
  
  bool sendClaim = false;
  
  String name = null;
  
  String email = null;
  
  String title = null;
  
  String phone = null;
  
  String memberId = null;
  EeEventAttendeeUpdate();

  @override
  String toString() {
    return 'EeEventAttendeeUpdate[sendClaim=$sendClaim, name=$name, email=$email, title=$title, phone=$phone, memberId=$memberId, ]';
  }

  EeEventAttendeeUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sendClaim = json['sendClaim'];
    name = json['name'];
    email = json['email'];
    title = json['title'];
    phone = json['phone'];
    memberId = json['memberId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'sendClaim': sendClaim,
      'name': name,
      'email': email,
      'title': title,
      'phone': phone,
      'memberId': memberId
    };
  }

  static List<EeEventAttendeeUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventAttendeeUpdate>() : json.map((value) => new EeEventAttendeeUpdate.fromJson(value)).toList();
  }

  static Map<String, EeEventAttendeeUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventAttendeeUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventAttendeeUpdate.fromJson(value));
    }
    return map;
  }
}

