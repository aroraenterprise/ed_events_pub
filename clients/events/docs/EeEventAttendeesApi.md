# edropin_eventsapi.api.EeEventAttendeesApi

## Load the API package
```dart
import 'package:edropin_eventsapi/api.dart';
```

All URIs are relative to *https://events-dot-edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAttendee**](EeEventAttendeesApi.md#addAttendee) | **POST** /tickets/{ticketId}/attendees | Add an Attendee to an event
[**clearAttendeeDropins**](EeEventAttendeesApi.md#clearAttendeeDropins) | **POST** /attendees/clear-dropins | Clear dropins from attendees
[**createAttendeesForTicketSale**](EeEventAttendeesApi.md#createAttendeesForTicketSale) | **POST** /attendees/ticketsale | Pub sub to generate claims for event tickets sold
[**deactivateAttendeesForTicketRefund**](EeEventAttendeesApi.md#deactivateAttendeesForTicketRefund) | **POST** /attendees/ticketrefund | Pub sub to cancel tickets for refunded order items
[**deleteEventAttendee**](EeEventAttendeesApi.md#deleteEventAttendee) | **DELETE** /attendees/{attendeeId} | Delete an existing Event Attendee
[**exportAttendees**](EeEventAttendeesApi.md#exportAttendees) | **GET** /events/{eventId}/attendees/export | List all event attendees
[**getAttendee**](EeEventAttendeesApi.md#getAttendee) | **GET** /attendees/{attendeeId} | Get an attendee
[**getAttendeeClaimLink**](EeEventAttendeesApi.md#getAttendeeClaimLink) | **GET** /attendees/{attendeeId}/claims | Get an attendee claim
[**getAttendeesByClaim**](EeEventAttendeesApi.md#getAttendeesByClaim) | **GET** /attendees/claim | Get all attendee claims associated with the code in query
[**listAllAttendees**](EeEventAttendeesApi.md#listAllAttendees) | **GET** /events/{eventId}/attendees | List all event attendees
[**listUserAttendees**](EeEventAttendeesApi.md#listUserAttendees) | **GET** /attendees | Search user attendees
[**sendAttendeeClaimEmail**](EeEventAttendeesApi.md#sendAttendeeClaimEmail) | **POST** /attendees/{attendeeId}/claims | Send Claim email
[**sendAttendeeNotification**](EeEventAttendeesApi.md#sendAttendeeNotification) | **POST** /attendees/message | Send a message to attendees
[**transferAttendees**](EeEventAttendeesApi.md#transferAttendees) | **POST** /attendees/transfer | Send Claim email
[**updateAttendee**](EeEventAttendeesApi.md#updateAttendee) | **PUT** /attendees/{attendeeId} | Update an attendee
[**updateAttendeesByClaim**](EeEventAttendeesApi.md#updateAttendeesByClaim) | **PUT** /attendees/claim | Update attendees using claim code


# **addAttendee**
> EeEventAttendee addAttendee(ticketId, eeEventAttendeeUpdate)

Add an Attendee to an event

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

var api_instance = new EeEventAttendeesApi();
var ticketId = ticketId_example; // String | Ticket Id
var eeEventAttendeeUpdate = new EeEventAttendeeUpdate(); // EeEventAttendeeUpdate | Attendee object to be created

try { 
    var result = api_instance.addAttendee(ticketId, eeEventAttendeeUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->addAttendee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| Ticket Id | [default to null]
 **eeEventAttendeeUpdate** | [**EeEventAttendeeUpdate**](EeEventAttendeeUpdate.md)| Attendee object to be created | 

### Return type

[**EeEventAttendee**](EeEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearAttendeeDropins**
> EePagedEventAttendee clearAttendeeDropins(requestBody)

Clear dropins from attendees

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

var api_instance = new EeEventAttendeesApi();
var requestBody = [new List&lt;String&gt;()]; // List<String> | Attendee Ids

try { 
    var result = api_instance.clearAttendeeDropins(requestBody);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->clearAttendeeDropins: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List&lt;String&gt;**](List.md)| Attendee Ids | 

### Return type

[**EePagedEventAttendee**](EePagedEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAttendeesForTicketSale**
> String createAttendeesForTicketSale(apiKey, eePubSubMessage)

Pub sub to generate claims for event tickets sold

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

var api_instance = new EeEventAttendeesApi();
var apiKey = apiKey_example; // String | 
var eePubSubMessage = new EePubSubMessage(); // EePubSubMessage | Base64 encoded message

try { 
    var result = api_instance.createAttendeesForTicketSale(apiKey, eePubSubMessage);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->createAttendeesForTicketSale: $e\n");
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

# **deactivateAttendeesForTicketRefund**
> String deactivateAttendeesForTicketRefund(apiKey, eePubSubMessage)

Pub sub to cancel tickets for refunded order items

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

var api_instance = new EeEventAttendeesApi();
var apiKey = apiKey_example; // String | 
var eePubSubMessage = new EePubSubMessage(); // EePubSubMessage | Base64 encoded message

try { 
    var result = api_instance.deactivateAttendeesForTicketRefund(apiKey, eePubSubMessage);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->deactivateAttendeesForTicketRefund: $e\n");
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

# **deleteEventAttendee**
> deleteEventAttendee(attendeeId)

Delete an existing Event Attendee

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

var api_instance = new EeEventAttendeesApi();
var attendeeId = attendeeId_example; // String | Attendee Id

try { 
    api_instance.deleteEventAttendee(attendeeId);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->deleteEventAttendee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attendeeId** | **String**| Attendee Id | [default to null]

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportAttendees**
> EeCsv exportAttendees(eventId, facets)

List all event attendees

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

var api_instance = new EeEventAttendeesApi();
var eventId = eventId_example; // String | Event Id
var facets = facets_example; // String | e.g [profiledIds:edropin],[profileIds:agdontario]

try { 
    var result = api_instance.exportAttendees(eventId, facets);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->exportAttendees: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]
 **facets** | **String**| e.g [profiledIds:edropin],[profileIds:agdontario] | [optional] [default to null]

### Return type

[**EeCsv**](EeCsv.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttendee**
> EeEventAttendee getAttendee(attendeeId)

Get an attendee

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

var api_instance = new EeEventAttendeesApi();
var attendeeId = attendeeId_example; // String | Attendee Id

try { 
    var result = api_instance.getAttendee(attendeeId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->getAttendee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attendeeId** | **String**| Attendee Id | [default to null]

### Return type

[**EeEventAttendee**](EeEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttendeeClaimLink**
> InlineResponse2001 getAttendeeClaimLink(attendeeId)

Get an attendee claim

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

var api_instance = new EeEventAttendeesApi();
var attendeeId = attendeeId_example; // String | Attendee Id

try { 
    var result = api_instance.getAttendeeClaimLink(attendeeId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->getAttendeeClaimLink: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attendeeId** | **String**| Attendee Id | [default to null]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttendeesByClaim**
> EePagedEventAttendee getAttendeesByClaim(code)

Get all attendee claims associated with the code in query

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

var api_instance = new EeEventAttendeesApi();
var code = code_example; // String | 

try { 
    var result = api_instance.getAttendeesByClaim(code);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->getAttendeesByClaim: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**|  | [default to null]

### Return type

[**EePagedEventAttendee**](EePagedEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllAttendees**
> EePagedEventAttendee listAllAttendees(eventId, q, facets, cursor, limit)

List all event attendees

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

var api_instance = new EeEventAttendeesApi();
var eventId = eventId_example; // String | Event Id
var q = q_example; // String | 
var facets = facets_example; // String | e.g [profiledIds:edropin],[profileIds:agdontario]
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.listAllAttendees(eventId, q, facets, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->listAllAttendees: $e\n");
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

[**EePagedEventAttendee**](EePagedEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserAttendees**
> EePagedEventAttendee listUserAttendees(q, facets, cursor, limit)

Search user attendees

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

var api_instance = new EeEventAttendeesApi();
var q = q_example; // String | 
var facets = facets_example; // String | e.g [profiledIds:edropin],[profileIds:agdontario]
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.listUserAttendees(q, facets, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->listUserAttendees: $e\n");
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

[**EePagedEventAttendee**](EePagedEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendAttendeeClaimEmail**
> EeSuccess sendAttendeeClaimEmail(attendeeId, inlineObject)

Send Claim email

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

var api_instance = new EeEventAttendeesApi();
var attendeeId = attendeeId_example; // String | Attendee Id
var inlineObject = new InlineObject(); // InlineObject | 

try { 
    var result = api_instance.sendAttendeeClaimEmail(attendeeId, inlineObject);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->sendAttendeeClaimEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attendeeId** | **String**| Attendee Id | [default to null]
 **inlineObject** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

[**EeSuccess**](EeSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendAttendeeNotification**
> EeSuccess sendAttendeeNotification(eeAttendeeNotification)

Send a message to attendees

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

var api_instance = new EeEventAttendeesApi();
var eeAttendeeNotification = new EeAttendeeNotification(); // EeAttendeeNotification | Attendee Notification properties

try { 
    var result = api_instance.sendAttendeeNotification(eeAttendeeNotification);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->sendAttendeeNotification: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eeAttendeeNotification** | [**EeAttendeeNotification**](EeAttendeeNotification.md)| Attendee Notification properties | 

### Return type

[**EeSuccess**](EeSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transferAttendees**
> EePagedEventAttendee transferAttendees(eeEventAttendeeTransfer)

Send Claim email

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

var api_instance = new EeEventAttendeesApi();
var eeEventAttendeeTransfer = new EeEventAttendeeTransfer(); // EeEventAttendeeTransfer | Attendee transfer properties

try { 
    var result = api_instance.transferAttendees(eeEventAttendeeTransfer);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->transferAttendees: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eeEventAttendeeTransfer** | [**EeEventAttendeeTransfer**](EeEventAttendeeTransfer.md)| Attendee transfer properties | 

### Return type

[**EePagedEventAttendee**](EePagedEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAttendee**
> EeEventAttendee updateAttendee(attendeeId, eeEventAttendeeUpdate)

Update an attendee

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

var api_instance = new EeEventAttendeesApi();
var attendeeId = attendeeId_example; // String | Attendee Id
var eeEventAttendeeUpdate = new EeEventAttendeeUpdate(); // EeEventAttendeeUpdate | Attendee object that needs to be updated

try { 
    var result = api_instance.updateAttendee(attendeeId, eeEventAttendeeUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->updateAttendee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attendeeId** | **String**| Attendee Id | [default to null]
 **eeEventAttendeeUpdate** | [**EeEventAttendeeUpdate**](EeEventAttendeeUpdate.md)| Attendee object that needs to be updated | 

### Return type

[**EeEventAttendee**](EeEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAttendeesByClaim**
> EePagedEventAttendee updateAttendeesByClaim(code, eeEventAttendeeClaimUpdate)

Update attendees using claim code

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

var api_instance = new EeEventAttendeesApi();
var code = code_example; // String | 
var eeEventAttendeeClaimUpdate = new EeEventAttendeeClaimUpdate(); // EeEventAttendeeClaimUpdate | Attendee objects that needs to be updated

try { 
    var result = api_instance.updateAttendeesByClaim(code, eeEventAttendeeClaimUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EeEventAttendeesApi->updateAttendeesByClaim: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**|  | [default to null]
 **eeEventAttendeeClaimUpdate** | [**EeEventAttendeeClaimUpdate**](EeEventAttendeeClaimUpdate.md)| Attendee objects that needs to be updated | 

### Return type

[**EePagedEventAttendee**](EePagedEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

