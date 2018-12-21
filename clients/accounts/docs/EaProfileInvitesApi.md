# edropin_accountsapi.api.EaProfileInvitesApi

## Load the API package
```dart
import 'package:edropin_accountsapi/api.dart';
```

All URIs are relative to *https://edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archiveProfileInvite**](EaProfileInvitesApi.md#archiveProfileInvite) | **DELETE** /profile-invites/{inviteId} | Archive a profile invitation
[**createProfileFromInvite**](EaProfileInvitesApi.md#createProfileFromInvite) | **POST** /profile-invites/referral/{referralCode} | Create a profile from a profile invite
[**createProfileInvite**](EaProfileInvitesApi.md#createProfileInvite) | **POST** /profile-invites | Create a new profile invite
[**getMultipleInvites**](EaProfileInvitesApi.md#getMultipleInvites) | **GET** /profile-invites/get-multi | Get Multiple Profile Invites
[**getProfileInviteReferral**](EaProfileInvitesApi.md#getProfileInviteReferral) | **GET** /profile-invites/referral/{referralCode} | Get the pre-filled fields for on-boarding an invite
[**listProfileInvites**](EaProfileInvitesApi.md#listProfileInvites) | **GET** /profile-invites | Paginate over all invitations made by requested user


# **archiveProfileInvite**
> EaSuccess archiveProfileInvite(inviteId)

Archive a profile invitation

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

var api_instance = new EaProfileInvitesApi();
var inviteId = inviteId_example; // String | Profile Invitation Id

try { 
    var result = api_instance.archiveProfileInvite(inviteId);
    print(result);
} catch (e) {
    print("Exception when calling EaProfileInvitesApi->archiveProfileInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String**| Profile Invitation Id | [default to null]

### Return type

[**EaSuccess**](EaSuccess.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProfileFromInvite**
> EaProfile createProfileFromInvite(referralCode, eaProfileUpdate)

Create a profile from a profile invite

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

var api_instance = new EaProfileInvitesApi();
var referralCode = referralCode_example; // String | Profile invitation referral code
var eaProfileUpdate = new EaProfileUpdate(); // EaProfileUpdate | Information to create profile

try { 
    var result = api_instance.createProfileFromInvite(referralCode, eaProfileUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EaProfileInvitesApi->createProfileFromInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **referralCode** | **String**| Profile invitation referral code | [default to null]
 **eaProfileUpdate** | [**EaProfileUpdate**](EaProfileUpdate.md)| Information to create profile | 

### Return type

[**EaProfile**](EaProfile.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProfileInvite**
> EaProfileInvite createProfileInvite(eaProfileInviteCreate)

Create a new profile invite

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

var api_instance = new EaProfileInvitesApi();
var eaProfileInviteCreate = new EaProfileInviteCreate(); // EaProfileInviteCreate | Profile to invite

try { 
    var result = api_instance.createProfileInvite(eaProfileInviteCreate);
    print(result);
} catch (e) {
    print("Exception when calling EaProfileInvitesApi->createProfileInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eaProfileInviteCreate** | [**EaProfileInviteCreate**](EaProfileInviteCreate.md)| Profile to invite | 

### Return type

[**EaProfileInvite**](EaProfileInvite.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMultipleInvites**
> EaPagedProfileInvite getMultipleInvites(inviteIds)

Get Multiple Profile Invites

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

var api_instance = new EaProfileInvitesApi();
var inviteIds = []; // List<String> | 

try { 
    var result = api_instance.getMultipleInvites(inviteIds);
    print(result);
} catch (e) {
    print("Exception when calling EaProfileInvitesApi->getMultipleInvites: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteIds** | [**List&lt;String&gt;**](String.md)|  | [optional] [default to []]

### Return type

[**EaPagedProfileInvite**](EaPagedProfileInvite.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfileInviteReferral**
> EaProfileInvite getProfileInviteReferral(referralCode)

Get the pre-filled fields for on-boarding an invite

### Example 
```dart
import 'package:edropin_accountsapi/api.dart';
// TODO Configure API key authorization: ClientKey
//edropin_accountsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EaProfileInvitesApi();
var referralCode = referralCode_example; // String | Profile invitation referral code

try { 
    var result = api_instance.getProfileInviteReferral(referralCode);
    print(result);
} catch (e) {
    print("Exception when calling EaProfileInvitesApi->getProfileInviteReferral: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **referralCode** | **String**| Profile invitation referral code | [default to null]

### Return type

[**EaProfileInvite**](EaProfileInvite.md)

### Authorization

[ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProfileInvites**
> EaProfileInvite listProfileInvites(cursor, limit)

Paginate over all invitations made by requested user

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

var api_instance = new EaProfileInvitesApi();
var cursor = cursor_example; // String | Start Cursor for query
var limit = 56; // int | Number of items returned

try { 
    var result = api_instance.listProfileInvites(cursor, limit);
    print(result);
} catch (e) {
    print("Exception when calling EaProfileInvitesApi->listProfileInvites: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **String**| Start Cursor for query | [optional] [default to null]
 **limit** | **int**| Number of items returned | [optional] [default to 20]

### Return type

[**EaProfileInvite**](EaProfileInvite.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

