part of edropin_eventsapi.api;

class EeKiosk {
  
  String id = null;
  
  String createdOn = null;
  
  String modifiedOn = null;
  
  String version = null;
  
  String name = null;
  
  String description = null;
  
  String color = null;
  
  String dropinId = null;
  
  bool isNew = false;
  
  EeEventDropin dropin = null;
  EeKiosk();

  @override
  String toString() {
    return 'EeKiosk[id=$id, createdOn=$createdOn, modifiedOn=$modifiedOn, version=$version, name=$name, description=$description, color=$color, dropinId=$dropinId, isNew=$isNew, dropin=$dropin, ]';
  }

  EeKiosk.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createdOn = json['createdOn'];
    modifiedOn = json['modifiedOn'];
    version = json['version'];
    name = json['name'];
    description = json['description'];
    color = json['color'];
    dropinId = json['dropinId'];
    isNew = json['isNew'];
    dropin = new EeEventDropin.fromJson(json['dropin']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdOn': createdOn,
      'modifiedOn': modifiedOn,
      'version': version,
      'name': name,
      'description': description,
      'color': color,
      'dropinId': dropinId,
      'isNew': isNew,
      'dropin': dropin
    };
  }

  static List<EeKiosk> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeKiosk>() : json.map((value) => new EeKiosk.fromJson(value)).toList();
  }

  static Map<String, EeKiosk> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeKiosk>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeKiosk.fromJson(value));
    }
    return map;
  }
}

