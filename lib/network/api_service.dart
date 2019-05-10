import 'dart:async';
import 'dart:convert';

import 'package:flutter_demo/app_config.dart';
import 'package:flutter_demo/service/preference_service.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

String BASE_URL = AppConfig.BASE_URL;

abstract class APIService {
  Future<Map<String, dynamic>> get(String url,
      {Map<String, String> params = null, bool useAuthHeaders = true}) async {
    return this._getResponse(await http.get(
        this._getUrlWithParams(url, params: params),
        headers: (await this._getHeaders(useAuthHeaders: useAuthHeaders))));
  }

  Future<Map<String, dynamic>> post(String url,
      {@required body, bool useAuthHeaders = true}) async {
    final response = await http.post(this._getUrl(url),
        headers: (await this._getHeaders(useAuthHeaders: useAuthHeaders)),
        body: json.encode(body));

    return this._getResponse(response);
  }

  // Helper Methods for API Services
  String _getUrl(String url) {
    print(BASE_URL + url);
    return BASE_URL + url;
  }

  Future<Map<String, String>> _getHeaders({useAuthHeaders = true}) async {
    print(await PreferencesService().getAuthToken());

    Map<String, String> map = new Map();

    if (useAuthHeaders) {
      map["Authorization"] = "${await PreferencesService().getAuthToken()}";
    }

    return map;
  }

  String _getUrlWithParams(url, {Map<String, String> params}) {
    var absUrl = this._getUrl(url);

    if (params != null) {
      var paramsString = "";
      params.forEach((key, value) {
        paramsString += "&$key=$value";
      });

      return absUrl + "?" + paramsString.substring(1);
    }

    return absUrl;
  }

  Map<String, dynamic> _getResponse(http.Response response) {
    final body = json.decode(response.body);
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw Exception(body["message"]);
    }

    return body;
  }
}
