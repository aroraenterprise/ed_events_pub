part of edropin_eventsapi.api;

class EeAppliedPromotion {
  
  String discountType = null;
  
  int discountPrice = null;
  
  int timestamp = null;
  
  String referralCode = null;
  
  int membershipId = null;
  
  String membershipName = null;
  
  String memberId = null;
  EeAppliedPromotion();

  @override
  String toString() {
    return 'EeAppliedPromotion[discountType=$discountType, discountPrice=$discountPrice, timestamp=$timestamp, referralCode=$referralCode, membershipId=$membershipId, membershipName=$membershipName, memberId=$memberId, ]';
  }

  EeAppliedPromotion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    discountType = json['discountType'];
    discountPrice = json['discountPrice'];
    timestamp = json['timestamp'];
    referralCode = json['referralCode'];
    membershipId = json['membershipId'];
    membershipName = json['membershipName'];
    memberId = json['memberId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'discountType': discountType,
      'discountPrice': discountPrice,
      'timestamp': timestamp,
      'referralCode': referralCode,
      'membershipId': membershipId,
      'membershipName': membershipName,
      'memberId': memberId
    };
  }

  static List<EeAppliedPromotion> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeAppliedPromotion>() : json.map((value) => new EeAppliedPromotion.fromJson(value)).toList();
  }

  static Map<String, EeAppliedPromotion> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeAppliedPromotion>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeAppliedPromotion.fromJson(value));
    }
    return map;
  }
}

