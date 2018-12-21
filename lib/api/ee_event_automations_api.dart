part of edropin_eventsapi.api;



class EeEventAutomationsApi {
  final ApiClient apiClient;

  EeEventAutomationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add an automation to an event
  ///
  /// 
  Future<EeEventAutomation> addEventAutomation(String eventId, EeEventAutomationUpdate eeEventAutomationUpdate) async {
    Object postBody = eeEventAutomationUpdate;

    // verify required params are set
    if(eventId == null) {
     throw new ApiException(400, "Missing required param: eventId");
    }
    if(eeEventAutomationUpdate == null) {
     throw new ApiException(400, "Missing required param: eeEventAutomationUpdate");
    }

    // create path and map variables
    String path = "/events/{eventId}/automations".replaceAll("{format}","json").replaceAll("{" + "eventId" + "}", eventId.toString());

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
      return apiClient.deserialize(response.body, 'EeEventAutomation') as EeEventAutomation;
    } else {
      return null;
    }
  }
  /// Delete an existing Automation
  ///
  /// 
  Future<EeSuccess> deleteEventAutomation(String automationId) async {
    Object postBody;

    // verify required params are set
    if(automationId == null) {
     throw new ApiException(400, "Missing required param: automationId");
    }

    // create path and map variables
    String path = "/automations/{automationId}".replaceAll("{format}","json").replaceAll("{" + "automationId" + "}", automationId.toString());

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
  /// Get an Automation
  ///
  /// 
  Future<EeEventAutomation> getEventAutomation(String automationId) async {
    Object postBody;

    // verify required params are set
    if(automationId == null) {
     throw new ApiException(400, "Missing required param: automationId");
    }

    // create path and map variables
    String path = "/automations/{automationId}".replaceAll("{format}","json").replaceAll("{" + "automationId" + "}", automationId.toString());

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
      return apiClient.deserialize(response.body, 'EeEventAutomation') as EeEventAutomation;
    } else {
      return null;
    }
  }
  /// List all event Automations
  ///
  /// 
  Future<EePagedEventAutomation> listAllEventAutomations(String eventId, { String cursor, int limit }) async {
    Object postBody;

    // verify required params are set
    if(eventId == null) {
     throw new ApiException(400, "Missing required param: eventId");
    }

    // create path and map variables
    String path = "/events/{eventId}/automations".replaceAll("{format}","json").replaceAll("{" + "eventId" + "}", eventId.toString());

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
      return apiClient.deserialize(response.body, 'EePagedEventAutomation') as EePagedEventAutomation;
    } else {
      return null;
    }
  }
  /// Pub sub to trigger an event automation
  ///
  /// 
  Future<String> triggerEventAutomation(String triggerType, String apiKey, EePubSubMessage eePubSubMessage) async {
    Object postBody = eePubSubMessage;

    // verify required params are set
    if(triggerType == null) {
     throw new ApiException(400, "Missing required param: triggerType");
    }
    if(apiKey == null) {
     throw new ApiException(400, "Missing required param: apiKey");
    }
    if(eePubSubMessage == null) {
     throw new ApiException(400, "Missing required param: eePubSubMessage");
    }

    // create path and map variables
    String path = "/automations/{triggerType}/trigger".replaceAll("{format}","json").replaceAll("{" + "triggerType" + "}", triggerType.toString());

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
  /// Update Automation to event
  ///
  /// 
  Future<EeEventAutomation> updateEventAutomation(String automationId, EeEventAutomationUpdate eeEventAutomationUpdate) async {
    Object postBody = eeEventAutomationUpdate;

    // verify required params are set
    if(automationId == null) {
     throw new ApiException(400, "Missing required param: automationId");
    }
    if(eeEventAutomationUpdate == null) {
     throw new ApiException(400, "Missing required param: eeEventAutomationUpdate");
    }

    // create path and map variables
    String path = "/automations/{automationId}".replaceAll("{format}","json").replaceAll("{" + "automationId" + "}", automationId.toString());

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
      return apiClient.deserialize(response.body, 'EeEventAutomation') as EeEventAutomation;
    } else {
      return null;
    }
  }
}
