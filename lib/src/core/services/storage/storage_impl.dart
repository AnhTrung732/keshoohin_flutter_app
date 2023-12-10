import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/core/global/app_init.dart';
import 'package:keshoohin_flutter_app/src/core/services/storage/storage_export.dart';

class StorageImpl implements StorageRepository {
  @override
  bool getCoachState() {
    return AppInit.storageService.getBool(AppConstants.STORAGE_COACH_STATE) ??
        false;
  }

  @override
  bool getLoginState() {
    return AppInit.storageService.getBool(AppConstants.STORAGE_LOGIN_STATE) ??
        false;
  }

  @override
  Future<void> setCoachState(bool state) async {
    AppInit.storageService.setBool(AppConstants.STORAGE_COACH_STATE, state);
  }

  @override
  Future<void> setLoginState(bool state) async {
    AppInit.storageService.setBool(AppConstants.STORAGE_LOGIN_STATE, state);
  }

  @override
  Future<bool> clearSearchingHistory() {
    return AppInit.storageService
        .setBool(AppConstants.STORAGE_SEARCHING_HISTORY, false);
  }

  @override
  Future<bool> clearViewProductHistory() {
    return AppInit.storageService
        .setBool(AppConstants.STORAGE_VIEW_PRODUCT_HISTORY, false);
  }

  @override
  String? getEmailUser() {
    return
        AppInit.storageService.getString(AppConstants.STORAGE_USER_EMAIL);
  }

  @override
  String? getTokenUser() {
    return
        AppInit.storageService.getString(AppConstants.STORAGE_USER_TOKEN);
  }

  @override
  String? getNameUser() {
    return
        AppInit.storageService.getString(AppConstants.STORAGE_USER_NAME);
  }

  @override
  String? getPhoneUser() {
    return 
        AppInit.storageService.getString(AppConstants.STORAGE_PHONE_USER);
  }

  @override
  List<String>? getSearchingHistory() {
    return AppInit.storageService
        .getStringList(AppConstants.STORAGE_SEARCHING_HISTORY);
  }

  @override
  List<int>? getViewProductHistory() {
    List<String>? res = AppInit.storageService
        .getStringList(AppConstants.STORAGE_VIEW_PRODUCT_HISTORY);
    return res?.reversed.map((e) => int.parse(e)).toList();
  }

  @override
  Future<void> setEmailUser(String? email) async {
    AppInit.storageService.setString(AppConstants.STORAGE_USER_EMAIL, email!);
  }

  @override
  Future<void> setTokenUser(String? id) async {
    AppInit.storageService.setString(AppConstants.STORAGE_USER_TOKEN, id!);
  }

  @override
  Future<void> setNameUser(String? name) async {
    AppInit.storageService.setString(AppConstants.STORAGE_USER_NAME, name!);
  }

  @override
  Future<void> setPhoneUser(String? phone) async {
    AppInit.storageService.setString(AppConstants.STORAGE_PHONE_USER, phone!);
  }

  @override
  Future<bool> setSearchingHistory(String value) async {
    //get current list
    List<String> searchingHistory = <String>[];
    List<String>? currList = AppInit.storageService
        .getStringList(AppConstants.STORAGE_SEARCHING_HISTORY);
    print("loading local data storage");
    print(currList);
    searchingHistory = currList!;
    //add the new value to tail of list, remove the oldest value added if the length of list > 10
    searchingHistory.add(value);
    searchingHistory = [
      ...{...searchingHistory}
    ];
    if (searchingHistory.length > 10) searchingHistory.removeAt(0);
    await AppInit.storageService
        .setStringList(AppConstants.STORAGE_SEARCHING_HISTORY, searchingHistory)
        .then((bool success) {
      return success;
    }).onError((error, stackTrace) => throw error!);
    return false;
  }

  @override
  Future<bool> setViewProductHistory(int productId) async {
    List<String> viewHistory = <String>[];
    List<String>? currList = AppInit.storageService
        .getStringList(AppConstants.STORAGE_VIEW_PRODUCT_HISTORY);
    print("loading local data storage");
    print(currList);
    viewHistory = currList!;
    //add the new value to tail of list, remove the oldest value added if the length of list > 10
    viewHistory.add(productId.toString());
    viewHistory = [
      ...{...viewHistory}
    ];

    await AppInit.storageService
        .setStringList(AppConstants.STORAGE_VIEW_PRODUCT_HISTORY, viewHistory)
        .then((bool success) {
      return success;
    }).onError((error, stackTrace) => throw error!);
    return false;
  }
}
