part of edropin_eventsapi.api;

class EePagedTicket {
  
  EePagination pageData = null;
  
  List<EeTicket> items = [];
  EePagedTicket();

  @override
  String toString() {
    return 'EePagedTicket[pageData=$pageData, items=$items, ]';
  }

  EePagedTicket.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EePagination.fromJson(json['pageData']);
    items = EeTicket.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'items': items
    };
  }

  static List<EePagedTicket> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePagedTicket>() : json.map((value) => new EePagedTicket.fromJson(value)).toList();
  }

  static Map<String, EePagedTicket> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePagedTicket>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePagedTicket.fromJson(value));
    }
    return map;
  }
}

