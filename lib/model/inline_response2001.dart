part of edropin_eventsapi.api;

class InlineResponse2001 {
  
  String link = null;
  InlineResponse2001();

  @override
  String toString() {
    return 'InlineResponse2001[link=$link, ]';
  }

  InlineResponse2001.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    return {
      'link': link
    };
  }

  static List<InlineResponse2001> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2001>() : json.map((value) => new InlineResponse2001.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2001> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2001>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2001.fromJson(value));
    }
    return map;
  }
}

