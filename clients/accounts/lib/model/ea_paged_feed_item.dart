part of edropin_accountsapi.api;

class EaPagedFeedItem {
  
  List<EaFeedItem> items = [];
  
  EaPagination pageData = null;
  EaPagedFeedItem();

  @override
  String toString() {
    return 'EaPagedFeedItem[items=$items, pageData=$pageData, ]';
  }

  EaPagedFeedItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items = EaFeedItem.listFromJson(json['items']);
    pageData = new EaPagination.fromJson(json['pageData']);
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items,
      'pageData': pageData
    };
  }

  static List<EaPagedFeedItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPagedFeedItem>() : json.map((value) => new EaPagedFeedItem.fromJson(value)).toList();
  }

  static Map<String, EaPagedFeedItem> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPagedFeedItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPagedFeedItem.fromJson(value));
    }
    return map;
  }
}

