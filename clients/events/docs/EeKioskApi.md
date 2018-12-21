# edropin_eventsapi.api.EeKioskApi

## Load the API package
```dart
import 'package:edropin_eventsapi/api.dart';
```

All URIs are relative to *https://events-dot-edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateKiosk**](EeKioskApi.md#activateKiosk) | **POST** /kiosks | Activate kiosk [used by kiosk to get its unique id]
[**deactivateKiosk**](EeKioskApi.md#deactivateKiosk) | **DELETE** /kiosks | Deactivate kiosk
[**getKiosk**](EeKioskApi.md#getKiosk) | **GET** /kiosks/{kioskId} | Get a kiosk
[**linkKiosk**](EeKioskApi.md#linkKiosk) | **PUT** /kiosks/{kioskId} | Link a kiosk to my account
[**listAllKiosks**](EeKioskApi.md#listAllKiosks) | **GET** /kiosks | List all user&#39;s kiosks
[**removeKioskDropin**](EeKioskApi.md#removeKioskDropin) | **DELETE** /kiosks/{kioskId} | Remove kiosk dropin
[**unlinkKiosk**](EeKioskApi.md#unlinkKiosk) | **DELETE** /kiosks/{kioskId}/unlink | Unlink a kiosk


# **activateKiosk**
> EeKiosk activateKiosk()

Activate kiosk [used by kiosk to get its unique id]

### Example 
```dart
import 'package:edropin_eventsapi/api.dart';
// TODO Configure API key authorization: Authorization
//edropin_eventsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: ClientKey
//edropin_eventsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EeKioskApi();

try { 
    var result = api_instance.activateKiosk();
    print(result);
} catch (e) {
    print("Exception when calling EeKioskApi->activateKiosk: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EeKiosk**](EeKiosk.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deactivateKiosk**
> EeSuccess deactivateKiosk()

Deactivate kiosk

### Example 
```dart
import 'package:edropin_eventsapi/api.dart';
// TODO Configure API key authorization: Authorization
//edropin_eventsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: ClientKey
//edropin_eventsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EeKioskApi();

try { 
    var result = api_instance.deactivateKiosk();
    print(result);
} catch (e) {
    print("Exception when calling EeKioskApi->deactivateKiosk: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EeSuccess**](EeSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getKiosk**
> EeKiosk getKiosk(kioskId)

Get a kiosk

### Example 
```dart
import 'package:edropin_eventsapi/api.dart';
// TODO Configure API key authorization: Authorization
//edropin_eventsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: ClientKey
//edropin_eventsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EeKioskApi();
var kioskId = kioskId_example; // String | Kiosk Id

try { 
    var result = api_instance.getKiosk(kioskId);
    print(result);
} catch (e) {
    print("Exception when calling EeKioskApi->getKiosk: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskId** | **String**| Kiosk Id | [default to null]

### Return type

[**EeKiosk**](EeKiosk.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkKiosk**
> EeKiosk linkKiosk(kioskId, eeKioskUpdate)

Link a kiosk to my account

### Example 
```dart
import 'package:edropin_eventsapi/api.dart';
// TODO Configure API key authorization: Authorization
//edropin_eventsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: ClientKey
//edropin_eventsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EeKioskApi();
var kioskId = kioskId_example; // String | Kiosk Id
var eeKioskUpdate = new EeKioskUpdate(); // EeKioskUpdate | Kiosk object that needs to be linked

try { 
    var result = api_instance.linkKiosk(kioskId, eeKioskUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EeKioskApi->linkKiosk: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskId** | **String**| Kiosk Id | [default to null]
 **eeKioskUpdate** | [**EeKioskUpdate**](EeKioskUpdate.md)| Kiosk object that needs to be linked | [optional] 

### Return type

[**EeKiosk**](EeKiosk.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllKiosks**
> EePagedKiosk listAllKiosks(q, facets, cursor, limit)

List all user's kiosks

### Example 
```dart
import 'package:edropin_eventsapi/api.dart';
// TODO Configure API key authorization: Authorization
//edropin_eventsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: ClientKey
//edropin_eventsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EeKioskApi();
var q = q_example; // String | 
var facets = facets_example; // String | e.g [profiledIds:edropin],[profileIds:agdontario]
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.listAllKiosks(q, facets, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeKioskApi->listAllKiosks: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] [default to null]
 **facets** | **String**| e.g [profiledIds:edropin],[profileIds:agdontario] | [optional] [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EePagedKiosk**](EePagedKiosk.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeKioskDropin**
> EeKiosk removeKioskDropin(kioskId)

Remove kiosk dropin

### Example 
```dart
import 'package:edropin_eventsapi/api.dart';
// TODO Configure API key authorization: Authorization
//edropin_eventsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: ClientKey
//edropin_eventsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EeKioskApi();
var kioskId = kioskId_example; // String | Kiosk Id

try { 
    var result = api_instance.removeKioskDropin(kioskId);
    print(result);
} catch (e) {
    print("Exception when calling EeKioskApi->removeKioskDropin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskId** | **String**| Kiosk Id | [default to null]

### Return type

[**EeKiosk**](EeKiosk.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkKiosk**
> EeSuccess unlinkKiosk(kioskId)

Unlink a kiosk

### Example 
```dart
import 'package:edropin_eventsapi/api.dart';
// TODO Configure API key authorization: Authorization
//edropin_eventsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: ClientKey
//edropin_eventsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_eventsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EeKioskApi();
var kioskId = kioskId_example; // String | Kiosk Id

try { 
    var result = api_instance.unlinkKiosk(kioskId);
    print(result);
} catch (e) {
    print("Exception when calling EeKioskApi->unlinkKiosk: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kioskId** | **String**| Kiosk Id | [default to null]

### Return type

[**EeSuccess**](EeSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

