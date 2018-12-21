part of edropin_accountsapi.api;

class EaPagedPermission {
  
  EaPagination pageData = null;
  
  List<String> allPermission = [];
  
  List<EaPermission> items = [];
  EaPagedPermission();

  @override
  String toString() {
    return 'EaPagedPermission[pageData=$pageData, allPermission=$allPermission, items=$items, ]';
  }

  EaPagedPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EaPagination.fromJson(json['pageData']);
    allPermission = ((json['allPermission'] ?? []) as List).map((item) => item as String).toList();
    items = EaPermission.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'allPermission': allPermission,
      'items': items
    };
  }

  static List<EaPagedPermission> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPagedPermission>() : json.map((value) => new EaPagedPermission.fromJson(value)).toList();
  }

  static Map<String, EaPagedPermission> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPagedPermission>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPagedPermission.fromJson(value));
    }
    return map;
  }
}

