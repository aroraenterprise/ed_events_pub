part of edropin_eventsapi.api;

class EeTicket {
  
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
  
  String eventId = null;
  
  String eventName = null;
  
  String eventPicture = null;
  
  String organizerId = null;
  
  String organizerName = null;
  
  List<EeTicketDropin> dropins = [];
  EeTicket();

  @override
  String toString() {
    return 'EeTicket[id=$id, createdOn=$createdOn, modifiedOn=$modifiedOn, version=$version, itemType=$itemType, name=$name, picture=$picture, description=$description, priceStrategy=$priceStrategy, totalInventory=$totalInventory, startSaleTimestamp=$startSaleTimestamp, endSaleTimestamp=$endSaleTimestamp, policy=$policy, extra=$extra, status=$status, merchantId=$merchantId, merchantName=$merchantName, totalSold=$totalSold, priceSummary=$priceSummary, eventId=$eventId, eventName=$eventName, eventPicture=$eventPicture, organizerId=$organizerId, organizerName=$organizerName, dropins=$dropins, ]';
  }

  EeTicket.fromJson(Map<String, dynamic> json) {
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
    eventId = json['eventId'];
    eventName = json['eventName'];
    eventPicture = json['eventPicture'];
    organizerId = json['organizerId'];
    organizerName = json['organizerName'];
    dropins = EeTicketDropin.listFromJson(json['dropins']);
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
      'priceSummary': priceSummary,
      'eventId': eventId,
      'eventName': eventName,
      'eventPicture': eventPicture,
      'organizerId': organizerId,
      'organizerName': organizerName,
      'dropins': dropins
    };
  }

  static List<EeTicket> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeTicket>() : json.map((value) => new EeTicket.fromJson(value)).toList();
  }

  static Map<String, EeTicket> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeTicket>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeTicket.fromJson(value));
    }
    return map;
  }
}

