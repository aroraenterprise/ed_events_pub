part of edropin_eventsapi.api;

class EePriceSummary {
  
  String currencyCode = null;
  
  int retailPrice = null;
  
  List<EeDiscount> adDiscounts = [];
  
  List<EeRefundPolicy> refundPolicies = [];
  EePriceSummary();

  @override
  String toString() {
    return 'EePriceSummary[currencyCode=$currencyCode, retailPrice=$retailPrice, adDiscounts=$adDiscounts, refundPolicies=$refundPolicies, ]';
  }

  EePriceSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    currencyCode = json['currencyCode'];
    retailPrice = json['retailPrice'];
    adDiscounts = EeDiscount.listFromJson(json['adDiscounts']);
    refundPolicies = EeRefundPolicy.listFromJson(json['refundPolicies']);
  }

  Map<String, dynamic> toJson() {
    return {
      'currencyCode': currencyCode,
      'retailPrice': retailPrice,
      'adDiscounts': adDiscounts,
      'refundPolicies': refundPolicies
    };
  }

  static List<EePriceSummary> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePriceSummary>() : json.map((value) => new EePriceSummary.fromJson(value)).toList();
  }

  static Map<String, EePriceSummary> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePriceSummary>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePriceSummary.fromJson(value));
    }
    return map;
  }
}

