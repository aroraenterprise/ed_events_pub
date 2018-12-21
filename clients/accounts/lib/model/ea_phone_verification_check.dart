part of edropin_accountsapi.api;

class EaPhoneVerificationCheck {
  
  String phone = null;
  
  String countryCode = null;
  
  String code = null;
  EaPhoneVerificationCheck();

  @override
  String toString() {
    return 'EaPhoneVerificationCheck[phone=$phone, countryCode=$countryCode, code=$code, ]';
  }

  EaPhoneVerificationCheck.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    phone = json['phone'];
    countryCode = json['countryCode'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'countryCode': countryCode,
      'code': code
    };
  }

  static List<EaPhoneVerificationCheck> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPhoneVerificationCheck>() : json.map((value) => new EaPhoneVerificationCheck.fromJson(value)).toList();
  }

  static Map<String, EaPhoneVerificationCheck> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPhoneVerificationCheck>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPhoneVerificationCheck.fromJson(value));
    }
    return map;
  }
}

