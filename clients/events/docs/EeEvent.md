# edropin_eventsapi.model.EeEvent

## Load the model package
```dart
import 'package:edropin_eventsapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [default to null]
**createdOn** | **String** |  | [optional] [default to null]
**modifiedOn** | **String** |  | [optional] [default to null]
**version** | **String** |  | [optional] [default to null]
**organizerId** | **String** |  | [default to null]
**name** | **String** |  | [default to null]
**startTimestamp** | **int** |  | [default to null]
**endTimestamp** | **int** |  | [default to null]
**timezone** | **String** |  | [optional] [default to null]
**bio** | **String** |  | [optional] [default to null]
**picture** | **String** |  | [optional] [default to null]
**pictures** | **List&lt;String&gt;** |  | [optional] [default to []]
**website** | **String** |  | [optional] [default to null]
**isOnline** | **bool** |  | [optional] [default to null]
**isHandsOn** | **bool** |  | [optional] [default to null]
**isDestination** | **bool** |  | [optional] [default to null]
**destinationType** | **String** |  | [optional] [default to null]
**isFree** | **bool** |  | [optional] [default to null]
**isLive** | **bool** |  | [optional] [default to null]
**isPublic** | **bool** |  | [optional] [default to null]
**duration** | **int** |  | [optional] [default to null]
**categories** | **List&lt;String&gt;** |  | [optional] [default to []]
**address** | [**EeAddress**](EeAddress.md) |  | [optional] [default to null]
**policy** | **String** |  | [optional] [default to null]
**agreeTerms** | **String** |  | [default to null]
**organizerName** | **String** |  | [optional] [default to null]
**profiles** | **List&lt;String&gt;** |  | [optional] [default to []]
**courseIds** | **List&lt;String&gt;** |  | [optional] [default to []]
**availableCurrencyCode** | **List&lt;String&gt;** |  | [optional] [default to []]
**totalProfiles** | **int** |  | [optional] [default to null]
**totalTickets** | **int** |  | [optional] [default to null]
**totalTicketInventory** | **int** |  | [optional] [default to null]
**totalTicketSold** | **int** |  | [optional] [default to null]
**primaryTicket** | **Map&lt;String, String&gt;** | currencyCode: ticketId | [optional] [default to {}]
**tickets** | [**List&lt;EeTicketSummary&gt;**](EeTicketSummary.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


