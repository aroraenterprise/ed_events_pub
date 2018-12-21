part of edropin_eventsapi.api;

class EePagedEventCertificate {
  
  EePagination pageData = null;
  
  List<EeEventCertificate> items = [];
  EePagedEventCertificate();

  @override
  String toString() {
    return 'EePagedEventCertificate[pageData=$pageData, items=$items, ]';
  }

  EePagedEventCertificate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EePagination.fromJson(json['pageData']);
    items = EeEventCertificate.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'items': items
    };
  }

  static List<EePagedEventCertificate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePagedEventCertificate>() : json.map((value) => new EePagedEventCertificate.fromJson(value)).toList();
  }

  static Map<String, EePagedEventCertificate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePagedEventCertificate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePagedEventCertificate.fromJson(value));
    }
    return map;
  }
}

