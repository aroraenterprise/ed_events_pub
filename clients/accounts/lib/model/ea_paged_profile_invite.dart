part of edropin_accountsapi.api;

class EaPagedProfileInvite {
  
  EaPagination pageData = null;
  
  Object facets = null;
  
  List<EaProfileInvite> items = [];
  EaPagedProfileInvite();

  @override
  String toString() {
    return 'EaPagedProfileInvite[pageData=$pageData, facets=$facets, items=$items, ]';
  }

  EaPagedProfileInvite.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EaPagination.fromJson(json['pageData']);
    facets = json['facets'];
    items = EaProfileInvite.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'facets': facets,
      'items': items
    };
  }

  static List<EaPagedProfileInvite> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPagedProfileInvite>() : json.map((value) => new EaPagedProfileInvite.fromJson(value)).toList();
  }

  static Map<String, EaPagedProfileInvite> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPagedProfileInvite>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPagedProfileInvite.fromJson(value));
    }
    return map;
  }
}

