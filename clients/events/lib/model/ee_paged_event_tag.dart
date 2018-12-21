part of edropin_eventsapi.api;

class EePagedEventTag {
  
  EePagination pageData = null;
  
  List<EeEventTag> items = [];
  
  List<EeProfile> profiles = [];
  EePagedEventTag();

  @override
  String toString() {
    return 'EePagedEventTag[pageData=$pageData, items=$items, profiles=$profiles, ]';
  }

  EePagedEventTag.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EePagination.fromJson(json['pageData']);
    items = EeEventTag.listFromJson(json['items']);
    profiles = EeProfile.listFromJson(json['profiles']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'items': items,
      'profiles': profiles
    };
  }

  static List<EePagedEventTag> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePagedEventTag>() : json.map((value) => new EePagedEventTag.fromJson(value)).toList();
  }

  static Map<String, EePagedEventTag> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePagedEventTag>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePagedEventTag.fromJson(value));
    }
    return map;
  }
}

