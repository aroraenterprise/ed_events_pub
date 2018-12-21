part of edropin_eventsapi.api;

class EeAddress {
  
  String formatted = null;
  
  String landmark = null;
  
  String street = null;
  
  String city = null;
  
  String state = null;
  
  String country = null;
  
  String zip = null;
  
  EeGeoloc geoloc = null;
  EeAddress();

  @override
  String toString() {
    return 'EeAddress[formatted=$formatted, landmark=$landmark, street=$street, city=$city, state=$state, country=$country, zip=$zip, geoloc=$geoloc, ]';
  }

  EeAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    formatted = json['formatted'];
    landmark = json['landmark'];
    street = json['street'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    zip = json['zip'];
    geoloc = new EeGeoloc.fromJson(json['_geoloc']);
  }

  Map<String, dynamic> toJson() {
    return {
      'formatted': formatted,
      'landmark': landmark,
      'street': street,
      'city': city,
      'state': state,
      'country': country,
      'zip': zip,
      '_geoloc': geoloc
    };
  }

  static List<EeAddress> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeAddress>() : json.map((value) => new EeAddress.fromJson(value)).toList();
  }

  static Map<String, EeAddress> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeAddress>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeAddress.fromJson(value));
    }
    return map;
  }
}

