# edropin_accountsapi.api.EaUtilitiesApi

## Load the API package
```dart
import 'package:edropin_accountsapi/api.dart';
```

All URIs are relative to *https://edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkPhoneVerification**](EaUtilitiesApi.md#checkPhoneVerification) | **POST** /utility/phoneverification/check | Check phone verification
[**startPhoneVerification**](EaUtilitiesApi.md#startPhoneVerification) | **POST** /utility/phoneverification/start | Verify a phone number


# **checkPhoneVerification**
> EaPhoneVerification checkPhoneVerification(eaPhoneVerificationCheck)

Check phone verification

### Example 
```dart
import 'package:edropin_accountsapi/api.dart';
// TODO Configure API key authorization: Authorization
//edropin_accountsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: ClientKey
//edropin_accountsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EaUtilitiesApi();
var eaPhoneVerificationCheck = new EaPhoneVerificationCheck(); // EaPhoneVerificationCheck | Phone code to complete verification

try { 
    var result = api_instance.checkPhoneVerification(eaPhoneVerificationCheck);
    print(result);
} catch (e) {
    print("Exception when calling EaUtilitiesApi->checkPhoneVerification: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eaPhoneVerificationCheck** | [**EaPhoneVerificationCheck**](EaPhoneVerificationCheck.md)| Phone code to complete verification | 

### Return type

[**EaPhoneVerification**](EaPhoneVerification.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startPhoneVerification**
> EaSuccess startPhoneVerification(eaPhoneVerificationInput)

Verify a phone number

### Example 
```dart
import 'package:edropin_accountsapi/api.dart';
// TODO Configure API key authorization: Authorization
//edropin_accountsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: ClientKey
//edropin_accountsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EaUtilitiesApi();
var eaPhoneVerificationInput = new EaPhoneVerificationInput(); // EaPhoneVerificationInput | Phone number for verification

try { 
    var result = api_instance.startPhoneVerification(eaPhoneVerificationInput);
    print(result);
} catch (e) {
    print("Exception when calling EaUtilitiesApi->startPhoneVerification: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eaPhoneVerificationInput** | [**EaPhoneVerificationInput**](EaPhoneVerificationInput.md)| Phone number for verification | 

### Return type

[**EaSuccess**](EaSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

