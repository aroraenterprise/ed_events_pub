part of edropin_eventsapi.api;



class EePermissionsApi {
  final ApiClient apiClient;

  EePermissionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Accept a permission invite
  ///
  /// 
  Future<EePermissionAccept> acceptPermissionInvite(String inviteToken, { String v }) async {
    Object postBody;

    // verify required params are set
    if(inviteToken == null) {
     throw new ApiException(400, "Missing required param: inviteToken");
    }

    // create path and map variables
    String path = "/permissions/accept-invite/{inviteToken}".replaceAll("{format}","json").replaceAll("{" + "inviteToken" + "}", inviteToken.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(v != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "v", v));
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
      return apiClient.deserialize(response.body, 'EePermissionAccept') as EePermissionAccept;
    } else {
      return null;
    }
  }
  /// Check account has permission
  ///
  /// 
  Future<EePermissionCheck> hasPermission(String entityType, String entityId, String accountId, { String permission }) async {
    Object postBody;

    // verify required params are set
    if(entityType == null) {
     throw new ApiException(400, "Missing required param: entityType");
    }
    if(entityId == null) {
     throw new ApiException(400, "Missing required param: entityId");
    }
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }

    // create path and map variables
    String path = "/permissions/{entityType}/{entityId}/accounts/{accountId}".replaceAll("{format}","json").replaceAll("{" + "entityType" + "}", entityType.toString()).replaceAll("{" + "entityId" + "}", entityId.toString()).replaceAll("{" + "accountId" + "}", accountId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(permission != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "permission", permission));
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
      return apiClient.deserialize(response.body, 'EePermissionCheck') as EePermissionCheck;
    } else {
      return null;
    }
  }
  /// Get permissions for entity
  ///
  /// 
  Future<EePagedPermission> paginatePermissions(String entityType, String entityId, { String cursor, int limit }) async {
    Object postBody;

    // verify required params are set
    if(entityType == null) {
     throw new ApiException(400, "Missing required param: entityType");
    }
    if(entityId == null) {
     throw new ApiException(400, "Missing required param: entityId");
    }

    // create path and map variables
    String path = "/permissions/{entityType}/{entityId}/accounts".replaceAll("{format}","json").replaceAll("{" + "entityType" + "}", entityType.toString()).replaceAll("{" + "entityId" + "}", entityId.toString());

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
      return apiClient.deserialize(response.body, 'EePagedPermission') as EePagedPermission;
    } else {
      return null;
    }
  }
  /// Remove all permissions for account
  ///
  /// 
  Future<EeSuccess> removePermissionsForAccount(String entityType, String entityId, String accountId) async {
    Object postBody;

    // verify required params are set
    if(entityType == null) {
     throw new ApiException(400, "Missing required param: entityType");
    }
    if(entityId == null) {
     throw new ApiException(400, "Missing required param: entityId");
    }
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }

    // create path and map variables
    String path = "/permissions/{entityType}/{entityId}/accounts/{accountId}".replaceAll("{format}","json").replaceAll("{" + "entityType" + "}", entityType.toString()).replaceAll("{" + "entityId" + "}", entityId.toString()).replaceAll("{" + "accountId" + "}", accountId.toString());

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
  /// Send a permission invite
  ///
  /// 
  Future<EePagedPermissionInvite> sendPermissionInvite(String entityType, String entityId, EePermissionInviteCreate eePermissionInviteCreate) async {
    Object postBody = eePermissionInviteCreate;

    // verify required params are set
    if(entityType == null) {
     throw new ApiException(400, "Missing required param: entityType");
    }
    if(entityId == null) {
     throw new ApiException(400, "Missing required param: entityId");
    }
    if(eePermissionInviteCreate == null) {
     throw new ApiException(400, "Missing required param: eePermissionInviteCreate");
    }

    // create path and map variables
    String path = "/permissions/{entityType}/{entityId}/send-invite".replaceAll("{format}","json").replaceAll("{" + "entityType" + "}", entityType.toString()).replaceAll("{" + "entityId" + "}", entityId.toString());

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
      return apiClient.deserialize(response.body, 'EePagedPermissionInvite') as EePagedPermissionInvite;
    } else {
      return null;
    }
  }
  /// Set account permission
  ///
  /// 
  Future<EePermission> setPermission(String entityType, String entityId, String accountId, EePermissionInput eePermissionInput) async {
    Object postBody = eePermissionInput;

    // verify required params are set
    if(entityType == null) {
     throw new ApiException(400, "Missing required param: entityType");
    }
    if(entityId == null) {
     throw new ApiException(400, "Missing required param: entityId");
    }
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }
    if(eePermissionInput == null) {
     throw new ApiException(400, "Missing required param: eePermissionInput");
    }

    // create path and map variables
    String path = "/permissions/{entityType}/{entityId}/accounts/{accountId}".replaceAll("{format}","json").replaceAll("{" + "entityType" + "}", entityType.toString()).replaceAll("{" + "entityId" + "}", entityId.toString()).replaceAll("{" + "accountId" + "}", accountId.toString());

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
      return apiClient.deserialize(response.body, 'EePermission') as EePermission;
    } else {
      return null;
    }
  }
}
