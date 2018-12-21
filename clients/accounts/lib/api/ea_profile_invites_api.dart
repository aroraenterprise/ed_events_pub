part of edropin_accountsapi.api;



class EaProfileInvitesApi {
  final ApiClient apiClient;

  EaProfileInvitesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Archive a profile invitation
  ///
  /// 
  Future<EaSuccess> archiveProfileInvite(String inviteId) async {
    Object postBody;

    // verify required params are set
    if(inviteId == null) {
     throw new ApiException(400, "Missing required param: inviteId");
    }

    // create path and map variables
    String path = "/profile-invites/{inviteId}".replaceAll("{format}","json").replaceAll("{" + "inviteId" + "}", inviteId.toString());

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
  /// Create a profile from a profile invite
  ///
  /// 
  Future<EaProfile> createProfileFromInvite(String referralCode, EaProfileUpdate eaProfileUpdate) async {
    Object postBody = eaProfileUpdate;

    // verify required params are set
    if(referralCode == null) {
     throw new ApiException(400, "Missing required param: referralCode");
    }
    if(eaProfileUpdate == null) {
     throw new ApiException(400, "Missing required param: eaProfileUpdate");
    }

    // create path and map variables
    String path = "/profile-invites/referral/{referralCode}".replaceAll("{format}","json").replaceAll("{" + "referralCode" + "}", referralCode.toString());

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
  /// Create a new profile invite
  ///
  /// 
  Future<EaProfileInvite> createProfileInvite(EaProfileInviteCreate eaProfileInviteCreate) async {
    Object postBody = eaProfileInviteCreate;

    // verify required params are set
    if(eaProfileInviteCreate == null) {
     throw new ApiException(400, "Missing required param: eaProfileInviteCreate");
    }

    // create path and map variables
    String path = "/profile-invites".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'EaProfileInvite') as EaProfileInvite;
    } else {
      return null;
    }
  }
  /// Get Multiple Profile Invites
  ///
  /// 
  Future<EaPagedProfileInvite> getMultipleInvites({ List<String> inviteIds }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/profile-invites/get-multi".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(inviteIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "inviteIds", inviteIds));
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
      return apiClient.deserialize(response.body, 'EaPagedProfileInvite') as EaPagedProfileInvite;
    } else {
      return null;
    }
  }
  /// Get the pre-filled fields for on-boarding an invite
  ///
  /// 
  Future<EaProfileInvite> getProfileInviteReferral(String referralCode) async {
    Object postBody;

    // verify required params are set
    if(referralCode == null) {
     throw new ApiException(400, "Missing required param: referralCode");
    }

    // create path and map variables
    String path = "/profile-invites/referral/{referralCode}".replaceAll("{format}","json").replaceAll("{" + "referralCode" + "}", referralCode.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["ClientKey"];

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
      return apiClient.deserialize(response.body, 'EaProfileInvite') as EaProfileInvite;
    } else {
      return null;
    }
  }
  /// Paginate over all invitations made by requested user
  ///
  /// 
  Future<EaProfileInvite> listProfileInvites({ String cursor, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/profile-invites".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'EaProfileInvite') as EaProfileInvite;
    } else {
      return null;
    }
  }
}
