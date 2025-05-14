import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrencesSingelton {
  static SharedPreferences? _instant;

  static Future<void> init() async {
    _instant = await SharedPreferences.getInstance();
  }

  static setBool(String key, bool value) {
    _instant!.setBool(key, value);
  }

  static getBool(String key) {
    _instant!.getBool(key);
  }
}
