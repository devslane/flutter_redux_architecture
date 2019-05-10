import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  PreferencesService._();

  static final PreferencesService _instance = PreferencesService._();

  // TODO change the name of this
  factory PreferencesService() => _instance;

  static const AUTH_TOKEN = "auth_token";

  Future<SharedPreferences> _getInstance() async {
    return SharedPreferences.getInstance();
  }

  setAuthToken(String token) async {
    (await this._getInstance()).setString(PreferencesService.AUTH_TOKEN, token);
  }

  Future<String> getAuthToken() async {
    return (await this._getInstance()).getString(PreferencesService.AUTH_TOKEN);
  }
}
