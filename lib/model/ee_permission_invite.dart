part of edropin_eventsapi.api;

class EePermissionInvite {
  
  String id = null;
  
  String modifiedOn = null;
  
  String creatorId = null;
  
  String entityType = null;
  
  String entityId = null;
  
  Object permissions = null;
  
  String email = null;
  
  String message = null;
  
  int acceptedWhen = null;
  
  int declinedWhen = null;
  
  String acceptedById = null;
  
  String acceptedByName = null;
  EePermissionInvite();

  @override
  String toString() {
    return 'EePermissionInvite[id=$id, modifiedOn=$modifiedOn, creatorId=$creatorId, entityType=$entityType, entityId=$entityId, permissions=$permissions, email=$email, message=$message, acceptedWhen=$acceptedWhen, declinedWhen=$declinedWhen, acceptedById=$acceptedById, acceptedByName=$acceptedByName, ]';
  }

  EePermissionInvite.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    modifiedOn = json['modifiedOn'];
    creatorId = json['creatorId'];
    entityType = json['entityType'];
    entityId = json['entityId'];
    permissions = json['permissions'];
    email = json['email'];
    message = json['message'];
    acceptedWhen = json['acceptedWhen'];
    declinedWhen = json['declinedWhen'];
    acceptedById = json['acceptedById'];
    acceptedByName = json['acceptedByName'];
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
      'message': message,
      'acceptedWhen': acceptedWhen,
      'declinedWhen': declinedWhen,
      'acceptedById': acceptedById,
      'acceptedByName': acceptedByName
    };
  }

  static List<EePermissionInvite> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePermissionInvite>() : json.map((value) => new EePermissionInvite.fromJson(value)).toList();
  }

  static Map<String, EePermissionInvite> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePermissionInvite>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePermissionInvite.fromJson(value));
    }
    return map;
  }
}

