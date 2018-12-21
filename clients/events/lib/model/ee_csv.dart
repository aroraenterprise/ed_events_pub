part of edropin_eventsapi.api;

class EeCsv {
  
  String csv = null;
  
  String filename = null;
  EeCsv();

  @override
  String toString() {
    return 'EeCsv[csv=$csv, filename=$filename, ]';
  }

  EeCsv.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    csv = json['csv'];
    filename = json['filename'];
  }

  Map<String, dynamic> toJson() {
    return {
      'csv': csv,
      'filename': filename
    };
  }

  static List<EeCsv> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeCsv>() : json.map((value) => new EeCsv.fromJson(value)).toList();
  }

  static Map<String, EeCsv> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeCsv>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeCsv.fromJson(value));
    }
    return map;
  }
}

