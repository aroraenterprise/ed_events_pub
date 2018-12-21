part of edropin_accountsapi.api;



class EaPermissionsApi {
  final ApiClient apiClient;

  EaPermissionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Accept a permission invite
  ///
  /// 
  Future<EaPermissionAccept> acceptPermissionInvite(String inviteToken, { String v }) async {
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
      return apiClient.deserialize(response.body, 'EaPermissionAccept') as EaPermissionAccept;
    } else {
      return null;
    }
  }
  /// Check account has permission
  ///
  /// 
  Future<EaPermissionCheck> hasPermission(String entityType, String entityId, String accountId, { String permission }) async {
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
      return apiClient.deserialize(response.body, 'EaPermissionCheck') as EaPermissionCheck;
    } else {
      return null;
    }
  }
  /// Get permissions for entity
  ///
  /// 
  Future<EaPagedPermission> paginatePermissions(String entityType, String entityId, { String cursor, int limit }) async {
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
      return apiClient.deserialize(response.body, 'EaPagedPermission') as EaPagedPermission;
    } else {
      return null;
    }
  }
  /// Remove all permissions for account
  ///
  /// 
  Future<EaSuccess> removePermissionsForAccount(String entityType, String entityId, String accountId) async {
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
      return apiClient.deserialize(response.body, 'EaSuccess') as EaSuccess;
    } else {
      return null;
    }
  }
  /// Send a permission invite
  ///
  /// 
  Future<EaPagedPermissionInvite> sendPermissionInvite(String entityType, String entityId, EaPermissionInviteCreate eaPermissionInviteCreate) async {
    Object postBody = eaPermissionInviteCreate;

    // verify required params are set
    if(entityType == null) {
     throw new ApiException(400, "Missing required param: entityType");
    }
    if(entityId == null) {
     throw new ApiException(400, "Missing required param: entityId");
    }
    if(eaPermissionInviteCreate == null) {
     throw new ApiException(400, "Missing required param: eaPermissionInviteCreate");
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
      return apiClient.deserialize(response.body, 'EaPagedPermissionInvite') as EaPagedPermissionInvite;
    } else {
      return null;
    }
  }
  /// Set account permission
  ///
  /// 
  Future<EaPermission> setPermission(String entityType, String entityId, String accountId, EaPermissionInput eaPermissionInput) async {
    Object postBody = eaPermissionInput;

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
    if(eaPermissionInput == null) {
     throw new ApiException(400, "Missing required param: eaPermissionInput");
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
      return apiClient.deserialize(response.body, 'EaPermission') as EaPermission;
    } else {
      return null;
    }
  }
}
