part of edropin_accountsapi.api;

class EaEmailVerification {
  
  String profileName = null;
  
  String profileId = null;
  EaEmailVerification();

  @override
  String toString() {
    return 'EaEmailVerification[profileName=$profileName, profileId=$profileId, ]';
  }

  EaEmailVerification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    profileName = json['profileName'];
    profileId = json['profileId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'profileName': profileName,
      'profileId': profileId
    };
  }

  static List<EaEmailVerification> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaEmailVerification>() : json.map((value) => new EaEmailVerification.fromJson(value)).toList();
  }

  static Map<String, EaEmailVerification> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaEmailVerification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaEmailVerification.fromJson(value));
    }
    return map;
  }
}

