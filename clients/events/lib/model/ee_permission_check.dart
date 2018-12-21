part of edropin_eventsapi.api;

class EePermissionCheck {
  
  bool hasPermission = null;
  
  EePermission permission = null;
  EePermissionCheck();

  @override
  String toString() {
    return 'EePermissionCheck[hasPermission=$hasPermission, permission=$permission, ]';
  }

  EePermissionCheck.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hasPermission = json['hasPermission'];
    permission = new EePermission.fromJson(json['permission']);
  }

  Map<String, dynamic> toJson() {
    return {
      'hasPermission': hasPermission,
      'permission': permission
    };
  }

  static List<EePermissionCheck> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePermissionCheck>() : json.map((value) => new EePermissionCheck.fromJson(value)).toList();
  }

  static Map<String, EePermissionCheck> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePermissionCheck>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePermissionCheck.fromJson(value));
    }
    return map;
  }
}

