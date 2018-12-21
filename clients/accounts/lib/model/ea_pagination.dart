part of edropin_accountsapi.api;

class EaPagination {
  
  int pageSize = null;
  
  String nextCursor = null;
  
  int total = null;
  EaPagination();

  @override
  String toString() {
    return 'EaPagination[pageSize=$pageSize, nextCursor=$nextCursor, total=$total, ]';
  }

  EaPagination.fromJson(Map<String, dynamic> json) {
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

  static List<EaPagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPagination>() : json.map((value) => new EaPagination.fromJson(value)).toList();
  }

  static Map<String, EaPagination> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPagination.fromJson(value));
    }
    return map;
  }
}

