part of edropin_eventsapi.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://events-dot-edropin-test.appspot.com"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['Authorization'] = ApiKeyAuth("header", "Authorization");
    _authentications['ClientKey'] = ApiKeyAuth("header", "X-Client-Key");
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'EeAddress':
          return EeAddress.fromJson(value);
        case 'EeAppliedPromotion':
          return EeAppliedPromotion.fromJson(value);
        case 'EeAttendeeCertificate':
          return EeAttendeeCertificate.fromJson(value);
        case 'EeAttendeeDropin':
          return EeAttendeeDropin.fromJson(value);
        case 'EeAttendeeNotification':
          return EeAttendeeNotification.fromJson(value);
        case 'EeBaseId':
          return EeBaseId.fromJson(value);
        case 'EeCertificateInspect':
          return EeCertificateInspect.fromJson(value);
        case 'EeCertificateInspectPlaceholders':
          return EeCertificateInspectPlaceholders.fromJson(value);
        case 'EeCsv':
          return EeCsv.fromJson(value);
        case 'EeDefaultError':
          return EeDefaultError.fromJson(value);
        case 'EeDiscount':
          return EeDiscount.fromJson(value);
        case 'EeEvent':
          return EeEvent.fromJson(value);
        case 'EeEventAttendee':
          return EeEventAttendee.fromJson(value);
        case 'EeEventAttendeeClaimUpdate':
          return EeEventAttendeeClaimUpdate.fromJson(value);
        case 'EeEventAttendeeClaimUpdateAttendees':
          return EeEventAttendeeClaimUpdateAttendees.fromJson(value);
        case 'EeEventAttendeeTransfer':
          return EeEventAttendeeTransfer.fromJson(value);
        case 'EeEventAttendeeUpdate':
          return EeEventAttendeeUpdate.fromJson(value);
        case 'EeEventAutomation':
          return EeEventAutomation.fromJson(value);
        case 'EeEventAutomationUpdate':
          return EeEventAutomationUpdate.fromJson(value);
        case 'EeEventCertificate':
          return EeEventCertificate.fromJson(value);
        case 'EeEventCertificatePlaceholder':
          return EeEventCertificatePlaceholder.fromJson(value);
        case 'EeEventCertificateUpdate':
          return EeEventCertificateUpdate.fromJson(value);
        case 'EeEventDropin':
          return EeEventDropin.fromJson(value);
        case 'EeEventDropinTicket':
          return EeEventDropinTicket.fromJson(value);
        case 'EeEventDropinUpdate':
          return EeEventDropinUpdate.fromJson(value);
        case 'EeEventProfile':
          return EeEventProfile.fromJson(value);
        case 'EeEventTag':
          return EeEventTag.fromJson(value);
        case 'EeEventTagUpsert':
          return EeEventTagUpsert.fromJson(value);
        case 'EeEventUpdate':
          return EeEventUpdate.fromJson(value);
        case 'EeFacetSearch':
          return EeFacetSearch.fromJson(value);
        case 'EeFacetSearchFacetHits':
          return EeFacetSearchFacetHits.fromJson(value);
        case 'EeGeoloc':
          return EeGeoloc.fromJson(value);
        case 'EeKiosk':
          return EeKiosk.fromJson(value);
        case 'EeKioskUpdate':
          return EeKioskUpdate.fromJson(value);
        case 'EePagedEvent':
          return EePagedEvent.fromJson(value);
        case 'EePagedEventAttendee':
          return EePagedEventAttendee.fromJson(value);
        case 'EePagedEventAutomation':
          return EePagedEventAutomation.fromJson(value);
        case 'EePagedEventCertificate':
          return EePagedEventCertificate.fromJson(value);
        case 'EePagedEventDropin':
          return EePagedEventDropin.fromJson(value);
        case 'EePagedEventTag':
          return EePagedEventTag.fromJson(value);
        case 'EePagedKiosk':
          return EePagedKiosk.fromJson(value);
        case 'EePagedPermission':
          return EePagedPermission.fromJson(value);
        case 'EePagedPermissionInvite':
          return EePagedPermissionInvite.fromJson(value);
        case 'EePagedTicket':
          return EePagedTicket.fromJson(value);
        case 'EePagination':
          return EePagination.fromJson(value);
        case 'EePermission':
          return EePermission.fromJson(value);
        case 'EePermissionAccept':
          return EePermissionAccept.fromJson(value);
        case 'EePermissionCheck':
          return EePermissionCheck.fromJson(value);
        case 'EePermissionInput':
          return EePermissionInput.fromJson(value);
        case 'EePermissionInvite':
          return EePermissionInvite.fromJson(value);
        case 'EePermissionInviteCreate':
          return EePermissionInviteCreate.fromJson(value);
        case 'EePriceStrategy':
          return EePriceStrategy.fromJson(value);
        case 'EePriceSummary':
          return EePriceSummary.fromJson(value);
        case 'EeProfile':
          return EeProfile.fromJson(value);
        case 'EePubSubMessage':
          return EePubSubMessage.fromJson(value);
        case 'EePubSubMessageMessage':
          return EePubSubMessageMessage.fromJson(value);
        case 'EeRefundPolicy':
          return EeRefundPolicy.fromJson(value);
        case 'EeStoreItem':
          return EeStoreItem.fromJson(value);
        case 'EeStoreItemUpdate':
          return EeStoreItemUpdate.fromJson(value);
        case 'EeSuccess':
          return EeSuccess.fromJson(value);
        case 'EeTicket':
          return EeTicket.fromJson(value);
        case 'EeTicketDropin':
          return EeTicketDropin.fromJson(value);
        case 'EeTicketSummary':
          return EeTicketSummary.fromJson(value);
        case 'EeTicketUpdate':
          return EeTicketUpdate.fromJson(value);
        case 'InlineObject':
          return InlineObject.fromJson(value);
        case 'InlineResponse200':
          return InlineResponse200.fromJson(value);
        case 'InlineResponse2001':
          return InlineResponse2001.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
