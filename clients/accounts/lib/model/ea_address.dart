part of edropin_accountsapi.api;

class EaAddress {
  
  String formatted = null;
  
  String streetNumberOrBuilding = null;
  
  String street = null;
  
  String city = null;
  
  String state = null;
  
  String country = null;
  
  String zip = null;
  
  EaGeoloc geoloc = null;
  EaAddress();

  @override
  String toString() {
    return 'EaAddress[formatted=$formatted, streetNumberOrBuilding=$streetNumberOrBuilding, street=$street, city=$city, state=$state, country=$country, zip=$zip, geoloc=$geoloc, ]';
  }

  EaAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    formatted = json['formatted'];
    streetNumberOrBuilding = json['streetNumberOrBuilding'];
    street = json['street'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    zip = json['zip'];
    geoloc = new EaGeoloc.fromJson(json['_geoloc']);
  }

  Map<String, dynamic> toJson() {
    return {
      'formatted': formatted,
      'streetNumberOrBuilding': streetNumberOrBuilding,
      'street': street,
      'city': city,
      'state': state,
      'country': country,
      'zip': zip,
      '_geoloc': geoloc
    };
  }

  static List<EaAddress> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaAddress>() : json.map((value) => new EaAddress.fromJson(value)).toList();
  }

  static Map<String, EaAddress> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaAddress>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaAddress.fromJson(value));
    }
    return map;
  }
}

