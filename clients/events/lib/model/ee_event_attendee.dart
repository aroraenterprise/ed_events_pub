part of edropin_eventsapi.api;

class EeEventAttendee {
  
  String id = null;
  
  String createdOn = null;
  
  String modifiedOn = null;
  
  String version = null;
  
  bool sendClaim = false;
  
  String name = null;
  
  String email = null;
  
  String title = null;
  
  String phone = null;
  
  String memberId = null;
  
  String orderItemId = null;
  
  String orderItemStatusId = null;
  
  String eventName = null;
  
  String eventId = null;
  
  String ticketId = null;
  
  String ticketName = null;
  
  String eventPicture = null;
  
  bool active = null;
  
  bool isRefunded = null;
  
  bool isClaimed = null;
  
  EeAppliedPromotion appliedPromotion = null;
  
  List<EeAttendeeDropin> dropins = [];
  
  List<EeAttendeeCertificate> certificates = [];
  EeEventAttendee();

  @override
  String toString() {
    return 'EeEventAttendee[id=$id, createdOn=$createdOn, modifiedOn=$modifiedOn, version=$version, sendClaim=$sendClaim, name=$name, email=$email, title=$title, phone=$phone, memberId=$memberId, orderItemId=$orderItemId, orderItemStatusId=$orderItemStatusId, eventName=$eventName, eventId=$eventId, ticketId=$ticketId, ticketName=$ticketName, eventPicture=$eventPicture, active=$active, isRefunded=$isRefunded, isClaimed=$isClaimed, appliedPromotion=$appliedPromotion, dropins=$dropins, certificates=$certificates, ]';
  }

  EeEventAttendee.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createdOn = json['createdOn'];
    modifiedOn = json['modifiedOn'];
    version = json['version'];
    sendClaim = json['sendClaim'];
    name = json['name'];
    email = json['email'];
    title = json['title'];
    phone = json['phone'];
    memberId = json['memberId'];
    orderItemId = json['orderItemId'];
    orderItemStatusId = json['orderItemStatusId'];
    eventName = json['eventName'];
    eventId = json['eventId'];
    ticketId = json['ticketId'];
    ticketName = json['ticketName'];
    eventPicture = json['eventPicture'];
    active = json['active'];
    isRefunded = json['isRefunded'];
    isClaimed = json['isClaimed'];
    appliedPromotion = new EeAppliedPromotion.fromJson(json['appliedPromotion']);
    dropins = EeAttendeeDropin.listFromJson(json['dropins']);
    certificates = EeAttendeeCertificate.listFromJson(json['certificates']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdOn': createdOn,
      'modifiedOn': modifiedOn,
      'version': version,
      'sendClaim': sendClaim,
      'name': name,
      'email': email,
      'title': title,
      'phone': phone,
      'memberId': memberId,
      'orderItemId': orderItemId,
      'orderItemStatusId': orderItemStatusId,
      'eventName': eventName,
      'eventId': eventId,
      'ticketId': ticketId,
      'ticketName': ticketName,
      'eventPicture': eventPicture,
      'active': active,
      'isRefunded': isRefunded,
      'isClaimed': isClaimed,
      'appliedPromotion': appliedPromotion,
      'dropins': dropins,
      'certificates': certificates
    };
  }

  static List<EeEventAttendee> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeEventAttendee>() : json.map((value) => new EeEventAttendee.fromJson(value)).toList();
  }

  static Map<String, EeEventAttendee> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeEventAttendee>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeEventAttendee.fromJson(value));
    }
    return map;
  }
}

