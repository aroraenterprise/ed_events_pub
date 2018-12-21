# edropin_eventsapi.api.EeEventsApi

## Load the API package
```dart
import 'package:edropin_eventsapi/api.dart';
```

All URIs are relative to *https://events-dot-edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEvent**](EeEventsApi.md#createEvent) | **POST** /events | Create Event
[**deleteEvent**](EeEventsApi.md#deleteEvent) | **DELETE** /events/{eventId} | Delete an existing Event
[**getAllEvents**](EeEventsApi.md#getAllEvents) | **GET** /events | Get Events
[**getEvent**](EeEventsApi.md#getEvent) | **GET** /events/{eventId} | Get a Event from the directory
[**getEventCategories**](EeEventsApi.md#getEventCategories) | **GET** /events/categories | Get Event Categories
[**getMultipleEvents**](EeEventsApi.md#getMultipleEvents) | **GET** /events/get-multi | Get Multiple Events
[**searchEvent**](EeEventsApi.md#searchEvent) | **GET** /events/search | Search Events
[**updateEvent**](EeEventsApi.md#updateEvent) | **PUT** /events/{eventId} | Update an existing Event


# **createEvent**
> EeEvent createEvent(eeEventUpdate)

Create Event

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

var api_instance = new EeEventsApi();
var eeEventUpdate = new EeEventUpdate(); // EeEventUpdate | Event object that needs to be created

try { 
    var result = api_instance.createEvent(eeEventUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EeEventsApi->createEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eeEventUpdate** | [**EeEventUpdate**](EeEventUpdate.md)| Event object that needs to be created | 

### Return type

[**EeEvent**](EeEvent.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEvent**
> deleteEvent(eventId)

Delete an existing Event

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

var api_instance = new EeEventsApi();
var eventId = eventId_example; // String | Event Id

try { 
    api_instance.deleteEvent(eventId);
} catch (e) {
    print("Exception when calling EeEventsApi->deleteEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEvents**
> EePagedEvent getAllEvents(q, facets, searchCoords, filterTimestamp, cursor, limit)

Get Events

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

var api_instance = new EeEventsApi();
var q = q_example; // String | 
var facets = facets_example; // String | e.g [profiledIds:edropin],[profileIds:agdontario]
var searchCoords = []; // List<String> | Coordinates for search
var filterTimestamp = []; // List<int> | Filter by start and end time e.g. (starting after 1111 ending before 1234 = 1111,1234)
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.getAllEvents(q, facets, searchCoords, filterTimestamp, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventsApi->getAllEvents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] [default to null]
 **facets** | **String**| e.g [profiledIds:edropin],[profileIds:agdontario] | [optional] [default to null]
 **searchCoords** | [**List&lt;String&gt;**](String.md)| Coordinates for search | [optional] [default to []]
 **filterTimestamp** | [**List&lt;int&gt;**](int.md)| Filter by start and end time e.g. (starting after 1111 ending before 1234 &#x3D; 1111,1234) | [optional] [default to []]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EePagedEvent**](EePagedEvent.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvent**
> EeEvent getEvent(eventId, currencyCode)

Get a Event from the directory

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

var api_instance = new EeEventsApi();
var eventId = eventId_example; // String | Event Id
var currencyCode = currencyCode_example; // String | Currency Code to fetch event primary tickets from the store for sale

try { 
    var result = api_instance.getEvent(eventId, currencyCode);
    print(result);
} catch (e) {
    print("Exception when calling EeEventsApi->getEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]
 **currencyCode** | **String**| Currency Code to fetch event primary tickets from the store for sale | [optional] [default to null]

### Return type

[**EeEvent**](EeEvent.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventCategories**
> EeFacetSearch getEventCategories(q, cursor, limit)

Get Event Categories

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

var api_instance = new EeEventsApi();
var q = q_example; // String | 
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.getEventCategories(q, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventsApi->getEventCategories: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EeFacetSearch**](EeFacetSearch.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMultipleEvents**
> List<EeEvent> getMultipleEvents(eventIds)

Get Multiple Events

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

var api_instance = new EeEventsApi();
var eventIds = []; // List<String> | 

try { 
    var result = api_instance.getMultipleEvents(eventIds);
    print(result);
} catch (e) {
    print("Exception when calling EeEventsApi->getMultipleEvents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventIds** | [**List&lt;String&gt;**](String.md)|  | [optional] [default to []]

### Return type

[**List<EeEvent>**](EeEvent.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchEvent**
> EePagedEvent searchEvent(q, facets, searchCoords, filterTimestamp, currencyCode, cursor, limit)

Search Events

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

var api_instance = new EeEventsApi();
var q = q_example; // String | 
var facets = facets_example; // String | e.g [profiledIds:edropin],[profileIds:agdontario]
var searchCoords = []; // List<String> | Coordinates for search
var filterTimestamp = []; // List<int> | Filter by start and end time e.g. (starting after 1111 ending before 1234 = 1111,1234)
var currencyCode = currencyCode_example; // String | Currency Code to fetch event primary tickets from the store for sale
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.searchEvent(q, facets, searchCoords, filterTimestamp, currencyCode, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventsApi->searchEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] [default to null]
 **facets** | **String**| e.g [profiledIds:edropin],[profileIds:agdontario] | [optional] [default to null]
 **searchCoords** | [**List&lt;String&gt;**](String.md)| Coordinates for search | [optional] [default to []]
 **filterTimestamp** | [**List&lt;int&gt;**](int.md)| Filter by start and end time e.g. (starting after 1111 ending before 1234 &#x3D; 1111,1234) | [optional] [default to []]
 **currencyCode** | **String**| Currency Code to fetch event primary tickets from the store for sale | [optional] [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EePagedEvent**](EePagedEvent.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEvent**
> EeEvent updateEvent(eventId, eeEventUpdate)

Update an existing Event

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

var api_instance = new EeEventsApi();
var eventId = eventId_example; // String | Event Id
var eeEventUpdate = new EeEventUpdate(); // EeEventUpdate | Event object that needs to be updated

try { 
    var result = api_instance.updateEvent(eventId, eeEventUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EeEventsApi->updateEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]
 **eeEventUpdate** | [**EeEventUpdate**](EeEventUpdate.md)| Event object that needs to be updated | 

### Return type

[**EeEvent**](EeEvent.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

