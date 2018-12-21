part of edropin_eventsapi.api;

class EeEventTag {
  
  String id = null;
  
  List<String> roles = [];
  
  String profileId = null;
  
  String taggedById = null;
  
  String taggedByName = null;
  
  String eventId = null;
  
  bool isInvited = null;
  
  String referralCode = null;
  
  num acceptedWhen = null;
  
  num declinedWhen = null;
  EeEventTag();

  @override
  String toString() {
    return 'EeEventTag[id=$id, roles=$roles, profileId=$profileId, taggedById=$taggedById, taggedByName=$taggedByName, eventId=$eventId, isInvited=$isInvited, referralCode=$referralCode, acceptedWhen=$acceptedWhen, declinedWhen=$declinedWhen, ]';
  }

  EeEventTag.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    roles = ((json['roles'] ?? []) as List).map((item) => item as String).toList();
    profileId = json['profileId'];
    taggedById = json['taggedById'];
    taggedByName = json['taggedByName'];
    eventId = json['eventId'];
    isInvited = json['isInvited'];
    referralCode = json['referralCode'];
    acceptedWhen = json['acceptedWhen'];
    declinedWhen = json['declinedWhen'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'roles': roles,
      'profileId': profileId,
      'taggedById': taggedById,
      'taggedByName': taggedByName,
      'eventId': eventId,
      'isInvited': isInvited,
      'referralCode': referralCode,
      'acceptedWhen': acceptedWhen,
      'declinedWhen': declinedWhen
    };
  }

  static List<EeEventTag> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventTag>() : json.map((value) => new EeEventTag.fromJson(value)).toList();
  }

  static Map<String, EeEventTag> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventTag>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventTag.fromJson(value));
    }
    return map;
  }
}

