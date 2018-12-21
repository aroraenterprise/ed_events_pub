part of edropin_eventsapi.api;

class EePubSubMessage {
  
  String subscription = null;
  
  EePubSubMessageMessage message = null;
  EePubSubMessage();

  @override
  String toString() {
    return 'EePubSubMessage[subscription=$subscription, message=$message, ]';
  }

  EePubSubMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    subscription = json['subscription'];
    message = new EePubSubMessageMessage.fromJson(json['message']);
  }

  Map<String, dynamic> toJson() {
    return {
      'subscription': subscription,
      'message': message
    };
  }

  static List<EePubSubMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePubSubMessage>() : json.map((value) => new EePubSubMessage.fromJson(value)).toList();
  }

  static Map<String, EePubSubMessage> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePubSubMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePubSubMessage.fromJson(value));
    }
    return map;
  }
}

