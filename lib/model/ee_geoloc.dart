part of edropin_eventsapi.api;

class EeGeoloc {
  
  double lat = null;
  
  double lng = null;
  EeGeoloc();

  @override
  String toString() {
    return 'EeGeoloc[lat=$lat, lng=$lng, ]';
  }

  EeGeoloc.fromJson(Map<String, dynamic> json) {
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

  static List<EeGeoloc> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeGeoloc>() : json.map((value) => new EeGeoloc.fromJson(value)).toList();
  }

  static Map<String, EeGeoloc> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeGeoloc>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeGeoloc.fromJson(value));
    }
    return map;
  }
}

