part of edropin_accountsapi.api;

class EaPagedAccount {
  
  EaPagination pageData = null;
  
  List<EaAccount> items = [];
  EaPagedAccount();

  @override
  String toString() {
    return 'EaPagedAccount[pageData=$pageData, items=$items, ]';
  }

  EaPagedAccount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageData = new EaPagination.fromJson(json['pageData']);
    items = EaAccount.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'pageData': pageData,
      'items': items
    };
  }

  static List<EaPagedAccount> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPagedAccount>() : json.map((value) => new EaPagedAccount.fromJson(value)).toList();
  }

  static Map<String, EaPagedAccount> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPagedAccount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPagedAccount.fromJson(value));
    }
    return map;
  }
}

