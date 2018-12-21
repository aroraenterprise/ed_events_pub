part of edropin_eventsapi.api;

class EeEventCertificatePlaceholder {
  
  String key = null;
  
  String value = null;
  
  bool autocomplete = null;
  EeEventCertificatePlaceholder();

  @override
  String toString() {
    return 'EeEventCertificatePlaceholder[key=$key, value=$value, autocomplete=$autocomplete, ]';
  }

  EeEventCertificatePlaceholder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key = json['key'];
    value = json['value'];
    autocomplete = json['autocomplete'];
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'value': value,
      'autocomplete': autocomplete
    };
  }

  static List<EeEventCertificatePlaceholder> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventCertificatePlaceholder>() : json.map((value) => new EeEventCertificatePlaceholder.fromJson(value)).toList();
  }

  static Map<String, EeEventCertificatePlaceholder> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventCertificatePlaceholder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventCertificatePlaceholder.fromJson(value));
    }
    return map;
  }
}

