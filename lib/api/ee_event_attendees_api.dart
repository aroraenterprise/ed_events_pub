part of edropin_eventsapi.api;



class EeEventAttendeesApi {
  final ApiClient apiClient;

  EeEventAttendeesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add an Attendee to an event
  ///
  /// 
  Future<EeEventAttendee> addAttendee(String ticketId, EeEventAttendeeUpdate eeEventAttendeeUpdate) async {
    Object postBody = eeEventAttendeeUpdate;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }
    if(eeEventAttendeeUpdate == null) {
     throw new ApiException(400, "Missing required param: eeEventAttendeeUpdate");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/attendees".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'EeEventAttendee') as EeEventAttendee;
    } else {
      return null;
    }
  }
  /// Clear dropins from attendees
  ///
  /// 
  Future<EePagedEventAttendee> clearAttendeeDropins(List<String> requestBody) async {
    Object postBody = requestBody;

    // verify required params are set
    if(requestBody == null) {
     throw new ApiException(400, "Missing required param: requestBody");
    }

    // create path and map variables
    String path = "/attendees/clear-dropins".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'EePagedEventAttendee') as EePagedEventAttendee;
    } else {
      return null;
    }
  }
  /// Pub sub to generate claims for event tickets sold
  ///
  /// 
  Future<String> createAttendeesForTicketSale(String apiKey, EePubSubMessage eePubSubMessage) async {
    Object postBody = eePubSubMessage;

    // verify required params are set
    if(apiKey == null) {
     throw new ApiException(400, "Missing required param: apiKey");
    }
    if(eePubSubMessage == null) {
     throw new ApiException(400, "Missing required param: eePubSubMessage");
    }

    // create path and map variables
    String path = "/attendees/ticketsale".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "apiKey", apiKey));

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'String') as String;
    } else {
      return null;
    }
  }
  /// Pub sub to cancel tickets for refunded order items
  ///
  /// 
  Future<String> deactivateAttendeesForTicketRefund(String apiKey, EePubSubMessage eePubSubMessage) async {
    Object postBody = eePubSubMessage;

    // verify required params are set
    if(apiKey == null) {
     throw new ApiException(400, "Missing required param: apiKey");
    }
    if(eePubSubMessage == null) {
     throw new ApiException(400, "Missing required param: eePubSubMessage");
    }

    // create path and map variables
    String path = "/attendees/ticketrefund".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "apiKey", apiKey));

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'String') as String;
    } else {
      return null;
    }
  }
  /// Delete an existing Event Attendee
  ///
  /// 
  Future deleteEventAttendee(String attendeeId) async {
    Object postBody;

    // verify required params are set
    if(attendeeId == null) {
     throw new ApiException(400, "Missing required param: attendeeId");
    }

    // create path and map variables
    String path = "/attendees/{attendeeId}".replaceAll("{format}","json").replaceAll("{" + "attendeeId" + "}", attendeeId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
    } else {
      return;
    }
  }
  /// List all event attendees
  ///
  /// 
  Future<EeCsv> exportAttendees(String eventId, { String facets }) async {
    Object postBody;

    // verify required params are set
    if(eventId == null) {
     throw new ApiException(400, "Missing required param: eventId");
    }

    // create path and map variables
    String path = "/events/{eventId}/attendees/export".replaceAll("{format}","json").replaceAll("{" + "eventId" + "}", eventId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(facets != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "facets", facets));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'EeCsv') as EeCsv;
    } else {
      return null;
    }
  }
  /// Get an attendee
  ///
  /// 
  Future<EeEventAttendee> getAttendee(String attendeeId) async {
    Object postBody;

    // verify required params are set
    if(attendeeId == null) {
     throw new ApiException(400, "Missing required param: attendeeId");
    }

    // create path and map variables
    String path = "/attendees/{attendeeId}".replaceAll("{format}","json").replaceAll("{" + "attendeeId" + "}", attendeeId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'EeEventAttendee') as EeEventAttendee;
    } else {
      return null;
    }
  }
  /// Get an attendee claim
  ///
  /// 
  Future<InlineResponse2001> getAttendeeClaimLink(String attendeeId) async {
    Object postBody;

    // verify required params are set
    if(attendeeId == null) {
     throw new ApiException(400, "Missing required param: attendeeId");
    }

    // create path and map variables
    String path = "/attendees/{attendeeId}/claims".replaceAll("{format}","json").replaceAll("{" + "attendeeId" + "}", attendeeId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2001') as InlineResponse2001;
    } else {
      return null;
    }
  }
  /// Get all attendee claims associated with the code in query
  ///
  /// 
  Future<EePagedEventAttendee> getAttendeesByClaim(String code) async {
    Object postBody;

    // verify required params are set
    if(code == null) {
     throw new ApiException(400, "Missing required param: code");
    }

    // create path and map variables
    String path = "/attendees/claim".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "code", code));

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'EePagedEventAttendee') as EePagedEventAttendee;
    } else {
      return null;
    }
  }
  /// List all event attendees
  ///
  /// 
  Future<EePagedEventAttendee> listAllAttendees(String eventId, { String q, String facets, String cursor, int limit }) async {
    Object postBody;

    // verify required params are set
    if(eventId == null) {
     throw new ApiException(400, "Missing required param: eventId");
    }

    // create path and map variables
    String path = "/events/{eventId}/attendees".replaceAll("{format}","json").replaceAll("{" + "eventId" + "}", eventId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(q != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));
    }
    if(facets != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "facets", facets));
    }
    if(cursor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "cursor", cursor));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'EePagedEventAttendee') as EePagedEventAttendee;
    } else {
      return null;
    }
  }
  /// Search user attendees
  ///
  /// 
  Future<EePagedEventAttendee> listUserAttendees({ String q, String facets, String cursor, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/attendees".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(q != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));
    }
    if(facets != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "facets", facets));
    }
    if(cursor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "cursor", cursor));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'EePagedEventAttendee') as EePagedEventAttendee;
    } else {
      return null;
    }
  }
  /// Send Claim email
  ///
  /// 
  Future<EeSuccess> sendAttendeeClaimEmail(String attendeeId, { InlineObject inlineObject }) async {
    Object postBody = inlineObject;

    // verify required params are set
    if(attendeeId == null) {
     throw new ApiException(400, "Missing required param: attendeeId");
    }

    // create path and map variables
    String path = "/attendees/{attendeeId}/claims".replaceAll("{format}","json").replaceAll("{" + "attendeeId" + "}", attendeeId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'EeSuccess') as EeSuccess;
    } else {
      return null;
    }
  }
  /// Send a message to attendees
  ///
  /// 
  Future<EeSuccess> sendAttendeeNotification(EeAttendeeNotification eeAttendeeNotification) async {
    Object postBody = eeAttendeeNotification;

    // verify required params are set
    if(eeAttendeeNotification == null) {
     throw new ApiException(400, "Missing required param: eeAttendeeNotification");
    }

    // create path and map variables
    String path = "/attendees/message".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'EeSuccess') as EeSuccess;
    } else {
      return null;
    }
  }
  /// Send Claim email
  ///
  /// 
  Future<EePagedEventAttendee> transferAttendees(EeEventAttendeeTransfer eeEventAttendeeTransfer) async {
    Object postBody = eeEventAttendeeTransfer;

    // verify required params are set
    if(eeEventAttendeeTransfer == null) {
     throw new ApiException(400, "Missing required param: eeEventAttendeeTransfer");
    }

    // create path and map variables
    String path = "/attendees/transfer".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'EePagedEventAttendee') as EePagedEventAttendee;
    } else {
      return null;
    }
  }
  /// Update an attendee
  ///
  /// 
  Future<EeEventAttendee> updateAttendee(String attendeeId, EeEventAttendeeUpdate eeEventAttendeeUpdate) async {
    Object postBody = eeEventAttendeeUpdate;

    // verify required params are set
    if(attendeeId == null) {
     throw new ApiException(400, "Missing required param: attendeeId");
    }
    if(eeEventAttendeeUpdate == null) {
     throw new ApiException(400, "Missing required param: eeEventAttendeeUpdate");
    }

    // create path and map variables
    String path = "/attendees/{attendeeId}".replaceAll("{format}","json").replaceAll("{" + "attendeeId" + "}", attendeeId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'EeEventAttendee') as EeEventAttendee;
    } else {
      return null;
    }
  }
  /// Update attendees using claim code
  ///
  /// 
  Future<EePagedEventAttendee> updateAttendeesByClaim(String code, EeEventAttendeeClaimUpdate eeEventAttendeeClaimUpdate) async {
    Object postBody = eeEventAttendeeClaimUpdate;

    // verify required params are set
    if(code == null) {
     throw new ApiException(400, "Missing required param: code");
    }
    if(eeEventAttendeeClaimUpdate == null) {
     throw new ApiException(400, "Missing required param: eeEventAttendeeClaimUpdate");
    }

    // create path and map variables
    String path = "/attendees/claim".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "code", code));

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'EePagedEventAttendee') as EePagedEventAttendee;
    } else {
      return null;
    }
  }
}
