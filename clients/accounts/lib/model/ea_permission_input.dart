part of edropin_accountsapi.api;

class EaPermissionInput {
  
  Object permissions = null;
  EaPermissionInput();

  @override
  String toString() {
    return 'EaPermissionInput[permissions=$permissions, ]';
  }

  EaPermissionInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    permissions = json['permissions'];
  }

  Map<String, dynamic> toJson() {
    return {
      'permissions': permissions
    };
  }

  static List<EaPermissionInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPermissionInput>() : json.map((value) => new EaPermissionInput.fromJson(value)).toList();
  }

  static Map<String, EaPermissionInput> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPermissionInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPermissionInput.fromJson(value));
    }
    return map;
  }
}

