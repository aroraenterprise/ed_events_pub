part of edropin_accountsapi.api;

class EaClaims {
  
  Object claims = null;
  EaClaims();

  @override
  String toString() {
    return 'EaClaims[claims=$claims, ]';
  }

  EaClaims.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    claims = json['claims'];
  }

  Map<String, dynamic> toJson() {
    return {
      'claims': claims
    };
  }

  static List<EaClaims> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaClaims>() : json.map((value) => new EaClaims.fromJson(value)).toList();
  }

  static Map<String, EaClaims> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaClaims>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaClaims.fromJson(value));
    }
    return map;
  }
}

