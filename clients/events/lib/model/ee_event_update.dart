part of edropin_eventsapi.api;

class EeEventUpdate {
  
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
  EeEventUpdate();

  @override
  String toString() {
    return 'EeEventUpdate[organizerId=$organizerId, name=$name, startTimestamp=$startTimestamp, endTimestamp=$endTimestamp, timezone=$timezone, bio=$bio, picture=$picture, pictures=$pictures, website=$website, isOnline=$isOnline, isHandsOn=$isHandsOn, isDestination=$isDestination, destinationType=$destinationType, isFree=$isFree, isLive=$isLive, isPublic=$isPublic, duration=$duration, categories=$categories, address=$address, policy=$policy, agreeTerms=$agreeTerms, ]';
  }

  EeEventUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
  }

  Map<String, dynamic> toJson() {
    return {
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
      'agreeTerms': agreeTerms
    };
  }

  static List<EeEventUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventUpdate>() : json.map((value) => new EeEventUpdate.fromJson(value)).toList();
  }

  static Map<String, EeEventUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventUpdate.fromJson(value));
    }
    return map;
  }
}

