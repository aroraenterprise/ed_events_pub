part of edropin_accountsapi.api;

class EaPagedTagRequest {
  
  EaPagination pageData = null;
  
  List<EaTagRequest> items = [];
  EaPagedTagRequest();

  @override
  String toString() {
    return 'EaPagedTagRequest[pageData=$pageData, items=$items, ]';
  }

  EaPagedTagRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EaPagination.fromJson(json['pageData']);
    items = EaTagRequest.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'items': items
    };
  }

  static List<EaPagedTagRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPagedTagRequest>() : json.map((value) => new EaPagedTagRequest.fromJson(value)).toList();
  }

  static Map<String, EaPagedTagRequest> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPagedTagRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPagedTagRequest.fromJson(value));
    }
    return map;
  }
}

