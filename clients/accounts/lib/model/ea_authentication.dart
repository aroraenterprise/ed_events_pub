part of edropin_accountsapi.api;

class EaAuthentication {
  
  String idToken = null;
  
  String id = null;
  EaAuthentication();

  @override
  String toString() {
    return 'EaAuthentication[idToken=$idToken, id=$id, ]';
  }

  EaAuthentication.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    idToken = json['idToken'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'idToken': idToken,
      'id': id
    };
  }

  static List<EaAuthentication> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaAuthentication>() : json.map((value) => new EaAuthentication.fromJson(value)).toList();
  }

  static Map<String, EaAuthentication> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaAuthentication>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaAuthentication.fromJson(value));
    }
    return map;
  }
}

