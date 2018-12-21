part of edropin_eventsapi.api;

class EePermission {
  
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
  EePermission();

  @override
  String toString() {
    return 'EePermission[id=$id, modifiedOn=$modifiedOn, creatorId=$creatorId, entityType=$entityType, entityId=$entityId, permissions=$permissions, email=$email, name=$name, picture=$picture, accountId=$accountId, ]';
  }

  EePermission.fromJson(Map<String, dynamic> json) {
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

  static List<EePermission> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePermission>() : json.map((value) => new EePermission.fromJson(value)).toList();
  }

  static Map<String, EePermission> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePermission>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePermission.fromJson(value));
    }
    return map;
  }
}

