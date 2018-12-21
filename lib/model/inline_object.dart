part of edropin_eventsapi.api;

class InlineObject {
  
  String email = null;
  InlineObject();

  @override
  String toString() {
    return 'InlineObject[email=$email, ]';
  }

  InlineObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email
    };
  }

  static List<InlineObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject>() : json.map((value) => new InlineObject.fromJson(value)).toList();
  }

  static Map<String, InlineObject> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject.fromJson(value));
    }
    return map;
  }
}

