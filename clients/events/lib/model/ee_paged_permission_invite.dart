part of edropin_eventsapi.api;

class EePagedPermissionInvite {
  
  EePagination pageData = null;
  
  List<String> allPermission = [];
  
  List<EePermissionInvite> items = [];
  EePagedPermissionInvite();

  @override
  String toString() {
    return 'EePagedPermissionInvite[pageData=$pageData, allPermission=$allPermission, items=$items, ]';
  }

  EePagedPermissionInvite.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EePagination.fromJson(json['pageData']);
    allPermission = ((json['allPermission'] ?? []) as List).map((item) => item as String).toList();
    items = EePermissionInvite.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'allPermission': allPermission,
      'items': items
    };
  }

  static List<EePagedPermissionInvite> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePagedPermissionInvite>() : json.map((value) => new EePagedPermissionInvite.fromJson(value)).toList();
  }

  static Map<String, EePagedPermissionInvite> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePagedPermissionInvite>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePagedPermissionInvite.fromJson(value));
    }
    return map;
  }
}

