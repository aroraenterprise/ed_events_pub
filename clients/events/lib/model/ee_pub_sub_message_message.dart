part of edropin_eventsapi.api;

class EePubSubMessageMessage {
  
  String data = null;
  
  Object attributes = null;
  
  String messageId = null;
  EePubSubMessageMessage();

  @override
  String toString() {
    return 'EePubSubMessageMessage[data=$data, attributes=$attributes, messageId=$messageId, ]';
  }

  EePubSubMessageMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = json['data'];
    attributes = json['attributes'];
    messageId = json['message_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'attributes': attributes,
      'message_id': messageId
    };
  }

  static List<EePubSubMessageMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<EePubSubMessageMessage>() : json.map((value) => new EePubSubMessageMessage.fromJson(value)).toList();
  }

  static Map<String, EePubSubMessageMessage> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EePubSubMessageMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EePubSubMessageMessage.fromJson(value));
    }
    return map;
  }
}

