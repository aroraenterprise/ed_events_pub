part of edropin_accountsapi.api;

class EaSuccess {
  
  bool success = null;
  
  Object message = null;
  EaSuccess();

  @override
  String toString() {
    return 'EaSuccess[success=$success, message=$message, ]';
  }

  EaSuccess.fromJson(Map<String, dynamic> json) {
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

  static List<EaSuccess> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaSuccess>() : json.map((value) => new EaSuccess.fromJson(value)).toList();
  }

  static Map<String, EaSuccess> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaSuccess>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaSuccess.fromJson(value));
    }
    return map;
  }
}

