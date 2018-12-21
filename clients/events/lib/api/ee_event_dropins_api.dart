part of edropin_eventsapi.api;



class EeEventDropinsApi {
  final ApiClient apiClient;

  EeEventDropinsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add dropin to ticket
  ///
  /// 
  Future<InlineResponse200> addDropinToEventTicket(String ticketId, String dropinId) async {
    Object postBody;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }
    if(dropinId == null) {
     throw new ApiException(400, "Missing required param: dropinId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/dropins/{dropinId}".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString()).replaceAll("{" + "dropinId" + "}", dropinId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse200') as InlineResponse200;
    } else {
      return null;
    }
  }
  /// Add a dropin to an event
  ///
  /// 
  Future<EeEventDropin> addEventDropin(String eventId, EeEventDropinUpdate eeEventDropinUpdate) async {
    Object postBody = eeEventDropinUpdate;

    // verify required params are set
    if(eventId == null) {
     throw new ApiException(400, "Missing required param: eventId");
    }
    if(eeEventDropinUpdate == null) {
     throw new ApiException(400, "Missing required param: eeEventDropinUpdate");
    }

    // create path and map variables
    String path = "/events/{eventId}/dropins".replaceAll("{format}","json").replaceAll("{" + "eventId" + "}", eventId.toString());

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
      return apiClient.deserialize(response.body, 'EeEventDropin') as EeEventDropin;
    } else {
      return null;
    }
  }
  /// Assign a dropin to attendee
  ///
  /// 
  Future<EeEventAttendee> assignDropinToAttendee(String dropinId, String attendeeId) async {
    Object postBody;

    // verify required params are set
    if(dropinId == null) {
     throw new ApiException(400, "Missing required param: dropinId");
    }
    if(attendeeId == null) {
     throw new ApiException(400, "Missing required param: attendeeId");
    }

    // create path and map variables
    String path = "/dropins/{dropinId}/attendees/{attendeeId}".replaceAll("{format}","json").replaceAll("{" + "dropinId" + "}", dropinId.toString()).replaceAll("{" + "attendeeId" + "}", attendeeId.toString());

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
  /// Delete an existing dropin
  ///
  /// 
  Future<EeSuccess> deleteEventDropin(String dropinId) async {
    Object postBody;

    // verify required params are set
    if(dropinId == null) {
     throw new ApiException(400, "Missing required param: dropinId");
    }

    // create path and map variables
    String path = "/dropins/{dropinId}".replaceAll("{format}","json").replaceAll("{" + "dropinId" + "}", dropinId.toString());

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
      return apiClient.deserialize(response.body, 'EeSuccess') as EeSuccess;
    } else {
      return null;
    }
  }
  /// Get a dropin
  ///
  /// 
  Future<EeEventDropin> getEventDropin(String dropinId) async {
    Object postBody;

    // verify required params are set
    if(dropinId == null) {
     throw new ApiException(400, "Missing required param: dropinId");
    }

    // create path and map variables
    String path = "/dropins/{dropinId}".replaceAll("{format}","json").replaceAll("{" + "dropinId" + "}", dropinId.toString());

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
      return apiClient.deserialize(response.body, 'EeEventDropin') as EeEventDropin;
    } else {
      return null;
    }
  }
  /// List all event dropins
  ///
  /// 
  Future<EePagedEventDropin> listAllEventDropins(String eventId, { String q, String facets, String cursor, int limit }) async {
    Object postBody;

    // verify required params are set
    if(eventId == null) {
     throw new ApiException(400, "Missing required param: eventId");
    }

    // create path and map variables
    String path = "/events/{eventId}/dropins".replaceAll("{format}","json").replaceAll("{" + "eventId" + "}", eventId.toString());

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
      return apiClient.deserialize(response.body, 'EePagedEventDropin') as EePagedEventDropin;
    } else {
      return null;
    }
  }
  /// Remove an assigned dropin from attendee
  ///
  /// 
  Future<EeSuccess> removeDropinFromAttendee(String dropinId, String attendeeId) async {
    Object postBody;

    // verify required params are set
    if(dropinId == null) {
     throw new ApiException(400, "Missing required param: dropinId");
    }
    if(attendeeId == null) {
     throw new ApiException(400, "Missing required param: attendeeId");
    }

    // create path and map variables
    String path = "/dropins/{dropinId}/attendees/{attendeeId}".replaceAll("{format}","json").replaceAll("{" + "dropinId" + "}", dropinId.toString()).replaceAll("{" + "attendeeId" + "}", attendeeId.toString());

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
      return apiClient.deserialize(response.body, 'EeSuccess') as EeSuccess;
    } else {
      return null;
    }
  }
  /// Remove dropin from ticket
  ///
  /// 
  Future<InlineResponse200> removeDropinFromTicket(String ticketId, String dropinId) async {
    Object postBody;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }
    if(dropinId == null) {
     throw new ApiException(400, "Missing required param: dropinId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/dropins/{dropinId}".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString()).replaceAll("{" + "dropinId" + "}", dropinId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse200') as InlineResponse200;
    } else {
      return null;
    }
  }
  /// List all attendees assigned to this dropin
  ///
  /// 
  Future<EePagedEventAttendee> searchAttendeesAssignedToDropin(String dropinId, { bool isAssigned, String q, String facets, String cursor, int limit }) async {
    Object postBody;

    // verify required params are set
    if(dropinId == null) {
     throw new ApiException(400, "Missing required param: dropinId");
    }

    // create path and map variables
    String path = "/dropins/{dropinId}/attendees".replaceAll("{format}","json").replaceAll("{" + "dropinId" + "}", dropinId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(isAssigned != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isAssigned", isAssigned));
    }
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
  /// List all dropins assigned to this ticket
  ///
  /// 
  Future<EePagedEventDropin> searchDropinsAssignedToTicket(String ticketId, { String q, String facets, String cursor, int limit }) async {
    Object postBody;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/dropins".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
      return apiClient.deserialize(response.body, 'EePagedEventDropin') as EePagedEventDropin;
    } else {
      return null;
    }
  }
  /// Update dropin to event
  ///
  /// 
  Future<EeEventDropin> updateEventDropin(String dropinId, EeEventDropinUpdate eeEventDropinUpdate) async {
    Object postBody = eeEventDropinUpdate;

    // verify required params are set
    if(dropinId == null) {
     throw new ApiException(400, "Missing required param: dropinId");
    }
    if(eeEventDropinUpdate == null) {
     throw new ApiException(400, "Missing required param: eeEventDropinUpdate");
    }

    // create path and map variables
    String path = "/dropins/{dropinId}".replaceAll("{format}","json").replaceAll("{" + "dropinId" + "}", dropinId.toString());

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
      return apiClient.deserialize(response.body, 'EeEventDropin') as EeEventDropin;
    } else {
      return null;
    }
  }
}
