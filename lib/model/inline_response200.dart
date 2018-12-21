part of edropin_eventsapi.api;

class InlineResponse200 {
  
  EeTicket ticket = null;
  
  EeEventDropin dropin = null;
  InlineResponse200();

  @override
  String toString() {
    return 'InlineResponse200[ticket=$ticket, dropin=$dropin, ]';
  }

  InlineResponse200.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ticket = new EeTicket.fromJson(json['ticket']);
    dropin = new EeEventDropin.fromJson(json['dropin']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ticket': ticket,
      'dropin': dropin
    };
  }

  static List<InlineResponse200> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse200>() : json.map((value) => new InlineResponse200.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse200>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse200.fromJson(value));
    }
    return map;
  }
}

