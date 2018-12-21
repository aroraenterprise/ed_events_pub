part of edropin_eventsapi.api;

class EeCertificateInspectPlaceholders {
  
  List<String> tagKeys = [];
  
  Object autofill = null;
  EeCertificateInspectPlaceholders();

  @override
  String toString() {
    return 'EeCertificateInspectPlaceholders[tagKeys=$tagKeys, autofill=$autofill, ]';
  }

  EeCertificateInspectPlaceholders.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tagKeys = ((json['tagKeys'] ?? []) as List).map((item) => item as String).toList();
    autofill = json['autofill'];
  }

  Map<String, dynamic> toJson() {
    return {
      'tagKeys': tagKeys,
      'autofill': autofill
    };
  }

  static List<EeCertificateInspectPlaceholders> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeCertificateInspectPlaceholders>() : json.map((value) => new EeCertificateInspectPlaceholders.fromJson(value)).toList();
  }

  static Map<String, EeCertificateInspectPlaceholders> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeCertificateInspectPlaceholders>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeCertificateInspectPlaceholders.fromJson(value));
    }
    return map;
  }
}

