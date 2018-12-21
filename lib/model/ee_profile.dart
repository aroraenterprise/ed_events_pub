part of edropin_eventsapi.api;

class EeProfile {
  
  String id = null;
  
  String name = null;
  
  String location = null;
  
  String profileType = null;
  
  String bio = null;
  
  String picture = null;
  
  String tagId = null;
  
  bool isInvited = null;
  EeProfile();

  @override
  String toString() {
    return 'EeProfile[id=$id, name=$name, location=$location, profileType=$profileType, bio=$bio, picture=$picture, tagId=$tagId, isInvited=$isInvited, ]';
  }

  EeProfile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    location = json['location'];
    profileType = json['profileType'];
    bio = json['bio'];
    picture = json['picture'];
    tagId = json['tagId'];
    isInvited = json['isInvited'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'location': location,
      'profileType': profileType,
      'bio': bio,
      'picture': picture,
      'tagId': tagId,
      'isInvited': isInvited
    };
  }

  static List<EeProfile> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeProfile>() : json.map((value) => new EeProfile.fromJson(value)).toList();
  }

  static Map<String, EeProfile> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeProfile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeProfile.fromJson(value));
    }
    return map;
  }
}

