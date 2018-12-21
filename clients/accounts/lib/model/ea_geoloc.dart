part of edropin_accountsapi.api;

class EaGeoloc {
  
  double lat = null;
  
  double lng = null;
  EaGeoloc();

  @override
  String toString() {
    return 'EaGeoloc[lat=$lat, lng=$lng, ]';
  }

  EaGeoloc.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lng': lng
    };
  }

  static List<EaGeoloc> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaGeoloc>() : json.map((value) => new EaGeoloc.fromJson(value)).toList();
  }

  static Map<String, EaGeoloc> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaGeoloc>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaGeoloc.fromJson(value));
    }
    return map;
  }
}

