part of edropin_accountsapi.api;

class EaFeedItem {
  
  String id = null;
  
  EaAccount actor = null;
  
  Object foreignObject = null;
  
  Object object = null;
  
  String time = null;
  
  String verb = null;
  EaFeedItem();

  @override
  String toString() {
    return 'EaFeedItem[id=$id, actor=$actor, foreignObject=$foreignObject, object=$object, time=$time, verb=$verb, ]';
  }

  EaFeedItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    actor = new EaAccount.fromJson(json['actor']);
    foreignObject = json['foreignObject'];
    object = json['object'];
    time = json['time'];
    verb = json['verb'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'actor': actor,
      'foreignObject': foreignObject,
      'object': object,
      'time': time,
      'verb': verb
    };
  }

  static List<EaFeedItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaFeedItem>() : json.map((value) => new EaFeedItem.fromJson(value)).toList();
  }

  static Map<String, EaFeedItem> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaFeedItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaFeedItem.fromJson(value));
    }
    return map;
  }
}

