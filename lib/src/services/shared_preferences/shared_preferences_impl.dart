import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/services/shared_preferences/shared_preferences_repository.dart';
import 'package:keshoohin_flutter_app/src/services/shared_preferences/string_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesImpl implements SharedPreferencesRepository {
  final SharedPreferences prefs;
  SharedPreferencesImpl(this.prefs);

  @override
  Future<bool?> clearCoachGuideState(bool newState) async {
    return await prefs.remove(StringList.coachState);
  }

  @override
  Future<bool?> clearSearchingHistory() async {
    return await prefs.remove(StringList.searchingHistory);
  }

  @override
  Future<bool?> clearViewProductHistory() async {
    // TODO: implement clearViewProductHistory
    return await prefs.remove(StringList.viewProductHistory);
  }

  @override
  Future<bool?> getCoachGuideState() async {
    bool? res = prefs.getBool(StringList.coachState);
    return res ?? false;
  }

  @override
  Future<String?> getEmailUser() async {
    return prefs.getString(StringList.emailUser);
    ;
  }

  @override
  Future<String?> getIdUser() async {
    print("Is implementing get Id");
    return await prefs.getString(StringList.idUser);
  }

  @override
  Future<String?> getNameUser() async {
    return prefs.getString(StringList.nameUser);
  }

  @override
  Future<String?> getPhoneUser() async {
    return prefs.getString(StringList.phoneUser);
  }

  @override
  Future<List<String>?> getSearchingHistory() async {
    return prefs.getStringList(StringList.searchingHistory);
  }

  @override
  Future<List<int>?> getViewProductHistory() async {
    List<String>? res = prefs.getStringList(StringList.viewProductHistory);
    return res!.reversed.map((e) => int.parse(e)).toList();
  }

  @override
  Future<bool> setCoachGuideState(bool newState) async {
    await prefs.setBool(StringList.coachState, newState).then((bool success) {});
    return true;
  }

  @override
  Future<bool> setEmailUser(String? email) async {
    await prefs.setString(StringList.emailUser, email!).then((bool success) {});
    return true;
  }

  @override
  Future<bool> setIdUser(String? id) async {
    await prefs.setString(StringList.idUser, id!).then((bool success) {});
    return true;
  }

  @override
  Future<bool> setNameUser(String? name) async {
    await prefs.setString(StringList.nameUser, name!).then((bool success) {});
    return true;
  }

  @override
  Future<bool> setPhoneUser(String? phone) async {
    await prefs.setString(StringList.phoneUser, phone!).then((bool success) {});
    return true;
  }

  @override
  Future<bool> setSearchingHistory(String value) async {
    //get current list
    List<String> searchingHistory = <String>[];
    List<String>? currList = prefs.getStringList(StringList.searchingHistory);
    print("loading local data storage");
    print(currList);
    if (currList != null) searchingHistory = currList;
    //add the new value to tail of list, remove the oldest value added if the length of list > 10
    searchingHistory.add(value);
    searchingHistory = [
      ...{...searchingHistory}
    ];
    if (searchingHistory.length > 10) searchingHistory.removeAt(0);
    await prefs
        .setStringList(StringList.searchingHistory, searchingHistory)
        .then((bool success) {
      return success;
    }).onError((error, stackTrace) => throw error!);
    return false;
  }

  @override
  Future<bool> setViewProductHistory(int productId) async {
    List<String> viewHistory = <String>[];
    List<String>? currList = prefs.getStringList(StringList.viewProductHistory);
    print("loading local data storage");
    print(currList);
    if (currList != null) viewHistory = currList;
    //add the new value to tail of list, remove the oldest value added if the length of list > 10
    viewHistory.add(productId.toString());
    viewHistory = [
      ...{...viewHistory}
    ];

    await prefs
        .setStringList(StringList.viewProductHistory, viewHistory)
        .then((bool success) {
      return success;
    }).onError((error, stackTrace) => throw error!);
    return false;
  }
}
