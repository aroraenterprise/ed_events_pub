part of edropin_eventsapi.api;

class EePagedEventDropin {
  
  EePagination pageData = null;
  
  List<EeEventDropin> items = [];
  EePagedEventDropin();

  @override
  String toString() {
    return 'EePagedEventDropin[pageData=$pageData, items=$items, ]';
  }

  EePagedEventDropin.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EePagination.fromJson(json['pageData']);
    items = EeEventDropin.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'items': items
    };
  }

  static List<EePagedEventDropin> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePagedEventDropin>() : json.map((value) => new EePagedEventDropin.fromJson(value)).toList();
  }

  static Map<String, EePagedEventDropin> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePagedEventDropin>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePagedEventDropin.fromJson(value));
    }
    return map;
  }
}

