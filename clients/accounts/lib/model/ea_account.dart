part of edropin_accountsapi.api;

class EaAccount {
  
  String id = null;
  
  int created = null;
  
  int modified = null;
  
  String version = null;
  
  String name = null;
  
  String picture = null;
  
  String website = null;
  
  String bio = null;
  
  String email = null;
  
  Object claims = null;
  EaAccount();

  @override
  String toString() {
    return 'EaAccount[id=$id, created=$created, modified=$modified, version=$version, name=$name, picture=$picture, website=$website, bio=$bio, email=$email, claims=$claims, ]';
  }

  EaAccount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    created = json['created'];
    modified = json['modified'];
    version = json['version'];
    name = json['name'];
    picture = json['picture'];
    website = json['website'];
    bio = json['bio'];
    email = json['email'];
    claims = json['claims'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created': created,
      'modified': modified,
      'version': version,
      'name': name,
      'picture': picture,
      'website': website,
      'bio': bio,
      'email': email,
      'claims': claims
    };
  }

  static List<EaAccount> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaAccount>() : json.map((value) => new EaAccount.fromJson(value)).toList();
  }

  static Map<String, EaAccount> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaAccount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaAccount.fromJson(value));
    }
    return map;
  }
}

