part of edropin_accountsapi.api;

class EaProfileInvite {
  
  String id = null;
  
  int created = null;
  
  int modified = null;
  
  String version = null;
  
  String email = null;
  
  String profileType = null;
  
  String inviteById = null;
  /* e.g. Event Name */
  String inviteFor = null;
  
  String name = null;
  
  String bio = null;
  
  String picture = null;
  
  String inviteByName = null;
  
  bool isInvited = true;
  
  String referralCode = null;
  EaProfileInvite();

  @override
  String toString() {
    return 'EaProfileInvite[id=$id, created=$created, modified=$modified, version=$version, email=$email, profileType=$profileType, inviteById=$inviteById, inviteFor=$inviteFor, name=$name, bio=$bio, picture=$picture, inviteByName=$inviteByName, isInvited=$isInvited, referralCode=$referralCode, ]';
  }

  EaProfileInvite.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    created = json['created'];
    modified = json['modified'];
    version = json['version'];
    email = json['email'];
    profileType = json['profileType'];
    inviteById = json['inviteById'];
    inviteFor = json['inviteFor'];
    name = json['name'];
    bio = json['bio'];
    picture = json['picture'];
    inviteByName = json['inviteByName'];
    isInvited = json['isInvited'];
    referralCode = json['referralCode'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created': created,
      'modified': modified,
      'version': version,
      'email': email,
      'profileType': profileType,
      'inviteById': inviteById,
      'inviteFor': inviteFor,
      'name': name,
      'bio': bio,
      'picture': picture,
      'inviteByName': inviteByName,
      'isInvited': isInvited,
      'referralCode': referralCode
    };
  }

  static List<EaProfileInvite> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaProfileInvite>() : json.map((value) => new EaProfileInvite.fromJson(value)).toList();
  }

  static Map<String, EaProfileInvite> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaProfileInvite>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaProfileInvite.fromJson(value));
    }
    return map;
  }
}

