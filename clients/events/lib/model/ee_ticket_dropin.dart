part of edropin_eventsapi.api;

class EeTicketDropin {
  
  String id = null;
  
  String name = null;
  
  String dropinType = null;
  
  String color = null;
  EeTicketDropin();

  @override
  String toString() {
    return 'EeTicketDropin[id=$id, name=$name, dropinType=$dropinType, color=$color, ]';
  }

  EeTicketDropin.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    dropinType = json['dropinType'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'dropinType': dropinType,
      'color': color
    };
  }

  static List<EeTicketDropin> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeTicketDropin>() : json.map((value) => new EeTicketDropin.fromJson(value)).toList();
  }

  static Map<String, EeTicketDropin> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeTicketDropin>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeTicketDropin.fromJson(value));
    }
    return map;
  }
}

