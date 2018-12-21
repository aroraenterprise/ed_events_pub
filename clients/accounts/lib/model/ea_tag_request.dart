part of edropin_accountsapi.api;

class EaTagRequest {
  
  String id = null;
  
  int created = null;
  
  int modified = null;
  
  String version = null;
  
  String itemType = null;
  //enum itemTypeEnum {  Event,  };{
  
  bool isInvited = false;
  
  String taggedById = null;
  
  String itemId = null;
  
  String itemName = null;
  
  String picture = null;
  
  List<String> roles = [];
  /* Absolute url to the item that is tagged here */
  String itemLink = null;
  /* Invited by profileId */
  String profileId = null;
  
  String profileName = null;
  
  String taggedByName = null;
  
  num acceptedWhen = null;
  
  num declinedWhen = null;
  EaTagRequest();

  @override
  String toString() {
    return 'EaTagRequest[id=$id, created=$created, modified=$modified, version=$version, itemType=$itemType, isInvited=$isInvited, taggedById=$taggedById, itemId=$itemId, itemName=$itemName, picture=$picture, roles=$roles, itemLink=$itemLink, profileId=$profileId, profileName=$profileName, taggedByName=$taggedByName, acceptedWhen=$acceptedWhen, declinedWhen=$declinedWhen, ]';
  }

  EaTagRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    created = json['created'];
    modified = json['modified'];
    version = json['version'];
    itemType = json['itemType'];
    isInvited = json['isInvited'];
    taggedById = json['taggedById'];
    itemId = json['itemId'];
    itemName = json['itemName'];
    picture = json['picture'];
    roles = ((json['roles'] ?? []) as List).map((item) => item as String).toList();
    itemLink = json['itemLink'];
    profileId = json['profileId'];
    profileName = json['profileName'];
    taggedByName = json['taggedByName'];
    acceptedWhen = json['acceptedWhen'];
    declinedWhen = json['declinedWhen'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created': created,
      'modified': modified,
      'version': version,
      'itemType': itemType,
      'isInvited': isInvited,
      'taggedById': taggedById,
      'itemId': itemId,
      'itemName': itemName,
      'picture': picture,
      'roles': roles,
      'itemLink': itemLink,
      'profileId': profileId,
      'profileName': profileName,
      'taggedByName': taggedByName,
      'acceptedWhen': acceptedWhen,
      'declinedWhen': declinedWhen
    };
  }

  static List<EaTagRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaTagRequest>() : json.map((value) => new EaTagRequest.fromJson(value)).toList();
  }

  static Map<String, EaTagRequest> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaTagRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaTagRequest.fromJson(value));
    }
    return map;
  }
}

