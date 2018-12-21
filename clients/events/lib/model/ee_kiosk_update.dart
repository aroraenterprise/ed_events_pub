part of edropin_eventsapi.api;

class EeKioskUpdate {
  
  String name = null;
  
  String description = null;
  
  String color = null;
  
  String dropinId = null;
  EeKioskUpdate();

  @override
  String toString() {
    return 'EeKioskUpdate[name=$name, description=$description, color=$color, dropinId=$dropinId, ]';
  }

  EeKioskUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    description = json['description'];
    color = json['color'];
    dropinId = json['dropinId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'color': color,
      'dropinId': dropinId
    };
  }

  static List<EeKioskUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeKioskUpdate>() : json.map((value) => new EeKioskUpdate.fromJson(value)).toList();
  }

  static Map<String, EeKioskUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeKioskUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeKioskUpdate.fromJson(value));
    }
    return map;
  }
}

