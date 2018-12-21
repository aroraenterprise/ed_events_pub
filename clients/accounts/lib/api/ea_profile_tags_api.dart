part of edropin_accountsapi.api;



class EaProfileTagsApi {
  final ApiClient apiClient;

  EaProfileTagsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Paginate over all tag requests for the profile
  ///
  /// 
  Future<EaPagedTagRequest> listTagRequests(String profileId, { String cursor, int limit }) async {
    Object postBody;

    // verify required params are set
    if(profileId == null) {
     throw new ApiException(400, "Missing required param: profileId");
    }

    // create path and map variables
    String path = "/profiles/{profileId}/profile-tags".replaceAll("{format}","json").replaceAll("{" + "profileId" + "}", profileId.toString());

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
      return apiClient.deserialize(response.body, 'EaPagedTagRequest') as EaPagedTagRequest;
    } else {
      return null;
    }
  }
  /// Remove a profile tag request
  ///
  /// 
  Future<EaSuccess> removeProfileTagRequest(String profileTagId) async {
    Object postBody;

    // verify required params are set
    if(profileTagId == null) {
     throw new ApiException(400, "Missing required param: profileTagId");
    }

    // create path and map variables
    String path = "/profile-tags/{profileTagId}".replaceAll("{format}","json").replaceAll("{" + "profileTagId" + "}", profileTagId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey", "ServiceKey"];

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
      return apiClient.deserialize(response.body, 'EaSuccess') as EaSuccess;
    } else {
      return null;
    }
  }
  /// Accept or decline a profile tag request
  ///
  /// 
  Future<EaTagRequest> respondToProfileTagRequest(String profileTagId, EaTagRespond eaTagRespond) async {
    Object postBody = eaTagRespond;

    // verify required params are set
    if(profileTagId == null) {
     throw new ApiException(400, "Missing required param: profileTagId");
    }
    if(eaTagRespond == null) {
     throw new ApiException(400, "Missing required param: eaTagRespond");
    }

    // create path and map variables
    String path = "/profile-tags/{profileTagId}".replaceAll("{format}","json").replaceAll("{" + "profileTagId" + "}", profileTagId.toString());

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
      return apiClient.deserialize(response.body, 'EaTagRequest') as EaTagRequest;
    } else {
      return null;
    }
  }
  /// Request to tag a profile in an entity e.g. Event, Course, etc.
  ///
  /// 
  Future<EaTagRequest> upsertProfileTagRequest(String profileId, EaTagRequestCreate eaTagRequestCreate) async {
    Object postBody = eaTagRequestCreate;

    // verify required params are set
    if(profileId == null) {
     throw new ApiException(400, "Missing required param: profileId");
    }
    if(eaTagRequestCreate == null) {
     throw new ApiException(400, "Missing required param: eaTagRequestCreate");
    }

    // create path and map variables
    String path = "/profiles/{profileId}/profile-tags".replaceAll("{format}","json").replaceAll("{" + "profileId" + "}", profileId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "ClientKey", "ServiceKey"];

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
      return apiClient.deserialize(response.body, 'EaTagRequest') as EaTagRequest;
    } else {
      return null;
    }
  }
}
