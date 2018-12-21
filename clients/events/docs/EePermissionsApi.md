# edropin_eventsapi.api.EePermissionsApi

## Load the API package
```dart
import 'package:edropin_eventsapi/api.dart';
```

All URIs are relative to *https://events-dot-edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptPermissionInvite**](EePermissionsApi.md#acceptPermissionInvite) | **POST** /permissions/accept-invite/{inviteToken} | Accept a permission invite
[**hasPermission**](EePermissionsApi.md#hasPermission) | **GET** /permissions/{entityType}/{entityId}/accounts/{accountId} | Check account has permission
[**paginatePermissions**](EePermissionsApi.md#paginatePermissions) | **GET** /permissions/{entityType}/{entityId}/accounts | Get permissions for entity
[**removePermissionsForAccount**](EePermissionsApi.md#removePermissionsForAccount) | **DELETE** /permissions/{entityType}/{entityId}/accounts/{accountId} | Remove all permissions for account
[**sendPermissionInvite**](EePermissionsApi.md#sendPermissionInvite) | **POST** /permissions/{entityType}/{entityId}/send-invite | Send a permission invite
[**setPermission**](EePermissionsApi.md#setPermission) | **PUT** /permissions/{entityType}/{entityId}/accounts/{accountId} | Set account permission


# **acceptPermissionInvite**
> EePermissionAccept acceptPermissionInvite(inviteToken, v)

Accept a permission invite

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

var api_instance = new EePermissionsApi();
var inviteToken = inviteToken_example; // String | Invite Token
var v = v_example; // String | Accept or decline an invite

try { 
    var result = api_instance.acceptPermissionInvite(inviteToken, v);
    print(result);
} catch (e) {
    print("Exception when calling EePermissionsApi->acceptPermissionInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteToken** | **String**| Invite Token | [default to null]
 **v** | **String**| Accept or decline an invite | [optional] [default to null]

### Return type

[**EePermissionAccept**](EePermissionAccept.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hasPermission**
> EePermissionCheck hasPermission(entityType, entityId, accountId, permission)

Check account has permission

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

var api_instance = new EePermissionsApi();
var entityType = entityType_example; // String | Entity Type
var entityId = entityId_example; // String | Entity Id
var accountId = accountId_example; // String | Account Id
var permission = permission_example; // String | 

try { 
    var result = api_instance.hasPermission(entityType, entityId, accountId, permission);
    print(result);
} catch (e) {
    print("Exception when calling EePermissionsApi->hasPermission: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| Entity Type | [default to null]
 **entityId** | **String**| Entity Id | [default to null]
 **accountId** | **String**| Account Id | [default to null]
 **permission** | **String**|  | [optional] [default to null]

### Return type

[**EePermissionCheck**](EePermissionCheck.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paginatePermissions**
> EePagedPermission paginatePermissions(entityType, entityId, cursor, limit)

Get permissions for entity

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

var api_instance = new EePermissionsApi();
var entityType = entityType_example; // String | Entity Type
var entityId = entityId_example; // String | Entity Id
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.paginatePermissions(entityType, entityId, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EePermissionsApi->paginatePermissions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| Entity Type | [default to null]
 **entityId** | **String**| Entity Id | [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EePagedPermission**](EePagedPermission.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removePermissionsForAccount**
> EeSuccess removePermissionsForAccount(entityType, entityId, accountId)

Remove all permissions for account

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

var api_instance = new EePermissionsApi();
var entityType = entityType_example; // String | Entity Type
var entityId = entityId_example; // String | Entity Id
var accountId = accountId_example; // String | Account Id

try { 
    var result = api_instance.removePermissionsForAccount(entityType, entityId, accountId);
    print(result);
} catch (e) {
    print("Exception when calling EePermissionsApi->removePermissionsForAccount: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| Entity Type | [default to null]
 **entityId** | **String**| Entity Id | [default to null]
 **accountId** | **String**| Account Id | [default to null]

### Return type

[**EeSuccess**](EeSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPermissionInvite**
> EePagedPermissionInvite sendPermissionInvite(entityType, entityId, eePermissionInviteCreate)

Send a permission invite

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

var api_instance = new EePermissionsApi();
var entityType = entityType_example; // String | Entity Type
var entityId = entityId_example; // String | Entity Id
var eePermissionInviteCreate = new EePermissionInviteCreate(); // EePermissionInviteCreate | Object for permission invite

try { 
    var result = api_instance.sendPermissionInvite(entityType, entityId, eePermissionInviteCreate);
    print(result);
} catch (e) {
    print("Exception when calling EePermissionsApi->sendPermissionInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| Entity Type | [default to null]
 **entityId** | **String**| Entity Id | [default to null]
 **eePermissionInviteCreate** | [**EePermissionInviteCreate**](EePermissionInviteCreate.md)| Object for permission invite | 

### Return type

[**EePagedPermissionInvite**](EePagedPermissionInvite.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPermission**
> EePermission setPermission(entityType, entityId, accountId, eePermissionInput)

Set account permission

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

var api_instance = new EePermissionsApi();
var entityType = entityType_example; // String | Entity Type
var entityId = entityId_example; // String | Entity Id
var accountId = accountId_example; // String | Account Id
var eePermissionInput = new EePermissionInput(); // EePermissionInput | 

try { 
    var result = api_instance.setPermission(entityType, entityId, accountId, eePermissionInput);
    print(result);
} catch (e) {
    print("Exception when calling EePermissionsApi->setPermission: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| Entity Type | [default to null]
 **entityId** | **String**| Entity Id | [default to null]
 **accountId** | **String**| Account Id | [default to null]
 **eePermissionInput** | [**EePermissionInput**](EePermissionInput.md)|  | 

### Return type

[**EePermission**](EePermission.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

