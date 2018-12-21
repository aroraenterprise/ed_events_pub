part of edropin_eventsapi.api;



class EeKioskApi {
  final ApiClient apiClient;

  EeKioskApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Activate kiosk [used by kiosk to get its unique id]
  ///
  /// 
  Future<EeKiosk> activateKiosk() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/kiosks".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'EeKiosk') as EeKiosk;
    } else {
      return null;
    }
  }
  /// Deactivate kiosk
  ///
  /// 
  Future<EeSuccess> deactivateKiosk() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/kiosks".replaceAll("{format}","json");

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
  /// Get a kiosk
  ///
  /// 
  Future<EeKiosk> getKiosk(String kioskId) async {
    Object postBody;

    // verify required params are set
    if(kioskId == null) {
     throw new ApiException(400, "Missing required param: kioskId");
    }

    // create path and map variables
    String path = "/kiosks/{kioskId}".replaceAll("{format}","json").replaceAll("{" + "kioskId" + "}", kioskId.toString());

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
      return apiClient.deserialize(response.body, 'EeKiosk') as EeKiosk;
    } else {
      return null;
    }
  }
  /// Link a kiosk to my account
  ///
  /// 
  Future<EeKiosk> linkKiosk(String kioskId, { EeKioskUpdate eeKioskUpdate }) async {
    Object postBody = eeKioskUpdate;

    // verify required params are set
    if(kioskId == null) {
     throw new ApiException(400, "Missing required param: kioskId");
    }

    // create path and map variables
    String path = "/kiosks/{kioskId}".replaceAll("{format}","json").replaceAll("{" + "kioskId" + "}", kioskId.toString());

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
      return apiClient.deserialize(response.body, 'EeKiosk') as EeKiosk;
    } else {
      return null;
    }
  }
  /// List all user&#39;s kiosks
  ///
  /// 
  Future<EePagedKiosk> listAllKiosks({ String q, String facets, String cursor, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/kiosks".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'EePagedKiosk') as EePagedKiosk;
    } else {
      return null;
    }
  }
  /// Remove kiosk dropin
  ///
  /// 
  Future<EeKiosk> removeKioskDropin(String kioskId) async {
    Object postBody;

    // verify required params are set
    if(kioskId == null) {
     throw new ApiException(400, "Missing required param: kioskId");
    }

    // create path and map variables
    String path = "/kiosks/{kioskId}".replaceAll("{format}","json").replaceAll("{" + "kioskId" + "}", kioskId.toString());

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
      return apiClient.deserialize(response.body, 'EeKiosk') as EeKiosk;
    } else {
      return null;
    }
  }
  /// Unlink a kiosk
  ///
  /// 
  Future<EeSuccess> unlinkKiosk(String kioskId) async {
    Object postBody;

    // verify required params are set
    if(kioskId == null) {
     throw new ApiException(400, "Missing required param: kioskId");
    }

    // create path and map variables
    String path = "/kiosks/{kioskId}/unlink".replaceAll("{format}","json").replaceAll("{" + "kioskId" + "}", kioskId.toString());

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
}
