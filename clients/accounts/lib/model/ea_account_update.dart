part of edropin_accountsapi.api;

class EaAccountUpdate {
  
  String name = null;
  
  String picture = null;
  
  String website = null;
  
  String bio = null;
  
  String email = null;
  EaAccountUpdate();

  @override
  String toString() {
    return 'EaAccountUpdate[name=$name, picture=$picture, website=$website, bio=$bio, email=$email, ]';
  }

  EaAccountUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    picture = json['picture'];
    website = json['website'];
    bio = json['bio'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'picture': picture,
      'website': website,
      'bio': bio,
      'email': email
    };
  }

  static List<EaAccountUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaAccountUpdate>() : json.map((value) => new EaAccountUpdate.fromJson(value)).toList();
  }

  static Map<String, EaAccountUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaAccountUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaAccountUpdate.fromJson(value));
    }
    return map;
  }
}

