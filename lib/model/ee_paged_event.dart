part of edropin_eventsapi.api;

class EePagedEvent {
  
  EePagination pageData = null;
  
  Object facets = null;
  
  List<EeEvent> items = [];
  
  List<EeStoreItem> storeItems = [];
  EePagedEvent();

  @override
  String toString() {
    return 'EePagedEvent[pageData=$pageData, facets=$facets, items=$items, storeItems=$storeItems, ]';
  }

  EePagedEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EePagination.fromJson(json['pageData']);
    facets = json['facets'];
    items = EeEvent.listFromJson(json['items']);
    storeItems = EeStoreItem.listFromJson(json['storeItems']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'facets': facets,
      'items': items,
      'storeItems': storeItems
    };
  }

  static List<EePagedEvent> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePagedEvent>() : json.map((value) => new EePagedEvent.fromJson(value)).toList();
  }

  static Map<String, EePagedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePagedEvent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePagedEvent.fromJson(value));
    }
    return map;
  }
}

