part of edropin_eventsapi.api;

class EeEventDropinTicket {
  
  String id = null;
  
  String name = null;
  EeEventDropinTicket();

  @override
  String toString() {
    return 'EeEventDropinTicket[id=$id, name=$name, ]';
  }

  EeEventDropinTicket.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name
    };
  }

  static List<EeEventDropinTicket> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventDropinTicket>() : json.map((value) => new EeEventDropinTicket.fromJson(value)).toList();
  }

  static Map<String, EeEventDropinTicket> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventDropinTicket>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventDropinTicket.fromJson(value));
    }
    return map;
  }
}

