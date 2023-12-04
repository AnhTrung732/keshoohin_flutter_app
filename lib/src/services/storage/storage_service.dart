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

  String? getString(String key)  {
    return _pref.getString(key);
  }

  Future<bool> setStringList(String key, List<String> value) async {
    return _pref.setStringList(key, value);
  }

  List<String>? getStringList(String key)  {
    return _pref.getStringList(key);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _pref.setBool(key, value);
  }

  bool? getBool(String key)  {
    return _pref.getBool(key);
  }
}
