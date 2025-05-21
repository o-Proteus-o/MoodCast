import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDataSource {
  static final AuthLocalDataSource _instance = AuthLocalDataSource._internal();
  static SharedPreferences? _prefs;

  static const String _keyAccessToken = 'access_token';
  static const String _keyRefreshToken = 'refresh_token';
  static const String _keyIsLoggedIn = 'is_logged_in';

  AuthLocalDataSource._internal();

  factory AuthLocalDataSource() => _instance;

  static Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  Future<void> saveAuthData({
    required String accessToken,
    required String refreshToken,
  }) async {
    await _prefs?.setString(_keyAccessToken, accessToken);
    await _prefs?.setString(_keyRefreshToken, refreshToken);
    await _prefs?.setBool(_keyIsLoggedIn, true);
  }

  String? get accessToken => _prefs?.getString(_keyAccessToken);
  String? get refreshToken => _prefs?.getString(_keyRefreshToken);
  bool get isLoggedIn => _prefs?.getBool(_keyIsLoggedIn) ?? false;

  Future<void> clearAuthData() async {
    await _prefs?.remove(_keyAccessToken);
    await _prefs?.remove(_keyRefreshToken);
    await _prefs?.setBool(_keyIsLoggedIn, false);
  }
}
