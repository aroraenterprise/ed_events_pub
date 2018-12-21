part of edropin_accountsapi.api;

class EaProfileInviteCreate {
  
  String email = null;
  
  String profileType = null;
  
  String inviteById = null;
  /* e.g. Event Name */
  String inviteFor = null;
  
  String name = null;
  
  String bio = null;
  
  String picture = null;
  EaProfileInviteCreate();

  @override
  String toString() {
    return 'EaProfileInviteCreate[email=$email, profileType=$profileType, inviteById=$inviteById, inviteFor=$inviteFor, name=$name, bio=$bio, picture=$picture, ]';
  }

  EaProfileInviteCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    profileType = json['profileType'];
    inviteById = json['inviteById'];
    inviteFor = json['inviteFor'];
    name = json['name'];
    bio = json['bio'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'profileType': profileType,
      'inviteById': inviteById,
      'inviteFor': inviteFor,
      'name': name,
      'bio': bio,
      'picture': picture
    };
  }

  static List<EaProfileInviteCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaProfileInviteCreate>() : json.map((value) => new EaProfileInviteCreate.fromJson(value)).toList();
  }

  static Map<String, EaProfileInviteCreate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaProfileInviteCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaProfileInviteCreate.fromJson(value));
    }
    return map;
  }
}

