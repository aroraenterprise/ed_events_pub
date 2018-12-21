# edropin_accountsapi.api.EaProfileTagsApi

## Load the API package
```dart
import 'package:edropin_accountsapi/api.dart';
```

All URIs are relative to *https://edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listTagRequests**](EaProfileTagsApi.md#listTagRequests) | **GET** /profiles/{profileId}/profile-tags | Paginate over all tag requests for the profile
[**removeProfileTagRequest**](EaProfileTagsApi.md#removeProfileTagRequest) | **DELETE** /profile-tags/{profileTagId} | Remove a profile tag request
[**respondToProfileTagRequest**](EaProfileTagsApi.md#respondToProfileTagRequest) | **PUT** /profile-tags/{profileTagId} | Accept or decline a profile tag request
[**upsertProfileTagRequest**](EaProfileTagsApi.md#upsertProfileTagRequest) | **POST** /profiles/{profileId}/profile-tags | Request to tag a profile in an entity e.g. Event, Course, etc.


# **listTagRequests**
> EaPagedTagRequest listTagRequests(profileId, cursor, limit)

Paginate over all tag requests for the profile

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

var api_instance = new EaProfileTagsApi();
var profileId = profileId_example; // String | Profile Id
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.listTagRequests(profileId, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EaProfileTagsApi->listTagRequests: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EaPagedTagRequest**](EaPagedTagRequest.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeProfileTagRequest**
> EaSuccess removeProfileTagRequest(profileTagId)

Remove a profile tag request

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
// TODO Configure API key authorization: ServiceKey
//edropin_accountsapi.api.Configuration.apiKey{'X-Service-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'X-Service-Key'} = "Bearer";

var api_instance = new EaProfileTagsApi();
var profileTagId = profileTagId_example; // String | Profile Tag Id

try { 
    var result = api_instance.removeProfileTagRequest(profileTagId);
    print(result);
} catch (e) {
    print("Exception when calling EaProfileTagsApi->removeProfileTagRequest: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileTagId** | **String**| Profile Tag Id | [default to null]

### Return type

[**EaSuccess**](EaSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey), [ServiceKey](../README.md#ServiceKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **respondToProfileTagRequest**
> EaTagRequest respondToProfileTagRequest(profileTagId, eaTagRespond)

Accept or decline a profile tag request

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

var api_instance = new EaProfileTagsApi();
var profileTagId = profileTagId_example; // String | Profile Tag Id
var eaTagRespond = new EaTagRespond(); // EaTagRespond | Accept or decline tagging request

try { 
    var result = api_instance.respondToProfileTagRequest(profileTagId, eaTagRespond);
    print(result);
} catch (e) {
    print("Exception when calling EaProfileTagsApi->respondToProfileTagRequest: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileTagId** | **String**| Profile Tag Id | [default to null]
 **eaTagRespond** | [**EaTagRespond**](EaTagRespond.md)| Accept or decline tagging request | 

### Return type

[**EaTagRequest**](EaTagRequest.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertProfileTagRequest**
> EaTagRequest upsertProfileTagRequest(profileId, eaTagRequestCreate)

Request to tag a profile in an entity e.g. Event, Course, etc.

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
// TODO Configure API key authorization: ServiceKey
//edropin_accountsapi.api.Configuration.apiKey{'X-Service-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'X-Service-Key'} = "Bearer";

var api_instance = new EaProfileTagsApi();
var profileId = profileId_example; // String | Profile Id
var eaTagRequestCreate = new EaTagRequestCreate(); // EaTagRequestCreate | Model to create/update a profile tag request

try { 
    var result = api_instance.upsertProfileTagRequest(profileId, eaTagRequestCreate);
    print(result);
} catch (e) {
    print("Exception when calling EaProfileTagsApi->upsertProfileTagRequest: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | [default to null]
 **eaTagRequestCreate** | [**EaTagRequestCreate**](EaTagRequestCreate.md)| Model to create/update a profile tag request | 

### Return type

[**EaTagRequest**](EaTagRequest.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey), [ServiceKey](../README.md#ServiceKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

