part of edropin_eventsapi.api;

class EePagedEventAttendee {
  
  Object facets = null;
  
  EePagination pageData = null;
  
  List<EeEventAttendee> items = [];
  
  List<EeEvent> events = [];
  EePagedEventAttendee();

  @override
  String toString() {
    return 'EePagedEventAttendee[facets=$facets, pageData=$pageData, items=$items, events=$events, ]';
  }

  EePagedEventAttendee.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    facets = json['facets'];
    pageData = new EePagination.fromJson(json['pageData']);
    items = EeEventAttendee.listFromJson(json['items']);
    events = EeEvent.listFromJson(json['events']);
  }

  Map<String, dynamic> toJson() {
    return {
      'facets': facets,
      'pageData': pageData,
      'items': items,
      'events': events
    };
  }

  static List<EePagedEventAttendee> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePagedEventAttendee>() : json.map((value) => new EePagedEventAttendee.fromJson(value)).toList();
  }

  static Map<String, EePagedEventAttendee> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePagedEventAttendee>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePagedEventAttendee.fromJson(value));
    }
    return map;
  }
}

