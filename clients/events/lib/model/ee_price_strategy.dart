part of edropin_eventsapi.api;

class EePriceStrategy {
  
  int retailPrice = null;
  
  String currencyCode = null;
  
  List<EeDiscount> discounts = [];
  
  List<EeRefundPolicy> refundPolicies = [];
  EePriceStrategy();

  @override
  String toString() {
    return 'EePriceStrategy[retailPrice=$retailPrice, currencyCode=$currencyCode, discounts=$discounts, refundPolicies=$refundPolicies, ]';
  }

  EePriceStrategy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    retailPrice = json['retailPrice'];
    currencyCode = json['currencyCode'];
    discounts = EeDiscount.listFromJson(json['discounts']);
    refundPolicies = EeRefundPolicy.listFromJson(json['refundPolicies']);
  }

  Map<String, dynamic> toJson() {
    return {
      'retailPrice': retailPrice,
      'currencyCode': currencyCode,
      'discounts': discounts,
      'refundPolicies': refundPolicies
    };
  }

  static List<EePriceStrategy> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePriceStrategy>() : json.map((value) => new EePriceStrategy.fromJson(value)).toList();
  }

  static Map<String, EePriceStrategy> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePriceStrategy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePriceStrategy.fromJson(value));
    }
    return map;
  }
}

