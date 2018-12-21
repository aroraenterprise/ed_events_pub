part of edropin_accountsapi.api;

class DefaultError {
  
  int code = null;
  
  String message = null;
  DefaultError();

  @override
  String toString() {
    return 'DefaultError[code=$code, message=$message, ]';
  }

  DefaultError.fromJson(Map<String, dynamic> json) {
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

  static List<DefaultError> listFromJson(List<dynamic> json) {
    return json == null ? new List<DefaultError>() : json.map((value) => new DefaultError.fromJson(value)).toList();
  }

  static Map<String, DefaultError> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, DefaultError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new DefaultError.fromJson(value));
    }
    return map;
  }
}

