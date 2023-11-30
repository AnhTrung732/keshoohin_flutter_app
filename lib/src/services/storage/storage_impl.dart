import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/common/global/app_init.dart';
import 'package:keshoohin_flutter_app/src/services/storage/storage_repository.dart';
import 'package:keshoohin_flutter_app/src/services/storage/app_constants.dart';
import 'package:keshoohin_flutter_app/src/services/storage/storage_service.dart';

class StorageImpl implements StorageRepository {
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
  Future<String> getEmailUser() async {
    String? res =
        await AppInit.storageService.getString(AppConstants.STORAGE_USER_EMAIL);
    return res ?? "Chuoi trong";
  }

  @override
  Future<String> getIdUser() async {
    String? res =
        await AppInit.storageService.getString(AppConstants.STORAGE_USER_ID);
    return res ?? "Chuoi trong";
  }

  @override
  Future<String> getNameUser() async {
    String? res =
        await AppInit.storageService.getString(AppConstants.STORAGE_USER_NAME);
    return res ?? "Chuoi trong";
  }

  @override
  Future<String> getPhoneUser() async {
    String? res =
        await AppInit.storageService.getString(AppConstants.STORAGE_PHONE_USER);
    return res ?? "Chuoi trong";
  }

  @override
  Future<List<String>?> getSearchingHistory() async {
    return await AppInit.storageService
        .getStringList(AppConstants.STORAGE_SEARCHING_HISTORY);
  }

  @override
  Future<List<int>?> getViewProductHistory() async {
    List<String>? res = await AppInit.storageService
        .getStringList(AppConstants.STORAGE_VIEW_PRODUCT_HISTORY);
    return res?.reversed.map((e) => int.parse(e)).toList();
  }

  @override
  Future<void> setEmailUser(String? email) async {
    AppInit.storageService.setString(AppConstants.STORAGE_USER_EMAIL, email!);
  }

  @override
  Future<void> setIdUser(String? id) async {
    AppInit.storageService.setString(AppConstants.STORAGE_USER_ID, id!);
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
    List<String>? currList = await AppInit.storageService
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
    List<String>? currList = await AppInit.storageService
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
