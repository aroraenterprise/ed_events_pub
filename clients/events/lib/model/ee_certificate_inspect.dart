part of edropin_eventsapi.api;

class EeCertificateInspect {
  
  String templateUrl = null;
  
  EeCertificateInspectPlaceholders placeholders = null;
  EeCertificateInspect();

  @override
  String toString() {
    return 'EeCertificateInspect[templateUrl=$templateUrl, placeholders=$placeholders, ]';
  }

  EeCertificateInspect.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    templateUrl = json['templateUrl'];
    placeholders = new EeCertificateInspectPlaceholders.fromJson(json['placeholders']);
  }

  Map<String, dynamic> toJson() {
    return {
      'templateUrl': templateUrl,
      'placeholders': placeholders
    };
  }

  static List<EeCertificateInspect> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeCertificateInspect>() : json.map((value) => new EeCertificateInspect.fromJson(value)).toList();
  }

  static Map<String, EeCertificateInspect> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeCertificateInspect>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeCertificateInspect.fromJson(value));
    }
    return map;
  }
}

