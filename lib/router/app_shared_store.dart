import 'package:shared_preferences/shared_preferences.dart';

class AppSharedStore {
  final SharedPreferences _prefs;

  AppSharedStore(SharedPreferences prefs) : _prefs = prefs;

  Future<T?> get<T>(String key) async {
    _prefs;
    final T? value = _prefs.get(key) as T?;
    return value;
  }

  Future<T> set<T>(String key, T value) async {
    switch (T) {
      case bool:
        _prefs.setBool(key, value as bool);
        break;
      case String:
        _prefs.setString(key, value as String);
        break;
      case int:
        _prefs.setInt(key, value as int);
        break;
      case double:
        _prefs.setDouble(key, value as double);
        break;
      default:
        _prefs.setString(key, value.toString());
    }
    return value;
  }

  Future<T> update<T>(String key, T value) async {
    _prefs.remove(key);
    switch (T) {
      case bool:
        _prefs.setBool(key, value as bool);
        break;
      case String:
        _prefs.setString(key, value as String);
        break;
      case int:
        _prefs.setInt(key, value as int);
        break;
      case double:
        _prefs.setDouble(key, value as double);
        break;
      default:
        _prefs.setString(key, value.toString());
    }
    return value;
  }

  delete(key) async {
    _prefs.remove(key);
  }

  clear() async {
    _prefs.clear();
  }
}
