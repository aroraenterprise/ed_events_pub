part of edropin_eventsapi.api;



class EeEventCertificatesApi {
  final ApiClient apiClient;

  EeEventCertificatesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a certificate to an event
  ///
  /// 
  Future<EeEventCertificate> addEventCertificate(String eventId, EeEventCertificateUpdate eeEventCertificateUpdate) async {
    Object postBody = eeEventCertificateUpdate;

    // verify required params are set
    if(eventId == null) {
     throw new ApiException(400, "Missing required param: eventId");
    }
    if(eeEventCertificateUpdate == null) {
     throw new ApiException(400, "Missing required param: eeEventCertificateUpdate");
    }

    // create path and map variables
    String path = "/events/{eventId}/certificates".replaceAll("{format}","json").replaceAll("{" + "eventId" + "}", eventId.toString());

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
      return apiClient.deserialize(response.body, 'EeEventCertificate') as EeEventCertificate;
    } else {
      return null;
    }
  }
  /// Assign a certificate to attendee
  ///
  /// 
  Future<EeEventAttendee> assignCertificateToAttendee(String certificateId, String attendeeId) async {
    Object postBody;

    // verify required params are set
    if(certificateId == null) {
     throw new ApiException(400, "Missing required param: certificateId");
    }
    if(attendeeId == null) {
     throw new ApiException(400, "Missing required param: attendeeId");
    }

    // create path and map variables
    String path = "/certificates/{certificateId}/attendees/{attendeeId}".replaceAll("{format}","json").replaceAll("{" + "certificateId" + "}", certificateId.toString()).replaceAll("{" + "attendeeId" + "}", attendeeId.toString());

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
  /// Assign certificates to attendees
  ///
  /// 
  Future<EePagedEventAttendee> bulkAssignCertificates({ List<String> certificateIds, List<String> attendeeIds }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/certificates/bulk".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(certificateIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "certificateIds", certificateIds));
    }
    if(attendeeIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "attendeeIds", attendeeIds));
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
      return apiClient.deserialize(response.body, 'EePagedEventAttendee') as EePagedEventAttendee;
    } else {
      return null;
    }
  }
  /// Remove certificates from attendees
  ///
  /// 
  Future<EePagedEventAttendee> bulkRemoveCertificates({ List<String> certificateIds, List<String> attendeeIds }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/certificates/bulk".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(certificateIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "certificateIds", certificateIds));
    }
    if(attendeeIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "attendeeIds", attendeeIds));
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
      return apiClient.deserialize(response.body, 'EePagedEventAttendee') as EePagedEventAttendee;
    } else {
      return null;
    }
  }
  /// Delete an existing certificate
  ///
  /// 
  Future<EeSuccess> deleteEventCertificate(String certificateId) async {
    Object postBody;

    // verify required params are set
    if(certificateId == null) {
     throw new ApiException(400, "Missing required param: certificateId");
    }

    // create path and map variables
    String path = "/certificates/{certificateId}".replaceAll("{format}","json").replaceAll("{" + "certificateId" + "}", certificateId.toString());

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
  /// Download a certificate [certificateCode is eeEventAttendee.certificates[idx].code]
  ///
  /// 
  Future<EeAttendeeCertificate> downloadCertificate(String certificateCode) async {
    Object postBody;

    // verify required params are set
    if(certificateCode == null) {
     throw new ApiException(400, "Missing required param: certificateCode");
    }

    // create path and map variables
    String path = "/certificates/download/{certificateCode}".replaceAll("{format}","json").replaceAll("{" + "certificateCode" + "}", certificateCode.toString());

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
      return apiClient.deserialize(response.body, 'EeAttendeeCertificate') as EeAttendeeCertificate;
    } else {
      return null;
    }
  }
  /// Get a certificate
  ///
  /// 
  Future<EeEventCertificate> getEventCertificate(String certificateId) async {
    Object postBody;

    // verify required params are set
    if(certificateId == null) {
     throw new ApiException(400, "Missing required param: certificateId");
    }

    // create path and map variables
    String path = "/certificates/{certificateId}".replaceAll("{format}","json").replaceAll("{" + "certificateId" + "}", certificateId.toString());

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
      return apiClient.deserialize(response.body, 'EeEventCertificate') as EeEventCertificate;
    } else {
      return null;
    }
  }
  /// Inspect a template for all the placeholders
  ///
  /// 
  Future<EeCertificateInspect> inspectTemplate(String templateUrl) async {
    Object postBody;

    // verify required params are set
    if(templateUrl == null) {
     throw new ApiException(400, "Missing required param: templateUrl");
    }

    // create path and map variables
    String path = "/certificates/inspectTemplate".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "templateUrl", templateUrl));

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
      return apiClient.deserialize(response.body, 'EeCertificateInspect') as EeCertificateInspect;
    } else {
      return null;
    }
  }
  /// List all event certificates
  ///
  /// 
  Future<EePagedEventCertificate> listAllEventCertificates(String eventId, { String q, String facets, String cursor, int limit }) async {
    Object postBody;

    // verify required params are set
    if(eventId == null) {
     throw new ApiException(400, "Missing required param: eventId");
    }

    // create path and map variables
    String path = "/events/{eventId}/certificates".replaceAll("{format}","json").replaceAll("{" + "eventId" + "}", eventId.toString());

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
      return apiClient.deserialize(response.body, 'EePagedEventCertificate') as EePagedEventCertificate;
    } else {
      return null;
    }
  }
  /// Remove an assigned certificate from attendee
  ///
  /// 
  Future<EeEventAttendee> removeCertificateFromAttendee(String certificateId, String attendeeId) async {
    Object postBody;

    // verify required params are set
    if(certificateId == null) {
     throw new ApiException(400, "Missing required param: certificateId");
    }
    if(attendeeId == null) {
     throw new ApiException(400, "Missing required param: attendeeId");
    }

    // create path and map variables
    String path = "/certificates/{certificateId}/attendees/{attendeeId}".replaceAll("{format}","json").replaceAll("{" + "certificateId" + "}", certificateId.toString()).replaceAll("{" + "attendeeId" + "}", attendeeId.toString());

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
      return apiClient.deserialize(response.body, 'EeEventAttendee') as EeEventAttendee;
    } else {
      return null;
    }
  }
  /// List all attendees assigned to this certificate
  ///
  /// 
  Future<EePagedEventAttendee> searchAttendeesAssignedToCertificate(String certificateId, { String q, String facets, String cursor, int limit }) async {
    Object postBody;

    // verify required params are set
    if(certificateId == null) {
     throw new ApiException(400, "Missing required param: certificateId");
    }

    // create path and map variables
    String path = "/certificates/{certificateId}/attendees".replaceAll("{format}","json").replaceAll("{" + "certificateId" + "}", certificateId.toString());

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
  /// Update certificate to event
  ///
  /// 
  Future<EeEventCertificate> updateEventCertificate(String certificateId, EeEventCertificateUpdate eeEventCertificateUpdate) async {
    Object postBody = eeEventCertificateUpdate;

    // verify required params are set
    if(certificateId == null) {
     throw new ApiException(400, "Missing required param: certificateId");
    }
    if(eeEventCertificateUpdate == null) {
     throw new ApiException(400, "Missing required param: eeEventCertificateUpdate");
    }

    // create path and map variables
    String path = "/certificates/{certificateId}".replaceAll("{format}","json").replaceAll("{" + "certificateId" + "}", certificateId.toString());

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
      return apiClient.deserialize(response.body, 'EeEventCertificate') as EeEventCertificate;
    } else {
      return null;
    }
  }
}
