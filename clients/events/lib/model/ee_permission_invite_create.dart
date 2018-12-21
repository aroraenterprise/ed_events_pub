part of edropin_eventsapi.api;

class EePermissionInviteCreate {
  
  String invitedByName = null;
  
  List<String> emails = [];
  
  List<String> permissions = [];
  
  String message = null;
  EePermissionInviteCreate();

  @override
  String toString() {
    return 'EePermissionInviteCreate[invitedByName=$invitedByName, emails=$emails, permissions=$permissions, message=$message, ]';
  }

  EePermissionInviteCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    invitedByName = json['invitedByName'];
    emails = ((json['emails'] ?? []) as List).map((item) => item as String).toList();
    permissions = ((json['permissions'] ?? []) as List).map((item) => item as String).toList();
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'invitedByName': invitedByName,
      'emails': emails,
      'permissions': permissions,
      'message': message
    };
  }

  static List<EePermissionInviteCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePermissionInviteCreate>() : json.map((value) => new EePermissionInviteCreate.fromJson(value)).toList();
  }

  static Map<String, EePermissionInviteCreate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePermissionInviteCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePermissionInviteCreate.fromJson(value));
    }
    return map;
  }
}

