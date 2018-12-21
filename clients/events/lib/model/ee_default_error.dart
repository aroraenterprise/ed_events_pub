part of edropin_eventsapi.api;

class EeDefaultError {
  
  int code = null;
  
  String message = null;
  EeDefaultError();

  @override
  String toString() {
    return 'EeDefaultError[code=$code, message=$message, ]';
  }

  EeDefaultError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message
    };
  }

  static List<EeDefaultError> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeDefaultError>() : json.map((value) => new EeDefaultError.fromJson(value)).toList();
  }

  static Map<String, EeDefaultError> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeDefaultError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeDefaultError.fromJson(value));
    }
    return map;
  }
}

