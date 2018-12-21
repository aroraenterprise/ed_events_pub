# edropin_accountsapi.api.EaProfilesApi

## Load the API package
```dart
import 'package:edropin_accountsapi/api.dart';
```

All URIs are relative to *https://edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkAccountHasPermission**](EaProfilesApi.md#checkAccountHasPermission) | **GET** /profiles/{profileId}/permissions/{accountId}/check | Check account has permission
[**checkUsernameAvailability**](EaProfilesApi.md#checkUsernameAvailability) | **GET** /profiles/usernamecheck | Check username availability
[**createProfile**](EaProfilesApi.md#createProfile) | **POST** /profiles | Create profile
[**deleteProfile**](EaProfilesApi.md#deleteProfile) | **DELETE** /profiles/{profileId} | Delete an existing profile
[**getAccountPermissionForProfile**](EaProfilesApi.md#getAccountPermissionForProfile) | **GET** /profiles/{profileId}/permissions/{accountId} | Get permission for account
[**getAllProfiles**](EaProfilesApi.md#getAllProfiles) | **GET** /profiles | Get Profiles
[**getMultipleProfiles**](EaProfilesApi.md#getMultipleProfiles) | **GET** /profiles/get-multi | Get Multiple Profiles
[**getProfile**](EaProfilesApi.md#getProfile) | **GET** /profiles/{profileId} | Get a profile from the directory
[**getProfileCategories**](EaProfilesApi.md#getProfileCategories) | **GET** /profiles/categories | Get Profile Categories
[**getProfilePermission**](EaProfilesApi.md#getProfilePermission) | **GET** /profiles/{profileId}/all-permissions | List all profile permissions
[**paginateProfileFeed**](EaProfilesApi.md#paginateProfileFeed) | **GET** /profiles/{profileId}/feed | Profile Feed
[**searchProfile**](EaProfilesApi.md#searchProfile) | **GET** /profiles/search | Search Profiles
[**sendProfileEmailVerification**](EaProfilesApi.md#sendProfileEmailVerification) | **POST** /profiles/{profileId}/email-verification | Send email verification
[**setProfilePermission**](EaProfilesApi.md#setProfilePermission) | **PUT** /profiles/{profileId}/permissions/{accountId} | Set permission for profile
[**setStatus**](EaProfilesApi.md#setStatus) | **PUT** /profiles/{profileId}/status | Set a profile status
[**updateProfile**](EaProfilesApi.md#updateProfile) | **PUT** /profiles/{profileId} | Update an existing profile
[**verifyProfileEmail**](EaProfilesApi.md#verifyProfileEmail) | **POST** /profiles/email-verification/{code} | Verifiy profile email


# **checkAccountHasPermission**
> EaPermissionCheck checkAccountHasPermission(profileId, accountId, permission)

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

var api_instance = new EaProfilesApi();
var profileId = profileId_example; // String | Profile Id
var accountId = accountId_example; // String | Account Id
var permission = permission_example; // String | 

try { 
    var result = api_instance.checkAccountHasPermission(profileId, accountId, permission);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->checkAccountHasPermission: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | [default to null]
 **accountId** | **String**| Account Id | [default to null]
 **permission** | **String**|  | [default to null]

### Return type

[**EaPermissionCheck**](EaPermissionCheck.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkUsernameAvailability**
> EaSuccess checkUsernameAvailability(username)

Check username availability

### Example 
```dart
import 'package:edropin_accountsapi/api.dart';
// TODO Configure API key authorization: Authorization
//edropin_accountsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: AuthorizationOptional
//edropin_accountsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: ClientKey
//edropin_accountsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EaProfilesApi();
var username = username_example; // String | Username to check for availability

try { 
    var result = api_instance.checkUsernameAvailability(username);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->checkUsernameAvailability: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Username to check for availability | [default to null]

### Return type

[**EaSuccess**](EaSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [AuthorizationOptional](../README.md#AuthorizationOptional), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProfile**
> EaProfile createProfile(eaProfileUpdate)

Create profile

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

var api_instance = new EaProfilesApi();
var eaProfileUpdate = new EaProfileUpdate(); // EaProfileUpdate | Profile object that needs to be created

try { 
    var result = api_instance.createProfile(eaProfileUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->createProfile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eaProfileUpdate** | [**EaProfileUpdate**](EaProfileUpdate.md)| Profile object that needs to be created | 

### Return type

[**EaProfile**](EaProfile.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProfile**
> EaSuccess deleteProfile(profileId)

Delete an existing profile

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

var api_instance = new EaProfilesApi();
var profileId = profileId_example; // String | Profile Id

try { 
    var result = api_instance.deleteProfile(profileId);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->deleteProfile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | [default to null]

### Return type

[**EaSuccess**](EaSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountPermissionForProfile**
> EaPermission getAccountPermissionForProfile(profileId, accountId)

Get permission for account

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

var api_instance = new EaProfilesApi();
var profileId = profileId_example; // String | Profile Id
var accountId = accountId_example; // String | Account Id

try { 
    var result = api_instance.getAccountPermissionForProfile(profileId, accountId);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->getAccountPermissionForProfile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | [default to null]
 **accountId** | **String**| Account Id | [default to null]

### Return type

[**EaPermission**](EaPermission.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllProfiles**
> EaPagedProfile getAllProfiles(q, facets, enhanced, cursor, limit)

Get Profiles

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

var api_instance = new EaProfilesApi();
var q = q_example; // String | 
var facets = facets_example; // String | e.g [profiledIds:edropin],[profileIds:agdontario]
var enhanced = true; // bool | Gives you a more detailed entity but requires admin permissions usually
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.getAllProfiles(q, facets, enhanced, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->getAllProfiles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] [default to null]
 **facets** | **String**| e.g [profiledIds:edropin],[profileIds:agdontario] | [optional] [default to null]
 **enhanced** | **bool**| Gives you a more detailed entity but requires admin permissions usually | [optional] [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EaPagedProfile**](EaPagedProfile.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMultipleProfiles**
> EaPagedProfile getMultipleProfiles(profileIds)

Get Multiple Profiles

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

var api_instance = new EaProfilesApi();
var profileIds = []; // List<String> | 

try { 
    var result = api_instance.getMultipleProfiles(profileIds);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->getMultipleProfiles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileIds** | [**List&lt;String&gt;**](String.md)|  | [optional] [default to []]

### Return type

[**EaPagedProfile**](EaPagedProfile.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfile**
> EaProfile getProfile(profileId, enhanced)

Get a profile from the directory

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

var api_instance = new EaProfilesApi();
var profileId = profileId_example; // String | Profile Id
var enhanced = true; // bool | Gives you a more detailed entity but requires admin permissions usually

try { 
    var result = api_instance.getProfile(profileId, enhanced);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->getProfile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | [default to null]
 **enhanced** | **bool**| Gives you a more detailed entity but requires admin permissions usually | [optional] [default to null]

### Return type

[**EaProfile**](EaProfile.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfileCategories**
> EaFacetSearch getProfileCategories(q, cursor, limit)

Get Profile Categories

### Example 
```dart
import 'package:edropin_accountsapi/api.dart';
// TODO Configure API key authorization: Authorization
//edropin_accountsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: AuthorizationOptional
//edropin_accountsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: ClientKey
//edropin_accountsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EaProfilesApi();
var q = q_example; // String | 
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.getProfileCategories(q, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->getProfileCategories: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EaFacetSearch**](EaFacetSearch.md)

### Authorization

[Authorization](../README.md#Authorization), [AuthorizationOptional](../README.md#AuthorizationOptional), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfilePermission**
> EaPagedPermission getProfilePermission(profileId, cursor, limit)

List all profile permissions

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

var api_instance = new EaProfilesApi();
var profileId = profileId_example; // String | Profile Id
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.getProfilePermission(profileId, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->getProfilePermission: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | [default to null]
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

# **paginateProfileFeed**
> EaPagedFeedItem paginateProfileFeed(profileId, cursor, limit)

Profile Feed

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

var api_instance = new EaProfilesApi();
var profileId = profileId_example; // String | Profile Id
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.paginateProfileFeed(profileId, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->paginateProfileFeed: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EaPagedFeedItem**](EaPagedFeedItem.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchProfile**
> EaPagedProfile searchProfile(q, facets, showInvited, cursor, limit)

Search Profiles

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

var api_instance = new EaProfilesApi();
var q = q_example; // String | 
var facets = facets_example; // String | e.g [profiledIds:edropin],[profileIds:agdontario]
var showInvited = true; // bool | 
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.searchProfile(q, facets, showInvited, cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->searchProfile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] [default to null]
 **facets** | **String**| e.g [profiledIds:edropin],[profileIds:agdontario] | [optional] [default to null]
 **showInvited** | **bool**|  | [optional] [default to null]
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EaPagedProfile**](EaPagedProfile.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendProfileEmailVerification**
> EaSuccess sendProfileEmailVerification(profileId)

Send email verification

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

var api_instance = new EaProfilesApi();
var profileId = profileId_example; // String | Profile Id

try { 
    var result = api_instance.sendProfileEmailVerification(profileId);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->sendProfileEmailVerification: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | [default to null]

### Return type

[**EaSuccess**](EaSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setProfilePermission**
> EaPermission setProfilePermission(profileId, accountId, eaPermissionInput)

Set permission for profile

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

var api_instance = new EaProfilesApi();
var profileId = profileId_example; // String | Profile Id
var accountId = accountId_example; // String | Account Id
var eaPermissionInput = new EaPermissionInput(); // EaPermissionInput | Permissions

try { 
    var result = api_instance.setProfilePermission(profileId, accountId, eaPermissionInput);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->setProfilePermission: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | [default to null]
 **accountId** | **String**| Account Id | [default to null]
 **eaPermissionInput** | [**EaPermissionInput**](EaPermissionInput.md)| Permissions | 

### Return type

[**EaPermission**](EaPermission.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setStatus**
> EaProfileStatus setStatus(profileId, eaProfileStatus)

Set a profile status

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

var api_instance = new EaProfilesApi();
var profileId = profileId_example; // String | Profile Id
var eaProfileStatus = new EaProfileStatus(); // EaProfileStatus | Profile object that needs to be created

try { 
    var result = api_instance.setStatus(profileId, eaProfileStatus);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->setStatus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | [default to null]
 **eaProfileStatus** | [**EaProfileStatus**](EaProfileStatus.md)| Profile object that needs to be created | 

### Return type

[**EaProfileStatus**](EaProfileStatus.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfile**
> EaProfile updateProfile(profileId, eaProfileUpdate)

Update an existing profile

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

var api_instance = new EaProfilesApi();
var profileId = profileId_example; // String | Profile Id
var eaProfileUpdate = new EaProfileUpdate(); // EaProfileUpdate | Profile object that needs to be updated

try { 
    var result = api_instance.updateProfile(profileId, eaProfileUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->updateProfile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | [default to null]
 **eaProfileUpdate** | [**EaProfileUpdate**](EaProfileUpdate.md)| Profile object that needs to be updated | 

### Return type

[**EaProfile**](EaProfile.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyProfileEmail**
> EaEmailVerification verifyProfileEmail(code)

Verifiy profile email

### Example 
```dart
import 'package:edropin_accountsapi/api.dart';
// TODO Configure API key authorization: Authorization
//edropin_accountsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: AuthorizationOptional
//edropin_accountsapi.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: ClientKey
//edropin_accountsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EaProfilesApi();
var code = code_example; // String | 

try { 
    var result = api_instance.verifyProfileEmail(code);
    print(result);
} catch (e) {
    print("Exception when calling EaProfilesApi->verifyProfileEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**|  | [default to null]

### Return type

[**EaEmailVerification**](EaEmailVerification.md)

### Authorization

[Authorization](../README.md#Authorization), [AuthorizationOptional](../README.md#AuthorizationOptional), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

