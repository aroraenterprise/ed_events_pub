part of edropin_accountsapi.api;

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

  ApiClient({this.basePath: "https://edropin-test.appspot.com"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['AdminKey'] = ApiKeyAuth("header", "X-Admin-Key");
    _authentications['Authorization'] = ApiKeyAuth("header", "Authorization");
    _authentications['AuthorizationOptional'] = ApiKeyAuth("header", "Authorization");
    _authentications['ClientKey'] = ApiKeyAuth("header", "X-Client-Key");
    _authentications['ServiceKey'] = ApiKeyAuth("header", "X-Service-Key");
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
        case 'DefaultError':
          return DefaultError.fromJson(value);
        case 'EaAccount':
          return EaAccount.fromJson(value);
        case 'EaAccountUpdate':
          return EaAccountUpdate.fromJson(value);
        case 'EaAddress':
          return EaAddress.fromJson(value);
        case 'EaAuthentication':
          return EaAuthentication.fromJson(value);
        case 'EaBaseId':
          return EaBaseId.fromJson(value);
        case 'EaClaims':
          return EaClaims.fromJson(value);
        case 'EaEmailVerification':
          return EaEmailVerification.fromJson(value);
        case 'EaFacetSearch':
          return EaFacetSearch.fromJson(value);
        case 'EaFacetSearchFacetHits':
          return EaFacetSearchFacetHits.fromJson(value);
        case 'EaFeedItem':
          return EaFeedItem.fromJson(value);
        case 'EaGeoloc':
          return EaGeoloc.fromJson(value);
        case 'EaPagedAccount':
          return EaPagedAccount.fromJson(value);
        case 'EaPagedFeedItem':
          return EaPagedFeedItem.fromJson(value);
        case 'EaPagedPermission':
          return EaPagedPermission.fromJson(value);
        case 'EaPagedPermissionInvite':
          return EaPagedPermissionInvite.fromJson(value);
        case 'EaPagedProfile':
          return EaPagedProfile.fromJson(value);
        case 'EaPagedProfileInvite':
          return EaPagedProfileInvite.fromJson(value);
        case 'EaPagedTagRequest':
          return EaPagedTagRequest.fromJson(value);
        case 'EaPagination':
          return EaPagination.fromJson(value);
        case 'EaPasswordAuthentication':
          return EaPasswordAuthentication.fromJson(value);
        case 'EaPermission':
          return EaPermission.fromJson(value);
        case 'EaPermissionAccept':
          return EaPermissionAccept.fromJson(value);
        case 'EaPermissionCheck':
          return EaPermissionCheck.fromJson(value);
        case 'EaPermissionInput':
          return EaPermissionInput.fromJson(value);
        case 'EaPermissionInvite':
          return EaPermissionInvite.fromJson(value);
        case 'EaPermissionInviteCreate':
          return EaPermissionInviteCreate.fromJson(value);
        case 'EaPhoneVerification':
          return EaPhoneVerification.fromJson(value);
        case 'EaPhoneVerificationCheck':
          return EaPhoneVerificationCheck.fromJson(value);
        case 'EaPhoneVerificationInput':
          return EaPhoneVerificationInput.fromJson(value);
        case 'EaProfile':
          return EaProfile.fromJson(value);
        case 'EaProfileBase':
          return EaProfileBase.fromJson(value);
        case 'EaProfileInvite':
          return EaProfileInvite.fromJson(value);
        case 'EaProfileInviteCreate':
          return EaProfileInviteCreate.fromJson(value);
        case 'EaProfileStatus':
          return EaProfileStatus.fromJson(value);
        case 'EaProfileUpdate':
          return EaProfileUpdate.fromJson(value);
        case 'EaSuccess':
          return EaSuccess.fromJson(value);
        case 'EaTagRequest':
          return EaTagRequest.fromJson(value);
        case 'EaTagRequestCreate':
          return EaTagRequestCreate.fromJson(value);
        case 'EaTagRespond':
          return EaTagRespond.fromJson(value);
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
