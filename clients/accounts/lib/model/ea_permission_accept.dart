part of edropin_accountsapi.api;

class EaPermissionAccept {
  
  EaPermissionInvite invite = null;
  
  EaPermission permission = null;
  EaPermissionAccept();

  @override
  String toString() {
    return 'EaPermissionAccept[invite=$invite, permission=$permission, ]';
  }

  EaPermissionAccept.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    invite = new EaPermissionInvite.fromJson(json['invite']);
    permission = new EaPermission.fromJson(json['permission']);
  }

  Map<String, dynamic> toJson() {
    return {
      'invite': invite,
      'permission': permission
    };
  }

  static List<EaPermissionAccept> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPermissionAccept>() : json.map((value) => new EaPermissionAccept.fromJson(value)).toList();
  }

  static Map<String, EaPermissionAccept> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPermissionAccept>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPermissionAccept.fromJson(value));
    }
    return map;
  }
}

