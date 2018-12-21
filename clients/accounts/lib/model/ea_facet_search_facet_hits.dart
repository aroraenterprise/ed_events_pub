part of edropin_accountsapi.api;

class EaFacetSearchFacetHits {
  
  String highlighted = null;
  
  int count = null;
  
  String value = null;
  EaFacetSearchFacetHits();

  @override
  String toString() {
    return 'EaFacetSearchFacetHits[highlighted=$highlighted, count=$count, value=$value, ]';
  }

  EaFacetSearchFacetHits.fromJson(Map<String, dynamic> json) {
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

  static List<EaFacetSearchFacetHits> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaFacetSearchFacetHits>() : json.map((value) => new EaFacetSearchFacetHits.fromJson(value)).toList();
  }

  static Map<String, EaFacetSearchFacetHits> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaFacetSearchFacetHits>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaFacetSearchFacetHits.fromJson(value));
    }
    return map;
  }
}

