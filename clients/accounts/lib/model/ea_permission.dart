part of edropin_accountsapi.api;

class EaPermission {
  
  String id = null;
  
  String modifiedOn = null;
  
  String creatorId = null;
  
  String entityType = null;
  
  String entityId = null;
  
  Object permissions = null;
  
  String email = null;
  
  String name = null;
  
  String picture = null;
  
  String accountId = null;
  EaPermission();

  @override
  String toString() {
    return 'EaPermission[id=$id, modifiedOn=$modifiedOn, creatorId=$creatorId, entityType=$entityType, entityId=$entityId, permissions=$permissions, email=$email, name=$name, picture=$picture, accountId=$accountId, ]';
  }

  EaPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    modifiedOn = json['modifiedOn'];
    creatorId = json['creatorId'];
    entityType = json['entityType'];
    entityId = json['entityId'];
    permissions = json['permissions'];
    email = json['email'];
    name = json['name'];
    picture = json['picture'];
    accountId = json['accountId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'modifiedOn': modifiedOn,
      'creatorId': creatorId,
      'entityType': entityType,
      'entityId': entityId,
      'permissions': permissions,
      'email': email,
      'name': name,
      'picture': picture,
      'accountId': accountId
    };
  }

  static List<EaPermission> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPermission>() : json.map((value) => new EaPermission.fromJson(value)).toList();
  }

  static Map<String, EaPermission> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPermission>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPermission.fromJson(value));
    }
    return map;
  }
}

