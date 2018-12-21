# edropin_eventsapi.api.EeEventCertificatesApi

## Load the API package
```dart
import 'package:edropin_eventsapi/api.dart';
```

All URIs are relative to *https://events-dot-edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addEventCertificate**](EeEventCertificatesApi.md#addEventCertificate) | **POST** /events/{eventId}/certificates | Add a certificate to an event
[**assignCertificateToAttendee**](EeEventCertificatesApi.md#assignCertificateToAttendee) | **PUT** /certificates/{certificateId}/attendees/{attendeeId} | Assign a certificate to attendee
[**bulkAssignCertificates**](EeEventCertificatesApi.md#bulkAssignCertificates) | **PUT** /certificates/bulk | Assign certificates to attendees
[**bulkRemoveCertificates**](EeEventCertificatesApi.md#bulkRemoveCertificates) | **DELETE** /certificates/bulk | Remove certificates from attendees
[**deleteEventCertificate**](EeEventCertificatesApi.md#deleteEventCertificate) | **DELETE** /certificates/{certificateId} | Delete an existing certificate
[**downloadCertificate**](EeEventCertificatesApi.md#downloadCertificate) | **POST** /certificates/download/{certificateCode} | Download a certificate [certificateCode is eeEventAttendee.certificates[idx].code]
[**getEventCertificate**](EeEventCertificatesApi.md#getEventCertificate) | **GET** /certificates/{certificateId} | Get a certificate
[**inspectTemplate**](EeEventCertificatesApi.md#inspectTemplate) | **GET** /certificates/inspectTemplate | Inspect a template for all the placeholders
[**listAllEventCertificates**](EeEventCertificatesApi.md#listAllEventCertificates) | **GET** /events/{eventId}/certificates | List all event certificates
[**removeCertificateFromAttendee**](EeEventCertificatesApi.md#removeCertificateFromAttendee) | **DELETE** /certificates/{certificateId}/attendees/{attendeeId} | Remove an assigned certificate from attendee
[**searchAttendeesAssignedToCertificate**](EeEventCertificatesApi.md#searchAttendeesAssignedToCertificate) | **GET** /certificates/{certificateId}/attendees | List all attendees assigned to this certificate
[**updateEventCertificate**](EeEventCertificatesApi.md#updateEventCertificate) | **PUT** /certificates/{certificateId} | Update certificate to event


# **addEventCertificate**
> EeEventCertificate addEventCertificate(eventId, eeEventCertificateUpdate)

Add a certificate to an event

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

var api_instance = new EeEventCertificatesApi();
var eventId = eventId_example; // String | Event Id
var eeEventCertificateUpdate = new EeEventCertificateUpdate(); // EeEventCertificateUpdate | Certificate object to be created

try { 
    var result = api_instance.addEventCertificate(eventId, eeEventCertificateUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EeEventCertificatesApi->addEventCertificate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| Event Id | [default to null]
 **eeEventCertificateUpdate** | [**EeEventCertificateUpdate**](EeEventCertificateUpdate.md)| Certificate object to be created | 

### Return type

[**EeEventCertificate**](EeEventCertificate.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assignCertificateToAttendee**
> EeEventAttendee assignCertificateToAttendee(certificateId, attendeeId)

Assign a certificate to attendee

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

var api_instance = new EeEventCertificatesApi();
var certificateId = certificateId_example; // String | Certificate Id
var attendeeId = attendeeId_example; // String | Attendee Id

try { 
    var result = api_instance.assignCertificateToAttendee(certificateId, attendeeId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventCertificatesApi->assignCertificateToAttendee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificateId** | **String**| Certificate Id | [default to null]
 **attendeeId** | **String**| Attendee Id | [default to null]

### Return type

[**EeEventAttendee**](EeEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkAssignCertificates**
> EePagedEventAttendee bulkAssignCertificates(certificateIds, attendeeIds)

Assign certificates to attendees

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

var api_instance = new EeEventCertificatesApi();
var certificateIds = []; // List<String> | 
var attendeeIds = []; // List<String> | 

try { 
    var result = api_instance.bulkAssignCertificates(certificateIds, attendeeIds);
    print(result);
} catch (e) {
    print("Exception when calling EeEventCertificatesApi->bulkAssignCertificates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificateIds** | [**List&lt;String&gt;**](String.md)|  | [optional] [default to []]
 **attendeeIds** | [**List&lt;String&gt;**](String.md)|  | [optional] [default to []]

### Return type

[**EePagedEventAttendee**](EePagedEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkRemoveCertificates**
> EePagedEventAttendee bulkRemoveCertificates(certificateIds, attendeeIds)

Remove certificates from attendees

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

var api_instance = new EeEventCertificatesApi();
var certificateIds = []; // List<String> | 
var attendeeIds = []; // List<String> | 

try { 
    var result = api_instance.bulkRemoveCertificates(certificateIds, attendeeIds);
    print(result);
} catch (e) {
    print("Exception when calling EeEventCertificatesApi->bulkRemoveCertificates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificateIds** | [**List&lt;String&gt;**](String.md)|  | [optional] [default to []]
 **attendeeIds** | [**List&lt;String&gt;**](String.md)|  | [optional] [default to []]

### Return type

[**EePagedEventAttendee**](EePagedEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEventCertificate**
> EeSuccess deleteEventCertificate(certificateId)

Delete an existing certificate

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

var api_instance = new EeEventCertificatesApi();
var certificateId = certificateId_example; // String | Certificate Id

try { 
    var result = api_instance.deleteEventCertificate(certificateId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventCertificatesApi->deleteEventCertificate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificateId** | **String**| Certificate Id | [default to null]

### Return type

[**EeSuccess**](EeSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadCertificate**
> EeAttendeeCertificate downloadCertificate(certificateCode)

Download a certificate [certificateCode is eeEventAttendee.certificates[idx].code]

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

var api_instance = new EeEventCertificatesApi();
var certificateCode = certificateCode_example; // String | Certificate Code

try { 
    var result = api_instance.downloadCertificate(certificateCode);
    print(result);
} catch (e) {
    print("Exception when calling EeEventCertificatesApi->downloadCertificate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificateCode** | **String**| Certificate Code | [default to null]

### Return type

[**EeAttendeeCertificate**](EeAttendeeCertificate.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventCertificate**
> EeEventCertificate getEventCertificate(certificateId)

Get a certificate

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

var api_instance = new EeEventCertificatesApi();
var certificateId = certificateId_example; // String | Certificate Id

try { 
    var result = api_instance.getEventCertificate(certificateId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventCertificatesApi->getEventCertificate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificateId** | **String**| Certificate Id | [default to null]

### Return type

[**EeEventCertificate**](EeEventCertificate.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inspectTemplate**
> EeCertificateInspect inspectTemplate(templateUrl)

Inspect a template for all the placeholders

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

var api_instance = new EeEventCertificatesApi();
var templateUrl = templateUrl_example; // String | 

try { 
    var result = api_instance.inspectTemplate(templateUrl);
    print(result);
} catch (e) {
    print("Exception when calling EeEventCertificatesApi->inspectTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateUrl** | **String**|  | [default to null]

### Return type

[**EeCertificateInspect**](EeCertificateInspect.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllEventCertificates**
> EePagedEventCertificate listAllEventCertificates(eventId, q, facets, cursor, limit)

List all event certificates

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

var api_instance = new EeEventCertificatesApi();
var eventId = eventId_example; // String | Event Id
var q = q_example; // String | 
var facets = facets_example; // String | e.g [profiledIds:edropin],[profileIds:agdontario]
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.listAllEventCertificates(eventId, q, facets, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventCertificatesApi->listAllEventCertificates: $e\n");
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

[**EePagedEventCertificate**](EePagedEventCertificate.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeCertificateFromAttendee**
> EeEventAttendee removeCertificateFromAttendee(certificateId, attendeeId)

Remove an assigned certificate from attendee

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

var api_instance = new EeEventCertificatesApi();
var certificateId = certificateId_example; // String | Certificate Id
var attendeeId = attendeeId_example; // String | Attendee Id

try { 
    var result = api_instance.removeCertificateFromAttendee(certificateId, attendeeId);
    print(result);
} catch (e) {
    print("Exception when calling EeEventCertificatesApi->removeCertificateFromAttendee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificateId** | **String**| Certificate Id | [default to null]
 **attendeeId** | **String**| Attendee Id | [default to null]

### Return type

[**EeEventAttendee**](EeEventAttendee.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAttendeesAssignedToCertificate**
> EePagedEventAttendee searchAttendeesAssignedToCertificate(certificateId, q, facets, cursor, limit)

List all attendees assigned to this certificate

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

var api_instance = new EeEventCertificatesApi();
var certificateId = certificateId_example; // String | Certificate Id
var q = q_example; // String | 
var facets = facets_example; // String | e.g [profiledIds:edropin],[profileIds:agdontario]
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.searchAttendeesAssignedToCertificate(certificateId, q, facets, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EeEventCertificatesApi->searchAttendeesAssignedToCertificate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificateId** | **String**| Certificate Id | [default to null]
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

# **updateEventCertificate**
> EeEventCertificate updateEventCertificate(certificateId, eeEventCertificateUpdate)

Update certificate to event

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

var api_instance = new EeEventCertificatesApi();
var certificateId = certificateId_example; // String | Certificate Id
var eeEventCertificateUpdate = new EeEventCertificateUpdate(); // EeEventCertificateUpdate | Certificate to update

try { 
    var result = api_instance.updateEventCertificate(certificateId, eeEventCertificateUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EeEventCertificatesApi->updateEventCertificate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificateId** | **String**| Certificate Id | [default to null]
 **eeEventCertificateUpdate** | [**EeEventCertificateUpdate**](EeEventCertificateUpdate.md)| Certificate to update | 

### Return type

[**EeEventCertificate**](EeEventCertificate.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

