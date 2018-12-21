part of edropin_eventsapi.api;

class EeEventProfile {
  
  String id = null;
  
  String name = null;
  
  List<String> roles = [];
  EeEventProfile();

  @override
  String toString() {
    return 'EeEventProfile[id=$id, name=$name, roles=$roles, ]';
  }

  EeEventProfile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    roles = ((json['roles'] ?? []) as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'roles': roles
    };
  }

  static List<EeEventProfile> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventProfile>() : json.map((value) => new EeEventProfile.fromJson(value)).toList();
  }

  static Map<String, EeEventProfile> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventProfile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventProfile.fromJson(value));
    }
    return map;
  }
}

