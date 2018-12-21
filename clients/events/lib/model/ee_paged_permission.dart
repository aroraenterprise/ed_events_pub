part of edropin_eventsapi.api;

class EePagedPermission {
  
  EePagination pageData = null;
  
  List<String> allPermission = [];
  
  List<EePermission> items = [];
  EePagedPermission();

  @override
  String toString() {
    return 'EePagedPermission[pageData=$pageData, allPermission=$allPermission, items=$items, ]';
  }

  EePagedPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EePagination.fromJson(json['pageData']);
    allPermission = ((json['allPermission'] ?? []) as List).map((item) => item as String).toList();
    items = EePermission.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'allPermission': allPermission,
      'items': items
    };
  }

  static List<EePagedPermission> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePagedPermission>() : json.map((value) => new EePagedPermission.fromJson(value)).toList();
  }

  static Map<String, EePagedPermission> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePagedPermission>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePagedPermission.fromJson(value));
    }
    return map;
  }
}

