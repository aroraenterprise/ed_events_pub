part of edropin_eventsapi.api;

class EePagedEventAutomation {
  
  EePagination pageData = null;
  
  List<EeEventAutomation> items = [];
  EePagedEventAutomation();

  @override
  String toString() {
    return 'EePagedEventAutomation[pageData=$pageData, items=$items, ]';
  }

  EePagedEventAutomation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EePagination.fromJson(json['pageData']);
    items = EeEventAutomation.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'items': items
    };
  }

  static List<EePagedEventAutomation> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePagedEventAutomation>() : json.map((value) => new EePagedEventAutomation.fromJson(value)).toList();
  }

  static Map<String, EePagedEventAutomation> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePagedEventAutomation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePagedEventAutomation.fromJson(value));
    }
    return map;
  }
}

