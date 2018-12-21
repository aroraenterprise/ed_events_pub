part of edropin_eventsapi.api;

class EeStoreItem {
  
  String id = null;
  
  String createdOn = null;
  
  String modifiedOn = null;
  
  String version = null;
  
  String itemType = null;
  
  String name = null;
  
  String picture = null;
  
  String description = null;
  
  List<EePriceStrategy> priceStrategy = [];
  
  int totalInventory = null;
  
  int startSaleTimestamp = null;
  
  int endSaleTimestamp = null;
  
  String policy = null;
  
  Object extra = null;
  
  String status = null;
  //enum statusEnum {  open,  closed,  soldOut,  };{
  
  String merchantId = null;
  
  String merchantName = null;
  
  int totalSold = null;
  
  List<EePriceSummary> priceSummary = [];
  EeStoreItem();

  @override
  String toString() {
    return 'EeStoreItem[id=$id, createdOn=$createdOn, modifiedOn=$modifiedOn, version=$version, itemType=$itemType, name=$name, picture=$picture, description=$description, priceStrategy=$priceStrategy, totalInventory=$totalInventory, startSaleTimestamp=$startSaleTimestamp, endSaleTimestamp=$endSaleTimestamp, policy=$policy, extra=$extra, status=$status, merchantId=$merchantId, merchantName=$merchantName, totalSold=$totalSold, priceSummary=$priceSummary, ]';
  }

  EeStoreItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createdOn = json['createdOn'];
    modifiedOn = json['modifiedOn'];
    version = json['version'];
    itemType = json['itemType'];
    name = json['name'];
    picture = json['picture'];
    description = json['description'];
    priceStrategy = EePriceStrategy.listFromJson(json['priceStrategy']);
    totalInventory = json['totalInventory'];
    startSaleTimestamp = json['startSaleTimestamp'];
    endSaleTimestamp = json['endSaleTimestamp'];
    policy = json['policy'];
    extra = json['extra'];
    status = json['status'];
    merchantId = json['merchantId'];
    merchantName = json['merchantName'];
    totalSold = json['totalSold'];
    priceSummary = EePriceSummary.listFromJson(json['priceSummary']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdOn': createdOn,
      'modifiedOn': modifiedOn,
      'version': version,
      'itemType': itemType,
      'name': name,
      'picture': picture,
      'description': description,
      'priceStrategy': priceStrategy,
      'totalInventory': totalInventory,
      'startSaleTimestamp': startSaleTimestamp,
      'endSaleTimestamp': endSaleTimestamp,
      'policy': policy,
      'extra': extra,
      'status': status,
      'merchantId': merchantId,
      'merchantName': merchantName,
      'totalSold': totalSold,
      'priceSummary': priceSummary
    };
  }

  static List<EeStoreItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeStoreItem>() : json.map((value) => new EeStoreItem.fromJson(value)).toList();
  }

  static Map<String, EeStoreItem> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeStoreItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeStoreItem.fromJson(value));
    }
    return map;
  }
}

