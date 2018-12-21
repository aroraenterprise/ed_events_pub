part of edropin_eventsapi.api;

class EeTicketUpdate {
  
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
  EeTicketUpdate();

  @override
  String toString() {
    return 'EeTicketUpdate[itemType=$itemType, name=$name, picture=$picture, description=$description, priceStrategy=$priceStrategy, totalInventory=$totalInventory, startSaleTimestamp=$startSaleTimestamp, endSaleTimestamp=$endSaleTimestamp, policy=$policy, extra=$extra, status=$status, ]';
  }

  EeTicketUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
  }

  Map<String, dynamic> toJson() {
    return {
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
      'status': status
    };
  }

  static List<EeTicketUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeTicketUpdate>() : json.map((value) => new EeTicketUpdate.fromJson(value)).toList();
  }

  static Map<String, EeTicketUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeTicketUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeTicketUpdate.fromJson(value));
    }
    return map;
  }
}

