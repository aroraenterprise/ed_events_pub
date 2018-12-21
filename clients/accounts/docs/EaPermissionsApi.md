# edropin_accountsapi.api.EaPermissionsApi

## Load the API package
```dart
import 'package:edropin_accountsapi/api.dart';
```

All URIs are relative to *https://edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptPermissionInvite**](EaPermissionsApi.md#acceptPermissionInvite) | **POST** /permissions/accept-invite/{inviteToken} | Accept a permission invite
[**hasPermission**](EaPermissionsApi.md#hasPermission) | **GET** /permissions/{entityType}/{entityId}/accounts/{accountId} | Check account has permission
[**paginatePermissions**](EaPermissionsApi.md#paginatePermissions) | **GET** /permissions/{entityType}/{entityId}/accounts | Get permissions for entity
[**removePermissionsForAccount**](EaPermissionsApi.md#removePermissionsForAccount) | **DELETE** /permissions/{entityType}/{entityId}/accounts/{accountId} | Remove all permissions for account
[**sendPermissionInvite**](EaPermissionsApi.md#sendPermissionInvite) | **POST** /permissions/{entityType}/{entityId}/send-invite | Send a permission invite
[**setPermission**](EaPermissionsApi.md#setPermission) | **PUT** /permissions/{entityType}/{entityId}/accounts/{accountId} | Set account permission


# **acceptPermissionInvite**
> EaPermissionAccept acceptPermissionInvite(inviteToken, v)

Accept a permission invite

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

var api_instance = new EaPermissionsApi();
var inviteToken = inviteToken_example; // String | Invite Token
var v = v_example; // String | Accept or decline an invite

try { 
    var result = api_instance.acceptPermissionInvite(inviteToken, v);
    print(result);
} catch (e) {
    print("Exception when calling EaPermissionsApi->acceptPermissionInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteToken** | **String**| Invite Token | [default to null]
 **v** | **String**| Accept or decline an invite | [optional] [default to null]

### Return type

[**EaPermissionAccept**](EaPermissionAccept.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hasPermission**
> EaPermissionCheck hasPermission(entityType, entityId, accountId, permission)

Check account has permission

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

var api_instance = new EaPermissionsApi();
var entityType = entityType_example; // String | Entity Type
var entityId = entityId_example; // String | Entity Id
var accountId = accountId_example; // String | Account Id
var permission = permission_example; // String | 

try { 
    var result = api_instance.hasPermission(entityType, entityId, accountId, permission);
    print(result);
} catch (e) {
    print("Exception when calling EaPermissionsApi->hasPermission: $e\n");
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

[**EaPermissionCheck**](EaPermissionCheck.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paginatePermissions**
> EaPagedPermission paginatePermissions(entityType, entityId, cursor, limit)

Get permissions for entity

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

var api_instance = new EaPermissionsApi();
var entityType = entityType_example; // String | Entity Type
var entityId = entityId_example; // String | Entity Id
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.paginatePermissions(entityType, entityId, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EaPermissionsApi->paginatePermissions: $e\n");
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

[**EaPagedPermission**](EaPagedPermission.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removePermissionsForAccount**
> EaSuccess removePermissionsForAccount(entityType, entityId, accountId)

Remove all permissions for account

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

var api_instance = new EaPermissionsApi();
var entityType = entityType_example; // String | Entity Type
var entityId = entityId_example; // String | Entity Id
var accountId = accountId_example; // String | Account Id

try { 
    var result = api_instance.removePermissionsForAccount(entityType, entityId, accountId);
    print(result);
} catch (e) {
    print("Exception when calling EaPermissionsApi->removePermissionsForAccount: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| Entity Type | [default to null]
 **entityId** | **String**| Entity Id | [default to null]
 **accountId** | **String**| Account Id | [default to null]

### Return type

[**EaSuccess**](EaSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPermissionInvite**
> EaPagedPermissionInvite sendPermissionInvite(entityType, entityId, eaPermissionInviteCreate)

Send a permission invite

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

var api_instance = new EaPermissionsApi();
var entityType = entityType_example; // String | Entity Type
var entityId = entityId_example; // String | Entity Id
var eaPermissionInviteCreate = new EaPermissionInviteCreate(); // EaPermissionInviteCreate | Object for permission invite

try { 
    var result = api_instance.sendPermissionInvite(entityType, entityId, eaPermissionInviteCreate);
    print(result);
} catch (e) {
    print("Exception when calling EaPermissionsApi->sendPermissionInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| Entity Type | [default to null]
 **entityId** | **String**| Entity Id | [default to null]
 **eaPermissionInviteCreate** | [**EaPermissionInviteCreate**](EaPermissionInviteCreate.md)| Object for permission invite | 

### Return type

[**EaPagedPermissionInvite**](EaPagedPermissionInvite.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPermission**
> EaPermission setPermission(entityType, entityId, accountId, eaPermissionInput)

Set account permission

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

var api_instance = new EaPermissionsApi();
var entityType = entityType_example; // String | Entity Type
var entityId = entityId_example; // String | Entity Id
var accountId = accountId_example; // String | Account Id
var eaPermissionInput = new EaPermissionInput(); // EaPermissionInput | 

try { 
    var result = api_instance.setPermission(entityType, entityId, accountId, eaPermissionInput);
    print(result);
} catch (e) {
    print("Exception when calling EaPermissionsApi->setPermission: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| Entity Type | [default to null]
 **entityId** | **String**| Entity Id | [default to null]
 **accountId** | **String**| Account Id | [default to null]
 **eaPermissionInput** | [**EaPermissionInput**](EaPermissionInput.md)|  | 

### Return type

[**EaPermission**](EaPermission.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

