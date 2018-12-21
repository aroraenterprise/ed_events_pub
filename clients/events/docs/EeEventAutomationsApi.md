# edropin_eventsapi.api.EeEventAutomationsApi

## Load the API package
```dart
import 'package:edropin_eventsapi/api.dart';
```

All URIs are relative to *https://events-dot-edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addEventAutomation**](EeEventAutomationsApi.md#addEventAutomation) | **POST** /events/{eventId}/automations | Add an automation to an event
[**deleteEventAutomation**](EeEventAutomationsApi.md#deleteEventAutomation) | **DELETE** /automations/{automationId} | Delete an existing Automation
[**getEventAutomation**](EeEventAutomationsApi.md#getEventAutomation) | **GET** /automations/{automationId} | Get an Automation
[**listAllEventAutomations**](EeEventAutomationsApi.md#listAllEventAutomations) | **GET** /events/{eventId}/automations | List all event Automations
[**triggerEventAutomation**](EeEventAutomationsApi.md#triggerEventAutomation) | **POST** /automations/{triggerType}/trigger | Pub sub to trigger an event automation
[**updateEventAutomation**](EeEventAutomationsApi.md#updateEventAutomation) | **PUT** /automations/{automationId} | Update Automation to event


# **addEventAutomation**
> EeEventAutomation addEventAutomation(eventId, eeEventAutomationUpdate)

Add an automation to an event

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

var api_instance = new EeEventAutomationsApi();
var eventId = eventId_example; // String | Event Id
var eeEventAutomationUpdate = new EeEventAutomationUpdate(); // EeEventAutomationUpdate | Automation object to be created

try { 
    var result = api_instance.addEventAutomation(eventId, eeEventAutomationUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAutomationsApi->addEventAutomation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]
 **eeEventAutomationUpdate** | [**EeEventAutomationUpdate**](EeEventAutomationUpdate.md)| Automation object to be created | 

### Return type

[**EeEventAutomation**](EeEventAutomation.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEventAutomation**
> EeSuccess deleteEventAutomation(automationId)

Delete an existing Automation

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

var api_instance = new EeEventAutomationsApi();
var automationId = automationId_example; // String | Automation Id

try { 
    var result = api_instance.deleteEventAutomation(automationId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAutomationsApi->deleteEventAutomation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **automationId** | **String**| Automation Id | [default to null]

### Return type

[**EeSuccess**](EeSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventAutomation**
> EeEventAutomation getEventAutomation(automationId)

Get an Automation

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

var api_instance = new EeEventAutomationsApi();
var automationId = automationId_example; // String | Automation Id

try { 
    var result = api_instance.getEventAutomation(automationId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAutomationsApi->getEventAutomation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **automationId** | **String**| Automation Id | [default to null]

### Return type

[**EeEventAutomation**](EeEventAutomation.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllEventAutomations**
> EePagedEventAutomation listAllEventAutomations(eventId, cursor, limit)

List all event Automations

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

var api_instance = new EeEventAutomationsApi();
var eventId = eventId_example; // String | Event Id
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.listAllEventAutomations(eventId, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAutomationsApi->listAllEventAutomations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EePagedEventAutomation**](EePagedEventAutomation.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerEventAutomation**
> String triggerEventAutomation(triggerType, apiKey, eePubSubMessage)

Pub sub to trigger an event automation

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

var api_instance = new EeEventAutomationsApi();
var triggerType = triggerType_example; // String | 
var apiKey = apiKey_example; // String | 
var eePubSubMessage = new EePubSubMessage(); // EePubSubMessage | Base64 encoded message

try { 
    var result = api_instance.triggerEventAutomation(triggerType, apiKey, eePubSubMessage);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAutomationsApi->triggerEventAutomation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **triggerType** | **String**|  | [default to null]
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

# **updateEventAutomation**
> EeEventAutomation updateEventAutomation(automationId, eeEventAutomationUpdate)

Update Automation to event

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

var api_instance = new EeEventAutomationsApi();
var automationId = automationId_example; // String | Automation Id
var eeEventAutomationUpdate = new EeEventAutomationUpdate(); // EeEventAutomationUpdate | Automation to update

try { 
    var result = api_instance.updateEventAutomation(automationId, eeEventAutomationUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAutomationsApi->updateEventAutomation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **automationId** | **String**| Automation Id | [default to null]
 **eeEventAutomationUpdate** | [**EeEventAutomationUpdate**](EeEventAutomationUpdate.md)| Automation to update | 

### Return type

[**EeEventAutomation**](EeEventAutomation.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

