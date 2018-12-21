part of edropin_accountsapi.api;



class EaProfilesApi {
  final ApiClient apiClient;

  EaProfilesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Check account has permission
  ///
  /// 
  Future<EaPermissionCheck> checkAccountHasPermission(String profileId, String accountId, String permission) async {
    Object postBody;

    // verify required params are set
    if(profileId == null) {
     throw new ApiException(400, "Missing required param: profileId");
    }
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }
    if(permission == null) {
     throw new ApiException(400, "Missing required param: permission");
    }

    // create path and map variables
    String path = "/profiles/{profileId}/permissions/{accountId}/check".replaceAll("{format}","json").replaceAll("{" + "profileId" + "}", profileId.toString()).replaceAll("{" + "accountId" + "}", accountId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "permission", permission));

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
      return apiClient.deserialize(response.body, 'EaPermissionCheck') as EaPermissionCheck;
    } else {
      return null;
    }
  }
  /// Check username availability
  ///
  /// 
  Future<EaSuccess> checkUsernameAvailability(String username) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/profiles/usernamecheck".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "username", username));

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "AuthorizationOptional", "ClientKey"];

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
      return apiClient.deserialize(response.body, 'EaSuccess') as EaSuccess;
    } else {
      return null;
    }
  }
  /// Create profile
  ///
  /// 
  Future<EaProfile> createProfile(EaProfileUpdate eaProfileUpdate) async {
    Object postBody = eaProfileUpdate;

    // verify required params are set
    if(eaProfileUpdate == null) {
     throw new ApiException(400, "Missing required param: eaProfileUpdate");
    }

    // create path and map variables
    String path = "/profiles".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'EaProfile') as EaProfile;
    } else {
      return null;
    }
  }
  /// Delete an existing profile
  ///
  /// 
  Future<EaSuccess> deleteProfile(String profileId) async {
    Object postBody;

    // verify required params are set
    if(profileId == null) {
     throw new ApiException(400, "Missing required param: profileId");
    }

    // create path and map variables
    String path = "/profiles/{profileId}".replaceAll("{format}","json").replaceAll("{" + "profileId" + "}", profileId.toString());

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
      return apiClient.deserialize(response.body, 'EaSuccess') as EaSuccess;
    } else {
      return null;
    }
  }
  /// Get permission for account
  ///
  /// 
  Future<EaPermission> getAccountPermissionForProfile(String profileId, String accountId) async {
    Object postBody;

    // verify required params are set
    if(profileId == null) {
     throw new ApiException(400, "Missing required param: profileId");
    }
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }

    // create path and map variables
    String path = "/profiles/{profileId}/permissions/{accountId}".replaceAll("{format}","json").replaceAll("{" + "profileId" + "}", profileId.toString()).replaceAll("{" + "accountId" + "}", accountId.toString());

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
      return apiClient.deserialize(response.body, 'EaPermission') as EaPermission;
    } else {
      return null;
    }
  }
  /// Get Profiles
  ///
  /// 
  Future<EaPagedProfile> getAllProfiles({ String q, String facets, bool enhanced, String cursor, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/profiles".replaceAll("{format}","json");

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
    if(enhanced != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "enhanced", enhanced));
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
      return apiClient.deserialize(response.body, 'EaPagedProfile') as EaPagedProfile;
    } else {
      return null;
    }
  }
  /// Get Multiple Profiles
  ///
  /// 
  Future<EaPagedProfile> getMultipleProfiles({ List<String> profileIds }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/profiles/get-multi".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(profileIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "profileIds", profileIds));
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
      return apiClient.deserialize(response.body, 'EaPagedProfile') as EaPagedProfile;
    } else {
      return null;
    }
  }
  /// Get a profile from the directory
  ///
  /// 
  Future<EaProfile> getProfile(String profileId, { bool enhanced }) async {
    Object postBody;

    // verify required params are set
    if(profileId == null) {
     throw new ApiException(400, "Missing required param: profileId");
    }

    // create path and map variables
    String path = "/profiles/{profileId}".replaceAll("{format}","json").replaceAll("{" + "profileId" + "}", profileId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(enhanced != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "enhanced", enhanced));
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
      return apiClient.deserialize(response.body, 'EaProfile') as EaProfile;
    } else {
      return null;
    }
  }
  /// Get Profile Categories
  ///
  /// 
  Future<EaFacetSearch> getProfileCategories({ String q, String cursor, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/profiles/categories".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(q != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));
    }
    if(cursor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "cursor", cursor));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "AuthorizationOptional", "ClientKey"];

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
      return apiClient.deserialize(response.body, 'EaFacetSearch') as EaFacetSearch;
    } else {
      return null;
    }
  }
  /// List all profile permissions
  ///
  /// 
  Future<EaPagedPermission> getProfilePermission(String profileId, { String cursor, int limit }) async {
    Object postBody;

    // verify required params are set
    if(profileId == null) {
     throw new ApiException(400, "Missing required param: profileId");
    }

    // create path and map variables
    String path = "/profiles/{profileId}/all-permissions".replaceAll("{format}","json").replaceAll("{" + "profileId" + "}", profileId.toString());

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
      return apiClient.deserialize(response.body, 'EaPagedPermission') as EaPagedPermission;
    } else {
      return null;
    }
  }
  /// Profile Feed
  ///
  /// 
  Future<EaPagedFeedItem> paginateProfileFeed(String profileId, { String cursor, int limit }) async {
    Object postBody;

    // verify required params are set
    if(profileId == null) {
     throw new ApiException(400, "Missing required param: profileId");
    }

    // create path and map variables
    String path = "/profiles/{profileId}/feed".replaceAll("{format}","json").replaceAll("{" + "profileId" + "}", profileId.toString());

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
      return apiClient.deserialize(response.body, 'EaPagedFeedItem') as EaPagedFeedItem;
    } else {
      return null;
    }
  }
  /// Search Profiles
  ///
  /// 
  Future<EaPagedProfile> searchProfile({ String q, String facets, bool showInvited, String cursor, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/profiles/search".replaceAll("{format}","json");

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
    if(showInvited != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showInvited", showInvited));
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
      return apiClient.deserialize(response.body, 'EaPagedProfile') as EaPagedProfile;
    } else {
      return null;
    }
  }
  /// Send email verification
  ///
  /// 
  Future<EaSuccess> sendProfileEmailVerification(String profileId) async {
    Object postBody;

    // verify required params are set
    if(profileId == null) {
     throw new ApiException(400, "Missing required param: profileId");
    }

    // create path and map variables
    String path = "/profiles/{profileId}/email-verification".replaceAll("{format}","json").replaceAll("{" + "profileId" + "}", profileId.toString());

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
      return apiClient.deserialize(response.body, 'EaSuccess') as EaSuccess;
    } else {
      return null;
    }
  }
  /// Set permission for profile
  ///
  /// 
  Future<EaPermission> setProfilePermission(String profileId, String accountId, EaPermissionInput eaPermissionInput) async {
    Object postBody = eaPermissionInput;

    // verify required params are set
    if(profileId == null) {
     throw new ApiException(400, "Missing required param: profileId");
    }
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }
    if(eaPermissionInput == null) {
     throw new ApiException(400, "Missing required param: eaPermissionInput");
    }

    // create path and map variables
    String path = "/profiles/{profileId}/permissions/{accountId}".replaceAll("{format}","json").replaceAll("{" + "profileId" + "}", profileId.toString()).replaceAll("{" + "accountId" + "}", accountId.toString());

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
      return apiClient.deserialize(response.body, 'EaPermission') as EaPermission;
    } else {
      return null;
    }
  }
  /// Set a profile status
  ///
  /// 
  Future<EaProfileStatus> setStatus(String profileId, EaProfileStatus eaProfileStatus) async {
    Object postBody = eaProfileStatus;

    // verify required params are set
    if(profileId == null) {
     throw new ApiException(400, "Missing required param: profileId");
    }
    if(eaProfileStatus == null) {
     throw new ApiException(400, "Missing required param: eaProfileStatus");
    }

    // create path and map variables
    String path = "/profiles/{profileId}/status".replaceAll("{format}","json").replaceAll("{" + "profileId" + "}", profileId.toString());

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
      return apiClient.deserialize(response.body, 'EaProfileStatus') as EaProfileStatus;
    } else {
      return null;
    }
  }
  /// Update an existing profile
  ///
  /// 
  Future<EaProfile> updateProfile(String profileId, EaProfileUpdate eaProfileUpdate) async {
    Object postBody = eaProfileUpdate;

    // verify required params are set
    if(profileId == null) {
     throw new ApiException(400, "Missing required param: profileId");
    }
    if(eaProfileUpdate == null) {
     throw new ApiException(400, "Missing required param: eaProfileUpdate");
    }

    // create path and map variables
    String path = "/profiles/{profileId}".replaceAll("{format}","json").replaceAll("{" + "profileId" + "}", profileId.toString());

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
      return apiClient.deserialize(response.body, 'EaProfile') as EaProfile;
    } else {
      return null;
    }
  }
  /// Verifiy profile email
  ///
  /// 
  Future<EaEmailVerification> verifyProfileEmail(String code) async {
    Object postBody;

    // verify required params are set
    if(code == null) {
     throw new ApiException(400, "Missing required param: code");
    }

    // create path and map variables
    String path = "/profiles/email-verification/{code}".replaceAll("{format}","json").replaceAll("{" + "code" + "}", code.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Authorization", "AuthorizationOptional", "ClientKey"];

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
      return apiClient.deserialize(response.body, 'EaEmailVerification') as EaEmailVerification;
    } else {
      return null;
    }
  }
}
