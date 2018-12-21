part of edropin_accountsapi.api;

class EaPagedPermissionInvite {
  
  EaPagination pageData = null;
  
  List<String> allPermission = [];
  
  List<EaPermissionInvite> items = [];
  EaPagedPermissionInvite();

  @override
  String toString() {
    return 'EaPagedPermissionInvite[pageData=$pageData, allPermission=$allPermission, items=$items, ]';
  }

  EaPagedPermissionInvite.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EaPagination.fromJson(json['pageData']);
    allPermission = ((json['allPermission'] ?? []) as List).map((item) => item as String).toList();
    items = EaPermissionInvite.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'allPermission': allPermission,
      'items': items
    };
  }

  static List<EaPagedPermissionInvite> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPagedPermissionInvite>() : json.map((value) => new EaPagedPermissionInvite.fromJson(value)).toList();
  }

  static Map<String, EaPagedPermissionInvite> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPagedPermissionInvite>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPagedPermissionInvite.fromJson(value));
    }
    return map;
  }
}

