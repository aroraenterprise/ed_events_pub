part of edropin_eventsapi.api;

class EeAttendeeDropin {
  
  String id = null;
  
  String name = null;
  
  String type = null;
  
  String color = null;
  
  int timestamp = null;
  EeAttendeeDropin();

  @override
  String toString() {
    return 'EeAttendeeDropin[id=$id, name=$name, type=$type, color=$color, timestamp=$timestamp, ]';
  }

  EeAttendeeDropin.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    type = json['type'];
    color = json['color'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'color': color,
      'timestamp': timestamp
    };
  }

  static List<EeAttendeeDropin> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeAttendeeDropin>() : json.map((value) => new EeAttendeeDropin.fromJson(value)).toList();
  }

  static Map<String, EeAttendeeDropin> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeAttendeeDropin>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeAttendeeDropin.fromJson(value));
    }
    return map;
  }
}

