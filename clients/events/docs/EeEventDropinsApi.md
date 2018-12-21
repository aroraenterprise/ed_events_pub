# edropin_eventsapi.api.EeEventDropinsApi

## Load the API package
```dart
import 'package:edropin_eventsapi/api.dart';
```

All URIs are relative to *https://events-dot-edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDropinToEventTicket**](EeEventDropinsApi.md#addDropinToEventTicket) | **PUT** /tickets/{ticketId}/dropins/{dropinId} | Add dropin to ticket
[**addEventDropin**](EeEventDropinsApi.md#addEventDropin) | **POST** /events/{eventId}/dropins | Add a dropin to an event
[**assignDropinToAttendee**](EeEventDropinsApi.md#assignDropinToAttendee) | **PUT** /dropins/{dropinId}/attendees/{attendeeId} | Assign a dropin to attendee
[**deleteEventDropin**](EeEventDropinsApi.md#deleteEventDropin) | **DELETE** /dropins/{dropinId} | Delete an existing dropin
[**getEventDropin**](EeEventDropinsApi.md#getEventDropin) | **GET** /dropins/{dropinId} | Get a dropin
[**listAllEventDropins**](EeEventDropinsApi.md#listAllEventDropins) | **GET** /events/{eventId}/dropins | List all event dropins
[**removeDropinFromAttendee**](EeEventDropinsApi.md#removeDropinFromAttendee) | **DELETE** /dropins/{dropinId}/attendees/{attendeeId} | Remove an assigned dropin from attendee
[**removeDropinFromTicket**](EeEventDropinsApi.md#removeDropinFromTicket) | **DELETE** /tickets/{ticketId}/dropins/{dropinId} | Remove dropin from ticket
[**searchAttendeesAssignedToDropin**](EeEventDropinsApi.md#searchAttendeesAssignedToDropin) | **GET** /dropins/{dropinId}/attendees | List all attendees assigned to this dropin
[**searchDropinsAssignedToTicket**](EeEventDropinsApi.md#searchDropinsAssignedToTicket) | **GET** /tickets/{ticketId}/dropins | List all dropins assigned to this ticket
[**updateEventDropin**](EeEventDropinsApi.md#updateEventDropin) | **PUT** /dropins/{dropinId} | Update dropin to event


# **addDropinToEventTicket**
> InlineResponse200 addDropinToEventTicket(ticketId, dropinId)

Add dropin to ticket

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

var api_instance = new EeEventDropinsApi();
var ticketId = ticketId_example; // String | Ticket Id
var dropinId = dropinId_example; // String | Dropin Id

try { 
    var result = api_instance.addDropinToEventTicket(ticketId, dropinId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventDropinsApi->addDropinToEventTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| Ticket Id | [default to null]
 **dropinId** | **String**| Dropin Id | [default to null]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addEventDropin**
> EeEventDropin addEventDropin(eventId, eeEventDropinUpdate)

Add a dropin to an event

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

var api_instance = new EeEventDropinsApi();
var eventId = eventId_example; // String | Event Id
var eeEventDropinUpdate = new EeEventDropinUpdate(); // EeEventDropinUpdate | Dropin object to be created

try { 
    var result = api_instance.addEventDropin(eventId, eeEventDropinUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EeEventDropinsApi->addEventDropin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]
 **eeEventDropinUpdate** | [**EeEventDropinUpdate**](EeEventDropinUpdate.md)| Dropin object to be created | 

### Return type

[**EeEventDropin**](EeEventDropin.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assignDropinToAttendee**
> EeEventAttendee assignDropinToAttendee(dropinId, attendeeId)

Assign a dropin to attendee

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

var api_instance = new EeEventDropinsApi();
var dropinId = dropinId_example; // String | Dropin Id
var attendeeId = attendeeId_example; // String | Attendee Id

try { 
    var result = api_instance.assignDropinToAttendee(dropinId, attendeeId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventDropinsApi->assignDropinToAttendee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dropinId** | **String**| Dropin Id | [default to null]
 **attendeeId** | **String**| Attendee Id | [default to null]

### Return type

[**EeEventAttendee**](EeEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEventDropin**
> EeSuccess deleteEventDropin(dropinId)

Delete an existing dropin

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

var api_instance = new EeEventDropinsApi();
var dropinId = dropinId_example; // String | Dropin Id

try { 
    var result = api_instance.deleteEventDropin(dropinId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventDropinsApi->deleteEventDropin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dropinId** | **String**| Dropin Id | [default to null]

### Return type

[**EeSuccess**](EeSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventDropin**
> EeEventDropin getEventDropin(dropinId)

Get a dropin

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

var api_instance = new EeEventDropinsApi();
var dropinId = dropinId_example; // String | Dropin Id

try { 
    var result = api_instance.getEventDropin(dropinId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventDropinsApi->getEventDropin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dropinId** | **String**| Dropin Id | [default to null]

### Return type

[**EeEventDropin**](EeEventDropin.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllEventDropins**
> EePagedEventDropin listAllEventDropins(eventId, q, facets, cursor, limit)

List all event dropins

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

var api_instance = new EeEventDropinsApi();
var eventId = eventId_example; // String | Event Id
var q = q_example; // String | 
var facets = facets_example; // String | e.g [profiledIds:edropin],[profileIds:agdontario]
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.listAllEventDropins(eventId, q, facets, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventDropinsApi->listAllEventDropins: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]
 **q** | **String**|  | [optional] [default to null]
 **facets** | **String**| e.g [profiledIds:edropin],[profileIds:agdontario] | [optional] [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EePagedEventDropin**](EePagedEventDropin.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeDropinFromAttendee**
> EeSuccess removeDropinFromAttendee(dropinId, attendeeId)

Remove an assigned dropin from attendee

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

var api_instance = new EeEventDropinsApi();
var dropinId = dropinId_example; // String | Dropin Id
var attendeeId = attendeeId_example; // String | Attendee Id

try { 
    var result = api_instance.removeDropinFromAttendee(dropinId, attendeeId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventDropinsApi->removeDropinFromAttendee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dropinId** | **String**| Dropin Id | [default to null]
 **attendeeId** | **String**| Attendee Id | [default to null]

### Return type

[**EeSuccess**](EeSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeDropinFromTicket**
> InlineResponse200 removeDropinFromTicket(ticketId, dropinId)

Remove dropin from ticket

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

var api_instance = new EeEventDropinsApi();
var ticketId = ticketId_example; // String | Ticket Id
var dropinId = dropinId_example; // String | Dropin Id

try { 
    var result = api_instance.removeDropinFromTicket(ticketId, dropinId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventDropinsApi->removeDropinFromTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| Ticket Id | [default to null]
 **dropinId** | **String**| Dropin Id | [default to null]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAttendeesAssignedToDropin**
> EePagedEventAttendee searchAttendeesAssignedToDropin(dropinId, isAssigned, q, facets, cursor, limit)

List all attendees assigned to this dropin

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

var api_instance = new EeEventDropinsApi();
var dropinId = dropinId_example; // String | Dropin Id
var isAssigned = true; // bool | If set will only give back attendees that have been assigned to this dropin otherwise gives back all possible attendees that can be assigned this dropin
var q = q_example; // String | 
var facets = facets_example; // String | e.g [profiledIds:edropin],[profileIds:agdontario]
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.searchAttendeesAssignedToDropin(dropinId, isAssigned, q, facets, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventDropinsApi->searchAttendeesAssignedToDropin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dropinId** | **String**| Dropin Id | [default to null]
 **isAssigned** | **bool**| If set will only give back attendees that have been assigned to this dropin otherwise gives back all possible attendees that can be assigned this dropin | [optional] [default to null]
 **q** | **String**|  | [optional] [default to null]
 **facets** | **String**| e.g [profiledIds:edropin],[profileIds:agdontario] | [optional] [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EePagedEventAttendee**](EePagedEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchDropinsAssignedToTicket**
> EePagedEventDropin searchDropinsAssignedToTicket(ticketId, q, facets, cursor, limit)

List all dropins assigned to this ticket

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

var api_instance = new EeEventDropinsApi();
var ticketId = ticketId_example; // String | Ticket Id
var q = q_example; // String | 
var facets = facets_example; // String | e.g [profiledIds:edropin],[profileIds:agdontario]
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.searchDropinsAssignedToTicket(ticketId, q, facets, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventDropinsApi->searchDropinsAssignedToTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| Ticket Id | [default to null]
 **q** | **String**|  | [optional] [default to null]
 **facets** | **String**| e.g [profiledIds:edropin],[profileIds:agdontario] | [optional] [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EePagedEventDropin**](EePagedEventDropin.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEventDropin**
> EeEventDropin updateEventDropin(dropinId, eeEventDropinUpdate)

Update dropin to event

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

var api_instance = new EeEventDropinsApi();
var dropinId = dropinId_example; // String | Dropin Id
var eeEventDropinUpdate = new EeEventDropinUpdate(); // EeEventDropinUpdate | Ticket to update

try { 
    var result = api_instance.updateEventDropin(dropinId, eeEventDropinUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EeEventDropinsApi->updateEventDropin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dropinId** | **String**| Dropin Id | [default to null]
 **eeEventDropinUpdate** | [**EeEventDropinUpdate**](EeEventDropinUpdate.md)| Ticket to update | 

### Return type

[**EeEventDropin**](EeEventDropin.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

