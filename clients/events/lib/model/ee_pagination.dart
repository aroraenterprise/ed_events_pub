part of edropin_eventsapi.api;

class EePagination {
  
  int pageSize = null;
  
  String nextCursor = null;
  
  int total = null;
  EePagination();

  @override
  String toString() {
    return 'EePagination[pageSize=$pageSize, nextCursor=$nextCursor, total=$total, ]';
  }

  EePagination.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageSize = json['pageSize'];
    nextCursor = json['nextCursor'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    return {
      'pageSize': pageSize,
      'nextCursor': nextCursor,
      'total': total
    };
  }

  static List<EePagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePagination>() : json.map((value) => new EePagination.fromJson(value)).toList();
  }

  static Map<String, EePagination> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePagination.fromJson(value));
    }
    return map;
  }
}

