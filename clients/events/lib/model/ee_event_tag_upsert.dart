part of edropin_eventsapi.api;

class EeEventTagUpsert {
  
  List<String> roles = [];
  
  bool isInvited = false;
  EeEventTagUpsert();

  @override
  String toString() {
    return 'EeEventTagUpsert[roles=$roles, isInvited=$isInvited, ]';
  }

  EeEventTagUpsert.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    roles = ((json['roles'] ?? []) as List).map((item) => item as String).toList();
    isInvited = json['isInvited'];
  }

  Map<String, dynamic> toJson() {
    return {
      'roles': roles,
      'isInvited': isInvited
    };
  }

  static List<EeEventTagUpsert> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventTagUpsert>() : json.map((value) => new EeEventTagUpsert.fromJson(value)).toList();
  }

  static Map<String, EeEventTagUpsert> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventTagUpsert>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventTagUpsert.fromJson(value));
    }
    return map;
  }
}

