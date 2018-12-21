part of edropin_accountsapi.api;

class EaBaseId {
  
  String id = null;
  
  int created = null;
  
  int modified = null;
  
  String version = null;
  EaBaseId();

  @override
  String toString() {
    return 'EaBaseId[id=$id, created=$created, modified=$modified, version=$version, ]';
  }

  EaBaseId.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    created = json['created'];
    modified = json['modified'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created': created,
      'modified': modified,
      'version': version
    };
  }

  static List<EaBaseId> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaBaseId>() : json.map((value) => new EaBaseId.fromJson(value)).toList();
  }

  static Map<String, EaBaseId> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaBaseId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaBaseId.fromJson(value));
    }
    return map;
  }
}

