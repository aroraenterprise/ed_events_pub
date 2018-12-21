part of edropin_accountsapi.api;

class EaPhoneVerificationInput {
  
  String phone = null;
  
  String countryCode = null;
  
  String method = "sms";
  //enum methodEnum {  sms,  call,  };{
  EaPhoneVerificationInput();

  @override
  String toString() {
    return 'EaPhoneVerificationInput[phone=$phone, countryCode=$countryCode, method=$method, ]';
  }

  EaPhoneVerificationInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    phone = json['phone'];
    countryCode = json['countryCode'];
    method = json['method'];
  }

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'countryCode': countryCode,
      'method': method
    };
  }

  static List<EaPhoneVerificationInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaPhoneVerificationInput>() : json.map((value) => new EaPhoneVerificationInput.fromJson(value)).toList();
  }

  static Map<String, EaPhoneVerificationInput> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaPhoneVerificationInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaPhoneVerificationInput.fromJson(value));
    }
    return map;
  }
}

