part of edropin_accountsapi.api;

class EaPermissionCheck {
  
  bool hasPermission = null;
  
  EaPermission permission = null;
  EaPermissionCheck();

  @override
  String toString() {
    return 'EaPermissionCheck[hasPermission=$hasPermission, permission=$permission, ]';
  }

  EaPermissionCheck.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hasPermission = json['hasPermission'];
    permission = new EaPermission.fromJson(json['permission']);
  }

  Map<String, dynamic> toJson() {
    return {
      'hasPermission': hasPermission,
      'permission': permission
    };
  }

  static List<EaPermissionCheck> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPermissionCheck>() : json.map((value) => new EaPermissionCheck.fromJson(value)).toList();
  }

  static Map<String, EaPermissionCheck> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPermissionCheck>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPermissionCheck.fromJson(value));
    }
    return map;
  }
}

