# edropin_eventsapi.api.EeEventTagsApi

## Load the API package
```dart
import 'package:edropin_eventsapi/api.dart';
```

All URIs are relative to *https://events-dot-edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listEventTags**](EeEventTagsApi.md#listEventTags) | **GET** /events/{eventId}/tags | Paginate tags linked to an event
[**removeEventTag**](EeEventTagsApi.md#removeEventTag) | **DELETE** /event-tags/{tagId} | Remove tag from event
[**searchTagsForEvent**](EeEventTagsApi.md#searchTagsForEvent) | **GET** /events/{eventId}/tags-search | Paginate tags linked to an event
[**updateEventTagStatus**](EeEventTagsApi.md#updateEventTagStatus) | **POST** /events/eventTagStatusUpdate | Pub sub to update event tag, accept or decline [used by service account]
[**upsertEventTag**](EeEventTagsApi.md#upsertEventTag) | **PUT** /events/{eventId}/tags/{profileId} | Create or update a tag in an event [will make tag request if new tag]


# **listEventTags**
> EePagedEventTag listEventTags(eventId, cursor, limit)

Paginate tags linked to an event

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

var api_instance = new EeEventTagsApi();
var eventId = eventId_example; // String | Event Id
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.listEventTags(eventId, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventTagsApi->listEventTags: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EePagedEventTag**](EePagedEventTag.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeEventTag**
> EeSuccess removeEventTag(tagId)

Remove tag from event

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

var api_instance = new EeEventTagsApi();
var tagId = tagId_example; // String | Tag Id

try { 
    var result = api_instance.removeEventTag(tagId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventTagsApi->removeEventTag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tagId** | **String**| Tag Id | [default to null]

### Return type

[**EeSuccess**](EeSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchTagsForEvent**
> EePagedEventTag searchTagsForEvent(eventId, q, cursor, limit)

Paginate tags linked to an event

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

var api_instance = new EeEventTagsApi();
var eventId = eventId_example; // String | Event Id
var q = q_example; // String | 
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.searchTagsForEvent(eventId, q, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventTagsApi->searchTagsForEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]
 **q** | **String**|  | [optional] [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EePagedEventTag**](EePagedEventTag.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEventTagStatus**
> String updateEventTagStatus(apiKey, eePubSubMessage)

Pub sub to update event tag, accept or decline [used by service account]

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

var api_instance = new EeEventTagsApi();
var apiKey = apiKey_example; // String | 
var eePubSubMessage = new EePubSubMessage(); // EePubSubMessage | Base64 encoded message

try { 
    var result = api_instance.updateEventTagStatus(apiKey, eePubSubMessage);
    print(result);
} catch (e) {
    print("Exception when calling EeEventTagsApi->updateEventTagStatus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiKey** | **String**|  | [default to null]
 **eePubSubMessage** | [**EePubSubMessage**](EePubSubMessage.md)| Base64 encoded message | 

### Return type

**String**

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertEventTag**
> EeEventTag upsertEventTag(eventId, profileId, eeEventTagUpsert)

Create or update a tag in an event [will make tag request if new tag]

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

var api_instance = new EeEventTagsApi();
var eventId = eventId_example; // String | Event Id
var profileId = profileId_example; // String | Profile Id
var eeEventTagUpsert = new EeEventTagUpsert(); // EeEventTagUpsert | Profile role to update

try { 
    var result = api_instance.upsertEventTag(eventId, profileId, eeEventTagUpsert);
    print(result);
} catch (e) {
    print("Exception when calling EeEventTagsApi->upsertEventTag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]
 **profileId** | **String**| Profile Id | [default to null]
 **eeEventTagUpsert** | [**EeEventTagUpsert**](EeEventTagUpsert.md)| Profile role to update | 

### Return type

[**EeEventTag**](EeEventTag.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

