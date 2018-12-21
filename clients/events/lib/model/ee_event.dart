part of edropin_eventsapi.api;

class EeEvent {
  
  String id = null;
  
  String createdOn = null;
  
  String modifiedOn = null;
  
  String version = null;
  
  String organizerId = null;
  
  String name = null;
  
  int startTimestamp = null;
  
  int endTimestamp = null;
  
  String timezone = null;
  
  String bio = null;
  
  String picture = null;
  
  List<String> pictures = [];
  
  String website = null;
  
  bool isOnline = null;
  
  bool isHandsOn = null;
  
  bool isDestination = null;
  
  String destinationType = null;
  
  bool isFree = null;
  
  bool isLive = null;
  
  bool isPublic = null;
  
  int duration = null;
  
  List<String> categories = [];
  
  EeAddress address = null;
  
  String policy = null;
  
  String agreeTerms = null;
  //enum agreeTermsEnum {  v1,  };{
  
  String organizerName = null;
  
  List<String> profiles = [];
  
  List<String> courseIds = [];
  
  List<String> availableCurrencyCode = [];
  
  int totalProfiles = null;
  
  int totalTickets = null;
  
  int totalTicketInventory = null;
  
  int totalTicketSold = null;
  /* currencyCode: ticketId */
  Map<String, String> primaryTicket = {};
  
  List<EeTicketSummary> tickets = [];
  EeEvent();

  @override
  String toString() {
    return 'EeEvent[id=$id, createdOn=$createdOn, modifiedOn=$modifiedOn, version=$version, organizerId=$organizerId, name=$name, startTimestamp=$startTimestamp, endTimestamp=$endTimestamp, timezone=$timezone, bio=$bio, picture=$picture, pictures=$pictures, website=$website, isOnline=$isOnline, isHandsOn=$isHandsOn, isDestination=$isDestination, destinationType=$destinationType, isFree=$isFree, isLive=$isLive, isPublic=$isPublic, duration=$duration, categories=$categories, address=$address, policy=$policy, agreeTerms=$agreeTerms, organizerName=$organizerName, profiles=$profiles, courseIds=$courseIds, availableCurrencyCode=$availableCurrencyCode, totalProfiles=$totalProfiles, totalTickets=$totalTickets, totalTicketInventory=$totalTicketInventory, totalTicketSold=$totalTicketSold, primaryTicket=$primaryTicket, tickets=$tickets, ]';
  }

  EeEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createdOn = json['createdOn'];
    modifiedOn = json['modifiedOn'];
    version = json['version'];
    organizerId = json['organizerId'];
    name = json['name'];
    startTimestamp = json['startTimestamp'];
    endTimestamp = json['endTimestamp'];
    timezone = json['timezone'];
    bio = json['bio'];
    picture = json['picture'];
    pictures = ((json['pictures'] ?? []) as List).map((item) => item as String).toList();
    website = json['website'];
    isOnline = json['isOnline'];
    isHandsOn = json['isHandsOn'];
    isDestination = json['isDestination'];
    destinationType = json['destinationType'];
    isFree = json['isFree'];
    isLive = json['isLive'];
    isPublic = json['isPublic'];
    duration = json['duration'];
    categories = ((json['categories'] ?? []) as List).map((item) => item as String).toList();
    address = new EeAddress.fromJson(json['address']);
    policy = json['policy'];
    agreeTerms = json['agreeTerms'];
    organizerName = json['organizerName'];
    profiles = ((json['profiles'] ?? []) as List).map((item) => item as String).toList();
    courseIds = ((json['courseIds'] ?? []) as List).map((item) => item as String).toList();
    availableCurrencyCode = ((json['availableCurrencyCode'] ?? []) as List).map((item) => item as String).toList();
    totalProfiles = json['totalProfiles'];
    totalTickets = json['totalTickets'];
    totalTicketInventory = json['totalTicketInventory'];
    totalTicketSold = json['totalTicketSold'];
    primaryTicket = json['primaryTicket'];
    tickets = EeTicketSummary.listFromJson(json['tickets']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdOn': createdOn,
      'modifiedOn': modifiedOn,
      'version': version,
      'organizerId': organizerId,
      'name': name,
      'startTimestamp': startTimestamp,
      'endTimestamp': endTimestamp,
      'timezone': timezone,
      'bio': bio,
      'picture': picture,
      'pictures': pictures,
      'website': website,
      'isOnline': isOnline,
      'isHandsOn': isHandsOn,
      'isDestination': isDestination,
      'destinationType': destinationType,
      'isFree': isFree,
      'isLive': isLive,
      'isPublic': isPublic,
      'duration': duration,
      'categories': categories,
      'address': address,
      'policy': policy,
      'agreeTerms': agreeTerms,
      'organizerName': organizerName,
      'profiles': profiles,
      'courseIds': courseIds,
      'availableCurrencyCode': availableCurrencyCode,
      'totalProfiles': totalProfiles,
      'totalTickets': totalTickets,
      'totalTicketInventory': totalTicketInventory,
      'totalTicketSold': totalTicketSold,
      'primaryTicket': primaryTicket,
      'tickets': tickets
    };
  }

  static List<EeEvent> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEvent>() : json.map((value) => new EeEvent.fromJson(value)).toList();
  }

  static Map<String, EeEvent> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEvent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEvent.fromJson(value));
    }
    return map;
  }
}

