import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'storage_service.g.dart';
@riverpod
Future<StorageService> storageService (StorageServiceRef ref) => StorageService().init();

class StorageService {
  late final SharedPreferences _pref;

  Future<StorageService> init() async {
    _pref = await SharedPreferences.getInstance();
    return this;
  }

  Future<bool> setString(String key, String value) async {
    return await _pref.setString(key, value);
  }

  Future<String?> getString(String key) async {
    return _pref.getString(key);
  }

  Future<bool> setStringList(String key, List<String> value) async {
    return _pref.setStringList(key, value);
  }

  Future<List<String>?> getStringList(String key) async {
    return _pref.getStringList(key);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _pref.setBool(key, value);
  }

  Future<bool?> getBool(String key) async {
    return _pref.getBool(key);
  }
}
