part of edropin_accountsapi.api;

class EaTagRequestCreate {
  
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
  EaTagRequestCreate();

  @override
  String toString() {
    return 'EaTagRequestCreate[itemType=$itemType, isInvited=$isInvited, taggedById=$taggedById, itemId=$itemId, itemName=$itemName, picture=$picture, roles=$roles, itemLink=$itemLink, ]';
  }

  EaTagRequestCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    itemType = json['itemType'];
    isInvited = json['isInvited'];
    taggedById = json['taggedById'];
    itemId = json['itemId'];
    itemName = json['itemName'];
    picture = json['picture'];
    roles = ((json['roles'] ?? []) as List).map((item) => item as String).toList();
    itemLink = json['itemLink'];
  }

  Map<String, dynamic> toJson() {
    return {
      'itemType': itemType,
      'isInvited': isInvited,
      'taggedById': taggedById,
      'itemId': itemId,
      'itemName': itemName,
      'picture': picture,
      'roles': roles,
      'itemLink': itemLink
    };
  }

  static List<EaTagRequestCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaTagRequestCreate>() : json.map((value) => new EaTagRequestCreate.fromJson(value)).toList();
  }

  static Map<String, EaTagRequestCreate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaTagRequestCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaTagRequestCreate.fromJson(value));
    }
    return map;
  }
}

