part of edropin_accountsapi.api;

class EaPhoneVerification {
  
  String verificationToken = null;
  EaPhoneVerification();

  @override
  String toString() {
    return 'EaPhoneVerification[verificationToken=$verificationToken, ]';
  }

  EaPhoneVerification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    verificationToken = json['verificationToken'];
  }

  Map<String, dynamic> toJson() {
    return {
      'verificationToken': verificationToken
    };
  }

  static List<EaPhoneVerification> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPhoneVerification>() : json.map((value) => new EaPhoneVerification.fromJson(value)).toList();
  }

  static Map<String, EaPhoneVerification> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPhoneVerification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPhoneVerification.fromJson(value));
    }
    return map;
  }
}

