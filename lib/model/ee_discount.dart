part of edropin_eventsapi.api;

class EeDiscount {
  
  String discountType = null;
  //enum discountTypeEnum {  membership,  referralCode,  };{
  
  String referralCode = null;
  
  int discountPrice = null;
  
  int startTimestamp = null;
  
  int endTimestamp = null;
  
  int membershipId = null;
  
  String membershipName = null;
  EeDiscount();

  @override
  String toString() {
    return 'EeDiscount[discountType=$discountType, referralCode=$referralCode, discountPrice=$discountPrice, startTimestamp=$startTimestamp, endTimestamp=$endTimestamp, membershipId=$membershipId, membershipName=$membershipName, ]';
  }

  EeDiscount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    discountType = json['discountType'];
    referralCode = json['referralCode'];
    discountPrice = json['discountPrice'];
    startTimestamp = json['startTimestamp'];
    endTimestamp = json['endTimestamp'];
    membershipId = json['membershipId'];
    membershipName = json['membershipName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'discountType': discountType,
      'referralCode': referralCode,
      'discountPrice': discountPrice,
      'startTimestamp': startTimestamp,
      'endTimestamp': endTimestamp,
      'membershipId': membershipId,
      'membershipName': membershipName
    };
  }

  static List<EeDiscount> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeDiscount>() : json.map((value) => new EeDiscount.fromJson(value)).toList();
  }

  static Map<String, EeDiscount> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeDiscount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeDiscount.fromJson(value));
    }
    return map;
  }
}

