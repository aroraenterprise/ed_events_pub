part of edropin_accountsapi.api;

class EaProfileUpdate {
  
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
  
  String username = null;
  
  String phoneVerificationToken = null;
  
  String agreeTerms = null;
  //enum agreeTermsEnum {  v1,  };{
  EaProfileUpdate();

  @override
  String toString() {
    return 'EaProfileUpdate[name=$name, firstName=$firstName, lastName=$lastName, email=$email, profileType=$profileType, picture=$picture, videoLink=$videoLink, pictures=$pictures, bio=$bio, address=$address, website=$website, facebook=$facebook, linkedIn=$linkedIn, instagram=$instagram, categories=$categories, username=$username, phoneVerificationToken=$phoneVerificationToken, agreeTerms=$agreeTerms, ]';
  }

  EaProfileUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    username = json['username'];
    phoneVerificationToken = json['phoneVerificationToken'];
    agreeTerms = json['agreeTerms'];
  }

  Map<String, dynamic> toJson() {
    return {
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
      'username': username,
      'phoneVerificationToken': phoneVerificationToken,
      'agreeTerms': agreeTerms
    };
  }

  static List<EaProfileUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaProfileUpdate>() : json.map((value) => new EaProfileUpdate.fromJson(value)).toList();
  }

  static Map<String, EaProfileUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaProfileUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaProfileUpdate.fromJson(value));
    }
    return map;
  }
}

