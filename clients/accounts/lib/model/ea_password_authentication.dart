part of edropin_accountsapi.api;

class EaPasswordAuthentication {
  
  String email = null;
  
  String password = null;
  EaPasswordAuthentication();

  @override
  String toString() {
    return 'EaPasswordAuthentication[email=$email, password=$password, ]';
  }

  EaPasswordAuthentication.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password
    };
  }

  static List<EaPasswordAuthentication> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPasswordAuthentication>() : json.map((value) => new EaPasswordAuthentication.fromJson(value)).toList();
  }

  static Map<String, EaPasswordAuthentication> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPasswordAuthentication>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPasswordAuthentication.fromJson(value));
    }
    return map;
  }
}

