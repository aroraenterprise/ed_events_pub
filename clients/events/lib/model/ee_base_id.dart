part of edropin_eventsapi.api;

class EeBaseId {
  
  String id = null;
  
  String createdOn = null;
  
  String modifiedOn = null;
  
  String version = null;
  EeBaseId();

  @override
  String toString() {
    return 'EeBaseId[id=$id, createdOn=$createdOn, modifiedOn=$modifiedOn, version=$version, ]';
  }

  EeBaseId.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createdOn = json['createdOn'];
    modifiedOn = json['modifiedOn'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdOn': createdOn,
      'modifiedOn': modifiedOn,
      'version': version
    };
  }

  static List<EeBaseId> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeBaseId>() : json.map((value) => new EeBaseId.fromJson(value)).toList();
  }

  static Map<String, EeBaseId> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeBaseId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeBaseId.fromJson(value));
    }
    return map;
  }
}

