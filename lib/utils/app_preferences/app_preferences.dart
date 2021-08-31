import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreference {
  static final AppPreference _appPreference = AppPreference._internal();

  factory AppPreference() {
    return _appPreference;
  }

  AppPreference._internal();

  SharedPreferences? preferences;

  Future<void> initialAppPreference() async {
    preferences = await SharedPreferences.getInstance();
  }

  Future setStringData(String key, String value) async {
    await preferences?.setString(key, value);
  }

  Future getStringData(String key) async {
    return preferences?.getString(key);
  }

  Future setBoolData(String key, bool value) async {
    await preferences?.setBool(key, value);
  }

  Future getBoolData(String key) async {
    return preferences?.getBool(key);
  }

  Future setDoubleData(String key, double value) async {
    await preferences?.setDouble(key, value);
  }

  Future getDoubleData(String key) async {
    return preferences?.getDouble(key);
  }

  Future clearSharedPreferences() async {
    await preferences?.clear();
  }
}

