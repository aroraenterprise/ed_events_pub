part of edropin_accountsapi.api;

class EaPagedProfile {
  
  EaPagination pageData = null;
  
  Object facets = null;
  
  List<EaProfile> items = [];
  
  List<EaProfile> inviteItems = [];
  
  Object inviteFacets = null;
  
  EaPagination invitePageData = null;
  EaPagedProfile();

  @override
  String toString() {
    return 'EaPagedProfile[pageData=$pageData, facets=$facets, items=$items, inviteItems=$inviteItems, inviteFacets=$inviteFacets, invitePageData=$invitePageData, ]';
  }

  EaPagedProfile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EaPagination.fromJson(json['pageData']);
    facets = json['facets'];
    items = EaProfile.listFromJson(json['items']);
    inviteItems = EaProfile.listFromJson(json['inviteItems']);
    inviteFacets = json['inviteFacets'];
    invitePageData = new EaPagination.fromJson(json['invitePageData']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'facets': facets,
      'items': items,
      'inviteItems': inviteItems,
      'inviteFacets': inviteFacets,
      'invitePageData': invitePageData
    };
  }

  static List<EaPagedProfile> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPagedProfile>() : json.map((value) => new EaPagedProfile.fromJson(value)).toList();
  }

  static Map<String, EaPagedProfile> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPagedProfile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPagedProfile.fromJson(value));
    }
    return map;
  }
}

