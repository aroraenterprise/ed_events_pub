part of edropin_accountsapi.api;



class EaAccountsApi {
  final ApiClient apiClient;

  EaAccountsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Authenticate using email/password
  ///
  /// 
  Future<EaAuthentication> authenticatePassword(EaPasswordAuthentication eaPasswordAuthentication) async {
    Object postBody = eaPasswordAuthentication;

    // verify required params are set
    if(eaPasswordAuthentication == null) {
     throw new ApiException(400, "Missing required param: eaPasswordAuthentication");
    }

    // create path and map variables
    String path = "/accounts/authenticate/password".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'EaAuthentication') as EaAuthentication;
    } else {
      return null;
    }
  }
  /// Get Account
  ///
  /// 
  Future<EaAccount> getAccount() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/accounts".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'EaAccount') as EaAccount;
    } else {
      return null;
    }
  }
  /// Get multiple accounts [service only]
  ///
  /// 
  Future<EaPagedAccount> getMultipleAccounts({ List<String> accountIds }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/accounts/get-multi".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(accountIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "accountIds", accountIds));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["ClientKey", "ServiceKey"];

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
      return apiClient.deserialize(response.body, 'EaPagedAccount') as EaPagedAccount;
    } else {
      return null;
    }
  }
  /// Create/update existing account
  ///
  /// 
  Future<EaAccount> updateAccount(EaAccountUpdate eaAccountUpdate) async {
    Object postBody = eaAccountUpdate;

    // verify required params are set
    if(eaAccountUpdate == null) {
     throw new ApiException(400, "Missing required param: eaAccountUpdate");
    }

    // create path and map variables
    String path = "/accounts".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'EaAccount') as EaAccount;
    } else {
      return null;
    }
  }
  /// Update account claims
  ///
  /// 
  Future<EaAccount> updateAccountClaims(String accountId, EaClaims eaClaims) async {
    Object postBody = eaClaims;

    // verify required params are set
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }
    if(eaClaims == null) {
     throw new ApiException(400, "Missing required param: eaClaims");
    }

    // create path and map variables
    String path = "/accounts/{accountId}/claims".replaceAll("{format}","json").replaceAll("{" + "accountId" + "}", accountId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["AdminKey", "ClientKey"];

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
      return apiClient.deserialize(response.body, 'EaAccount') as EaAccount;
    } else {
      return null;
    }
  }
}
