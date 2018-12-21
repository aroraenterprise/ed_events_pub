part of edropin_eventsapi.api;

class EeRefundPolicy {
  
  String policyId = null;
  
  String policyName = null;
  
  String disclaimer = null;
  
  num appFeeRefundAmount = null;
  
  num platformFee = null;
  
  int startTimestamp = null;
  
  int endTimestamp = null;
  
  int feeAmount = null;
  
  int refundAmount = null;
  
  bool isDifferenceCharged = false;
  EeRefundPolicy();

  @override
  String toString() {
    return 'EeRefundPolicy[policyId=$policyId, policyName=$policyName, disclaimer=$disclaimer, appFeeRefundAmount=$appFeeRefundAmount, platformFee=$platformFee, startTimestamp=$startTimestamp, endTimestamp=$endTimestamp, feeAmount=$feeAmount, refundAmount=$refundAmount, isDifferenceCharged=$isDifferenceCharged, ]';
  }

  EeRefundPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    policyId = json['policyId'];
    policyName = json['policyName'];
    disclaimer = json['disclaimer'];
    appFeeRefundAmount = json['appFeeRefundAmount'];
    platformFee = json['platformFee'];
    startTimestamp = json['startTimestamp'];
    endTimestamp = json['endTimestamp'];
    feeAmount = json['feeAmount'];
    refundAmount = json['refundAmount'];
    isDifferenceCharged = json['isDifferenceCharged'];
  }

  Map<String, dynamic> toJson() {
    return {
      'policyId': policyId,
      'policyName': policyName,
      'disclaimer': disclaimer,
      'appFeeRefundAmount': appFeeRefundAmount,
      'platformFee': platformFee,
      'startTimestamp': startTimestamp,
      'endTimestamp': endTimestamp,
      'feeAmount': feeAmount,
      'refundAmount': refundAmount,
      'isDifferenceCharged': isDifferenceCharged
    };
  }

  static List<EeRefundPolicy> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeRefundPolicy>() : json.map((value) => new EeRefundPolicy.fromJson(value)).toList();
  }

  static Map<String, EeRefundPolicy> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeRefundPolicy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeRefundPolicy.fromJson(value));
    }
    return map;
  }
}

