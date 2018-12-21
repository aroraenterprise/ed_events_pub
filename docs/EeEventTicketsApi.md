# edropin_eventsapi.api.EeEventTicketsApi

## Load the API package
```dart
import 'package:edropin_eventsapi/api.dart';
```

All URIs are relative to *https://events-dot-edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addEventTicket**](EeEventTicketsApi.md#addEventTicket) | **POST** /events/{eventId}/tickets | Add Ticket to event
[**deleteEventTicket**](EeEventTicketsApi.md#deleteEventTicket) | **DELETE** /tickets/{ticketId} | Delete an existing Event
[**getEventTicket**](EeEventTicketsApi.md#getEventTicket) | **GET** /tickets/{ticketId} | Get a ticket from the directory
[**listEventTickets**](EeEventTicketsApi.md#listEventTickets) | **GET** /events/{eventId}/tickets | Get Tickets to event
[**updateEventPrimaryTicket**](EeEventTicketsApi.md#updateEventPrimaryTicket) | **PUT** /tickets/{ticketId}/set-primary/{currencyCode} | Update an existing Event
[**updateEventTicket**](EeEventTicketsApi.md#updateEventTicket) | **PUT** /tickets/{ticketId} | Upsert Ticket to event (One Ticket per currency)


# **addEventTicket**
> EeTicket addEventTicket(eventId, eeTicketUpdate, setAsEventPrice)

Add Ticket to event

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

var api_instance = new EeEventTicketsApi();
var eventId = eventId_example; // String | Event Id
var eeTicketUpdate = new EeTicketUpdate(); // EeTicketUpdate | Ticket to add
var setAsEventPrice = setAsEventPrice_example; // String | Make ticket price the event price

try { 
    var result = api_instance.addEventTicket(eventId, eeTicketUpdate, setAsEventPrice);
    print(result);
} catch (e) {
    print("Exception when calling EeEventTicketsApi->addEventTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]
 **eeTicketUpdate** | [**EeTicketUpdate**](EeTicketUpdate.md)| Ticket to add | 
 **setAsEventPrice** | **String**| Make ticket price the event price | [optional] [default to null]

### Return type

[**EeTicket**](EeTicket.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEventTicket**
> deleteEventTicket(ticketId)

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

var api_instance = new EeEventTicketsApi();
var ticketId = ticketId_example; // String | Ticket Id

try { 
    api_instance.deleteEventTicket(ticketId);
} catch (e) {
    print("Exception when calling EeEventTicketsApi->deleteEventTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| Ticket Id | [default to null]

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventTicket**
> EeTicket getEventTicket(ticketId)

Get a ticket from the directory

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

var api_instance = new EeEventTicketsApi();
var ticketId = ticketId_example; // String | Ticket Id

try { 
    var result = api_instance.getEventTicket(ticketId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventTicketsApi->getEventTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| Ticket Id | [default to null]

### Return type

[**EeTicket**](EeTicket.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEventTickets**
> EePagedTicket listEventTickets(eventId, cursor, limit)

Get Tickets to event

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

var api_instance = new EeEventTicketsApi();
var eventId = eventId_example; // String | Event Id
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.listEventTickets(eventId, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventTicketsApi->listEventTickets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EePagedTicket**](EePagedTicket.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEventPrimaryTicket**
> EeEvent updateEventPrimaryTicket(ticketId, currencyCode)

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

var api_instance = new EeEventTicketsApi();
var ticketId = ticketId_example; // String | Ticket Id
var currencyCode = currencyCode_example; // String | Currencey code

try { 
    var result = api_instance.updateEventPrimaryTicket(ticketId, currencyCode);
    print(result);
} catch (e) {
    print("Exception when calling EeEventTicketsApi->updateEventPrimaryTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| Ticket Id | [default to null]
 **currencyCode** | **String**| Currencey code | [default to null]

### Return type

[**EeEvent**](EeEvent.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEventTicket**
> EeTicket updateEventTicket(ticketId, eeTicketUpdate, setAsEventPrice)

Upsert Ticket to event (One Ticket per currency)

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

var api_instance = new EeEventTicketsApi();
var ticketId = ticketId_example; // String | Ticket Id
var eeTicketUpdate = new EeTicketUpdate(); // EeTicketUpdate | Ticket to update
var setAsEventPrice = setAsEventPrice_example; // String | Make ticket price the event price

try { 
    var result = api_instance.updateEventTicket(ticketId, eeTicketUpdate, setAsEventPrice);
    print(result);
} catch (e) {
    print("Exception when calling EeEventTicketsApi->updateEventTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| Ticket Id | [default to null]
 **eeTicketUpdate** | [**EeTicketUpdate**](EeTicketUpdate.md)| Ticket to update | 
 **setAsEventPrice** | **String**| Make ticket price the event price | [optional] [default to null]

### Return type

[**EeTicket**](EeTicket.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

