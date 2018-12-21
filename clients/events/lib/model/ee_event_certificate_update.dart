part of edropin_eventsapi.api;

class EeEventCertificateUpdate {
  
  String name = null;
  
  String templateUrl = null;
  
  String template = null;
  
  List<EeEventCertificatePlaceholder> variableMap = [];
  
  List<EeEventCertificatePlaceholder> substitutionMap = [];
  EeEventCertificateUpdate();

  @override
  String toString() {
    return 'EeEventCertificateUpdate[name=$name, templateUrl=$templateUrl, template=$template, variableMap=$variableMap, substitutionMap=$substitutionMap, ]';
  }

  EeEventCertificateUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    templateUrl = json['templateUrl'];
    template = json['template'];
    variableMap = EeEventCertificatePlaceholder.listFromJson(json['variableMap']);
    substitutionMap = EeEventCertificatePlaceholder.listFromJson(json['substitutionMap']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'templateUrl': templateUrl,
      'template': template,
      'variableMap': variableMap,
      'substitutionMap': substitutionMap
    };
  }

  static List<EeEventCertificateUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventCertificateUpdate>() : json.map((value) => new EeEventCertificateUpdate.fromJson(value)).toList();
  }

  static Map<String, EeEventCertificateUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventCertificateUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventCertificateUpdate.fromJson(value));
    }
    return map;
  }
}

