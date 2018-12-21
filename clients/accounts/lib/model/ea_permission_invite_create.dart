part of edropin_accountsapi.api;

class EaPermissionInviteCreate {
  
  String invitedByName = null;
  
  List<String> emails = [];
  
  List<String> permissions = [];
  
  String message = null;
  EaPermissionInviteCreate();

  @override
  String toString() {
    return 'EaPermissionInviteCreate[invitedByName=$invitedByName, emails=$emails, permissions=$permissions, message=$message, ]';
  }

  EaPermissionInviteCreate.fromJson(Map<String, dynamic> json) {
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

  static List<EaPermissionInviteCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPermissionInviteCreate>() : json.map((value) => new EaPermissionInviteCreate.fromJson(value)).toList();
  }

  static Map<String, EaPermissionInviteCreate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPermissionInviteCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPermissionInviteCreate.fromJson(value));
    }
    return map;
  }
}

