part of edropin_eventsapi.api;

class EePermissionAccept {
  
  EePermissionInvite invite = null;
  
  EePermission permission = null;
  EePermissionAccept();

  @override
  String toString() {
    return 'EePermissionAccept[invite=$invite, permission=$permission, ]';
  }

  EePermissionAccept.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    invite = new EePermissionInvite.fromJson(json['invite']);
    permission = new EePermission.fromJson(json['permission']);
  }

  Map<String, dynamic> toJson() {
    return {
      'invite': invite,
      'permission': permission
    };
  }

  static List<EePermissionAccept> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePermissionAccept>() : json.map((value) => new EePermissionAccept.fromJson(value)).toList();
  }

  static Map<String, EePermissionAccept> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePermissionAccept>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePermissionAccept.fromJson(value));
    }
    return map;
  }
}

