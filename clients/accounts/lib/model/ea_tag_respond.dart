part of edropin_accountsapi.api;

class EaTagRespond {
  
  bool acceptRequest = false;
  EaTagRespond();

  @override
  String toString() {
    return 'EaTagRespond[acceptRequest=$acceptRequest, ]';
  }

  EaTagRespond.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    acceptRequest = json['acceptRequest'];
  }

  Map<String, dynamic> toJson() {
    return {
      'acceptRequest': acceptRequest
    };
  }

  static List<EaTagRespond> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaTagRespond>() : json.map((value) => new EaTagRespond.fromJson(value)).toList();
  }

  static Map<String, EaTagRespond> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaTagRespond>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaTagRespond.fromJson(value));
    }
    return map;
  }
}

