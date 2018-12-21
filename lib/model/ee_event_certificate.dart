part of edropin_eventsapi.api;

class EeEventCertificate {
  
  String id = null;
  
  String createdOn = null;
  
  String modifiedOn = null;
  
  String version = null;
  
  String name = null;
  
  String templateUrl = null;
  
  String template = null;
  
  List<EeEventCertificatePlaceholder> variableMap = [];
  
  List<EeEventCertificatePlaceholder> substitutionMap = [];
  
  String eventId = null;
  
  String eventName = null;
  
  String eventLocation = null;
  
  String eventPicture = null;
  
  String organizerId = null;
  
  String organizerName = null;
  EeEventCertificate();

  @override
  String toString() {
    return 'EeEventCertificate[id=$id, createdOn=$createdOn, modifiedOn=$modifiedOn, version=$version, name=$name, templateUrl=$templateUrl, template=$template, variableMap=$variableMap, substitutionMap=$substitutionMap, eventId=$eventId, eventName=$eventName, eventLocation=$eventLocation, eventPicture=$eventPicture, organizerId=$organizerId, organizerName=$organizerName, ]';
  }

  EeEventCertificate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createdOn = json['createdOn'];
    modifiedOn = json['modifiedOn'];
    version = json['version'];
    name = json['name'];
    templateUrl = json['templateUrl'];
    template = json['template'];
    variableMap = EeEventCertificatePlaceholder.listFromJson(json['variableMap']);
    substitutionMap = EeEventCertificatePlaceholder.listFromJson(json['substitutionMap']);
    eventId = json['eventId'];
    eventName = json['eventName'];
    eventLocation = json['eventLocation'];
    eventPicture = json['eventPicture'];
    organizerId = json['organizerId'];
    organizerName = json['organizerName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdOn': createdOn,
      'modifiedOn': modifiedOn,
      'version': version,
      'name': name,
      'templateUrl': templateUrl,
      'template': template,
      'variableMap': variableMap,
      'substitutionMap': substitutionMap,
      'eventId': eventId,
      'eventName': eventName,
      'eventLocation': eventLocation,
      'eventPicture': eventPicture,
      'organizerId': organizerId,
      'organizerName': organizerName
    };
  }

  static List<EeEventCertificate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventCertificate>() : json.map((value) => new EeEventCertificate.fromJson(value)).toList();
  }

  static Map<String, EeEventCertificate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventCertificate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventCertificate.fromJson(value));
    }
    return map;
  }
}

