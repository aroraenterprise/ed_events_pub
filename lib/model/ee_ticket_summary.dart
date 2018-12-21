part of edropin_eventsapi.api;

class EeTicketSummary {
  
  String currencyCode = null;
  
  int retailPrice = null;
  
  List<EeDiscount> adDiscounts = [];
  
  List<EeRefundPolicy> refundPolicies = [];
  /* storeItemId */
  String id = null;
  
  String name = null;
  /* storeItemId-currencyCode */
  String uid = null;
  EeTicketSummary();

  @override
  String toString() {
    return 'EeTicketSummary[currencyCode=$currencyCode, retailPrice=$retailPrice, adDiscounts=$adDiscounts, refundPolicies=$refundPolicies, id=$id, name=$name, uid=$uid, ]';
  }

  EeTicketSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    currencyCode = json['currencyCode'];
    retailPrice = json['retailPrice'];
    adDiscounts = EeDiscount.listFromJson(json['adDiscounts']);
    refundPolicies = EeRefundPolicy.listFromJson(json['refundPolicies']);
    id = json['id'];
    name = json['name'];
    uid = json['uid'];
  }

  Map<String, dynamic> toJson() {
    return {
      'currencyCode': currencyCode,
      'retailPrice': retailPrice,
      'adDiscounts': adDiscounts,
      'refundPolicies': refundPolicies,
      'id': id,
      'name': name,
      'uid': uid
    };
  }

  static List<EeTicketSummary> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeTicketSummary>() : json.map((value) => new EeTicketSummary.fromJson(value)).toList();
  }

  static Map<String, EeTicketSummary> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeTicketSummary>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeTicketSummary.fromJson(value));
    }
    return map;
  }
}

