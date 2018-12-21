part of edropin_eventsapi.api;

class EeSuccess {
  
  bool success = null;
  
  Object message = null;
  EeSuccess();

  @override
  String toString() {
    return 'EeSuccess[success=$success, message=$message, ]';
  }

  EeSuccess.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message
    };
  }

  static List<EeSuccess> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeSuccess>() : json.map((value) => new EeSuccess.fromJson(value)).toList();
  }

  static Map<String, EeSuccess> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeSuccess>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeSuccess.fromJson(value));
    }
    return map;
  }
}

