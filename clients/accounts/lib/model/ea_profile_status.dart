part of edropin_accountsapi.api;

class EaProfileStatus {
  
  String status = null;
  //enum statusEnum {  Pending Review,  In Review,  Approved,  Banned,  Suspended,  };{
  
  String message = null;
  EaProfileStatus();

  @override
  String toString() {
    return 'EaProfileStatus[status=$status, message=$message, ]';
  }

  EaProfileStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message
    };
  }

  static List<EaProfileStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaProfileStatus>() : json.map((value) => new EaProfileStatus.fromJson(value)).toList();
  }

  static Map<String, EaProfileStatus> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaProfileStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaProfileStatus.fromJson(value));
    }
    return map;
  }
}

