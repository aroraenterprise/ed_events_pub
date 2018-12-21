part of edropin_eventsapi.api;



class EeEventTicketsApi {
  final ApiClient apiClient;

  EeEventTicketsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add Ticket to event
  ///
  /// 
  Future<EeTicket> addEventTicket(String eventId, EeTicketUpdate eeTicketUpdate, { String setAsEventPrice }) async {
    Object postBody = eeTicketUpdate;

    // verify required params are set
    if(eventId == null) {
     throw new ApiException(400, "Missing required param: eventId");
    }
    if(eeTicketUpdate == null) {
     throw new ApiException(400, "Missing required param: eeTicketUpdate");
    }

    // create path and map variables
    String path = "/events/{eventId}/tickets".replaceAll("{format}","json").replaceAll("{" + "eventId" + "}", eventId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(setAsEventPrice != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "setAsEventPrice", setAsEventPrice));
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
      return apiClient.deserialize(response.body, 'EeTicket') as EeTicket;
    } else {
      return null;
    }
  }
  /// Delete an existing Event
  ///
  /// 
  Future deleteEventTicket(String ticketId) async {
    Object postBody;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
  /// Get a ticket from the directory
  ///
  /// 
  Future<EeTicket> getEventTicket(String ticketId) async {
    Object postBody;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
      return apiClient.deserialize(response.body, 'EeTicket') as EeTicket;
    } else {
      return null;
    }
  }
  /// Get Tickets to event
  ///
  /// 
  Future<EePagedTicket> listEventTickets(String eventId, { String cursor, int limit }) async {
    Object postBody;

    // verify required params are set
    if(eventId == null) {
     throw new ApiException(400, "Missing required param: eventId");
    }

    // create path and map variables
    String path = "/events/{eventId}/tickets".replaceAll("{format}","json").replaceAll("{" + "eventId" + "}", eventId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
      return apiClient.deserialize(response.body, 'EePagedTicket') as EePagedTicket;
    } else {
      return null;
    }
  }
  /// Update an existing Event
  ///
  /// 
  Future<EeEvent> updateEventPrimaryTicket(String ticketId, String currencyCode) async {
    Object postBody;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }
    if(currencyCode == null) {
     throw new ApiException(400, "Missing required param: currencyCode");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/set-primary/{currencyCode}".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString()).replaceAll("{" + "currencyCode" + "}", currencyCode.toString());

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
      return apiClient.deserialize(response.body, 'EeEvent') as EeEvent;
    } else {
      return null;
    }
  }
  /// Upsert Ticket to event (One Ticket per currency)
  ///
  /// 
  Future<EeTicket> updateEventTicket(String ticketId, EeTicketUpdate eeTicketUpdate, { String setAsEventPrice }) async {
    Object postBody = eeTicketUpdate;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }
    if(eeTicketUpdate == null) {
     throw new ApiException(400, "Missing required param: eeTicketUpdate");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(setAsEventPrice != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "setAsEventPrice", setAsEventPrice));
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
      return apiClient.deserialize(response.body, 'EeTicket') as EeTicket;
    } else {
      return null;
    }
  }
}
