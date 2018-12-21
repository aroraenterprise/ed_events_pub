part of edropin_eventsapi.api;

class EeAttendeeCertificate {
  
  String certificateId = null;
  
  String name = null;
  
  String generatedLink = null;
  
  int timestamp = null;
  
  String code = null;
  EeAttendeeCertificate();

  @override
  String toString() {
    return 'EeAttendeeCertificate[certificateId=$certificateId, name=$name, generatedLink=$generatedLink, timestamp=$timestamp, code=$code, ]';
  }

  EeAttendeeCertificate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    certificateId = json['certificateId'];
    name = json['name'];
    generatedLink = json['generatedLink'];
    timestamp = json['timestamp'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    return {
      'certificateId': certificateId,
      'name': name,
      'generatedLink': generatedLink,
      'timestamp': timestamp,
      'code': code
    };
  }

  static List<EeAttendeeCertificate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeAttendeeCertificate>() : json.map((value) => new EeAttendeeCertificate.fromJson(value)).toList();
  }

  static Map<String, EeAttendeeCertificate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeAttendeeCertificate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeAttendeeCertificate.fromJson(value));
    }
    return map;
  }
}

