import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrencesSingelton {
  static SharedPreferences? _instant;

  static Future<void> init() async {
    _instant = await SharedPreferences.getInstance();
  }

  static setBool(String key, bool value) {
    _instant!.setBool(key, value);
  }

  static bool getBool(String key, {bool defaultValue = false}) {
    return _instant?.getBool(key) ?? defaultValue;
  }

  static Future<void> setAuthDone(bool value) async {
    await _instant?.setBool('auth_done', value);
  }

  static bool isAuthDone() {
    return _instant?.getBool('auth_done') ?? false;
  }
}
