# edropin_accountsapi.api.EaAccountsApi

## Load the API package
```dart
import 'package:edropin_accountsapi/api.dart';
```

All URIs are relative to *https://edropin-test.appspot.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticatePassword**](EaAccountsApi.md#authenticatePassword) | **POST** /accounts/authenticate/password | Authenticate using email/password
[**getAccount**](EaAccountsApi.md#getAccount) | **GET** /accounts | Get Account
[**getMultipleAccounts**](EaAccountsApi.md#getMultipleAccounts) | **GET** /accounts/get-multi | Get multiple accounts [service only]
[**updateAccount**](EaAccountsApi.md#updateAccount) | **PUT** /accounts | Create/update existing account
[**updateAccountClaims**](EaAccountsApi.md#updateAccountClaims) | **PUT** /accounts/{accountId}/claims | Update account claims


# **authenticatePassword**
> EaAuthentication authenticatePassword(eaPasswordAuthentication)

Authenticate using email/password

### Example 
```dart
import 'package:edropin_accountsapi/api.dart';
// TODO Configure API key authorization: ClientKey
//edropin_accountsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EaAccountsApi();
var eaPasswordAuthentication = new EaPasswordAuthentication(); // EaPasswordAuthentication | Authentication values

try { 
    var result = api_instance.authenticatePassword(eaPasswordAuthentication);
    print(result);
} catch (e) {
    print("Exception when calling EaAccountsApi->authenticatePassword: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eaPasswordAuthentication** | [**EaPasswordAuthentication**](EaPasswordAuthentication.md)| Authentication values | 

### Return type

[**EaAuthentication**](EaAuthentication.md)

### Authorization

[ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccount**
> EaAccount getAccount()

Get Account

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

var api_instance = new EaAccountsApi();

try { 
    var result = api_instance.getAccount();
    print(result);
} catch (e) {
    print("Exception when calling EaAccountsApi->getAccount: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EaAccount**](EaAccount.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMultipleAccounts**
> EaPagedAccount getMultipleAccounts(accountIds)

Get multiple accounts [service only]

### Example 
```dart
import 'package:edropin_accountsapi/api.dart';
// TODO Configure API key authorization: ClientKey
//edropin_accountsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";
// TODO Configure API key authorization: ServiceKey
//edropin_accountsapi.api.Configuration.apiKey{'X-Service-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'X-Service-Key'} = "Bearer";

var api_instance = new EaAccountsApi();
var accountIds = []; // List<String> | 

try { 
    var result = api_instance.getMultipleAccounts(accountIds);
    print(result);
} catch (e) {
    print("Exception when calling EaAccountsApi->getMultipleAccounts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountIds** | [**List&lt;String&gt;**](String.md)|  | [optional] [default to []]

### Return type

[**EaPagedAccount**](EaPagedAccount.md)

### Authorization

[ClientKey](../README.md#ClientKey), [ServiceKey](../README.md#ServiceKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccount**
> EaAccount updateAccount(eaAccountUpdate)

Create/update existing account

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

var api_instance = new EaAccountsApi();
var eaAccountUpdate = new EaAccountUpdate(); // EaAccountUpdate | Account object that needs to be updated

try { 
    var result = api_instance.updateAccount(eaAccountUpdate);
    print(result);
} catch (e) {
    print("Exception when calling EaAccountsApi->updateAccount: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eaAccountUpdate** | [**EaAccountUpdate**](EaAccountUpdate.md)| Account object that needs to be updated | 

### Return type

[**EaAccount**](EaAccount.md)

### Authorization

[Authorization](../README.md#Authorization), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountClaims**
> EaAccount updateAccountClaims(accountId, eaClaims)

Update account claims

### Example 
```dart
import 'package:edropin_accountsapi/api.dart';
// TODO Configure API key authorization: AdminKey
//edropin_accountsapi.api.Configuration.apiKey{'X-Admin-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'X-Admin-Key'} = "Bearer";
// TODO Configure API key authorization: ClientKey
//edropin_accountsapi.api.Configuration.apiKey{'X-Client-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//edropin_accountsapi.api.Configuration.apiKeyPrefix{'X-Client-Key'} = "Bearer";

var api_instance = new EaAccountsApi();
var accountId = accountId_example; // String | Account Id
var eaClaims = new EaClaims(); // EaClaims | Claims that need to be updated

try { 
    var result = api_instance.updateAccountClaims(accountId, eaClaims);
    print(result);
} catch (e) {
    print("Exception when calling EaAccountsApi->updateAccountClaims: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| Account Id | [default to null]
 **eaClaims** | [**EaClaims**](EaClaims.md)| Claims that need to be updated | 

### Return type

[**EaAccount**](EaAccount.md)

### Authorization

[AdminKey](../README.md#AdminKey), [ClientKey](../README.md#ClientKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

