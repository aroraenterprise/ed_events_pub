part of edropin_accountsapi.api;

class EaProfile {
  
  String id = null;
  
  int created = null;
  
  int modified = null;
  
  String version = null;
  
  String name = null;
  
  String firstName = null;
  
  String lastName = null;
  
  String email = null;
  
  String profileType = null;
  
  String picture = null;
  
  String videoLink = null;
  
  String pictures = null;
  
  String bio = null;
  
  EaAddress address = null;
  
  String website = null;
  
  String facebook = null;
  
  String linkedIn = null;
  
  String instagram = null;
  
  List<String> categories = [];
  
  String phone = null;
  
  String location = null;
  
  bool isEmailVerified = null;
  
  String status = null;
  
  List<Object> statusMessages = [];
  
  bool isInvited = null;
  EaProfile();

  @override
  String toString() {
    return 'EaProfile[id=$id, created=$created, modified=$modified, version=$version, name=$name, firstName=$firstName, lastName=$lastName, email=$email, profileType=$profileType, picture=$picture, videoLink=$videoLink, pictures=$pictures, bio=$bio, address=$address, website=$website, facebook=$facebook, linkedIn=$linkedIn, instagram=$instagram, categories=$categories, phone=$phone, location=$location, isEmailVerified=$isEmailVerified, status=$status, statusMessages=$statusMessages, isInvited=$isInvited, ]';
  }

  EaProfile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    created = json['created'];
    modified = json['modified'];
    version = json['version'];
    name = json['name'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    profileType = json['profileType'];
    picture = json['picture'];
    videoLink = json['videoLink'];
    pictures = json['pictures'];
    bio = json['bio'];
    address = new EaAddress.fromJson(json['address']);
    website = json['website'];
    facebook = json['facebook'];
    linkedIn = json['linkedIn'];
    instagram = json['instagram'];
    categories = ((json['categories'] ?? []) as List).map((item) => item as String).toList();
    phone = json['phone'];
    location = json['location'];
    isEmailVerified = json['isEmailVerified'];
    status = json['status'];
    statusMessages = Object.listFromJson(json['statusMessages']);
    isInvited = json['isInvited'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created': created,
      'modified': modified,
      'version': version,
      'name': name,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'profileType': profileType,
      'picture': picture,
      'videoLink': videoLink,
      'pictures': pictures,
      'bio': bio,
      'address': address,
      'website': website,
      'facebook': facebook,
      'linkedIn': linkedIn,
      'instagram': instagram,
      'categories': categories,
      'phone': phone,
      'location': location,
      'isEmailVerified': isEmailVerified,
      'status': status,
      'statusMessages': statusMessages,
      'isInvited': isInvited
    };
  }

  static List<EaProfile> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaProfile>() : json.map((value) => new EaProfile.fromJson(value)).toList();
  }

  static Map<String, EaProfile> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaProfile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaProfile.fromJson(value));
    }
    return map;
  }
}

