part of edropin_accountsapi.api;



class EaUtilitiesApi {
  final ApiClient apiClient;

  EaUtilitiesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Check phone verification
  ///
  /// 
  Future<EaPhoneVerification> checkPhoneVerification(EaPhoneVerificationCheck eaPhoneVerificationCheck) async {
    Object postBody = eaPhoneVerificationCheck;

    // verify required params are set
    if(eaPhoneVerificationCheck == null) {
     throw new ApiException(400, "Missing required param: eaPhoneVerificationCheck");
    }

    // create path and map variables
    String path = "/utility/phoneverification/check".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'EaPhoneVerification') as EaPhoneVerification;
    } else {
      return null;
    }
  }
  /// Verify a phone number
  ///
  /// 
  Future<EaSuccess> startPhoneVerification(EaPhoneVerificationInput eaPhoneVerificationInput) async {
    Object postBody = eaPhoneVerificationInput;

    // verify required params are set
    if(eaPhoneVerificationInput == null) {
     throw new ApiException(400, "Missing required param: eaPhoneVerificationInput");
    }

    // create path and map variables
    String path = "/utility/phoneverification/start".replaceAll("{format}","json");

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
}
