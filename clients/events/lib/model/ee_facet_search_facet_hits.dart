part of edropin_eventsapi.api;

class EeFacetSearchFacetHits {
  
  String highlighted = null;
  
  int count = null;
  
  String value = null;
  EeFacetSearchFacetHits();

  @override
  String toString() {
    return 'EeFacetSearchFacetHits[highlighted=$highlighted, count=$count, value=$value, ]';
  }

  EeFacetSearchFacetHits.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    highlighted = json['highlighted'];
    count = json['count'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'highlighted': highlighted,
      'count': count,
      'value': value
    };
  }

  static List<EeFacetSearchFacetHits> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeFacetSearchFacetHits>() : json.map((value) => new EeFacetSearchFacetHits.fromJson(value)).toList();
  }

  static Map<String, EeFacetSearchFacetHits> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeFacetSearchFacetHits>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeFacetSearchFacetHits.fromJson(value));
    }
    return map;
  }
}

