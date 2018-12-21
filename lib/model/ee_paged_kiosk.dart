part of edropin_eventsapi.api;

class EePagedKiosk {
  
  EePagination pageData = null;
  
  Object facets = null;
  
  List<EeKiosk> items = [];
  EePagedKiosk();

  @override
  String toString() {
    return 'EePagedKiosk[pageData=$pageData, facets=$facets, items=$items, ]';
  }

  EePagedKiosk.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EePagination.fromJson(json['pageData']);
    facets = json['facets'];
    items = EeKiosk.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'facets': facets,
      'items': items
    };
  }

  static List<EePagedKiosk> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePagedKiosk>() : json.map((value) => new EePagedKiosk.fromJson(value)).toList();
  }

  static Map<String, EePagedKiosk> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePagedKiosk>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePagedKiosk.fromJson(value));
    }
    return map;
  }
}

