part of edropin_eventsapi.api;

class EePermissionInput {
  
  Object permissions = null;
  EePermissionInput();

  @override
  String toString() {
    return 'EePermissionInput[permissions=$permissions, ]';
  }

  EePermissionInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    permissions = json['permissions'];
  }

  Map<String, dynamic> toJson() {
    return {
      'permissions': permissions
    };
  }

  static List<EePermissionInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePermissionInput>() : json.map((value) => new EePermissionInput.fromJson(value)).toList();
  }

  static Map<String, EePermissionInput> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePermissionInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePermissionInput.fromJson(value));
    }
    return map;
  }
}

