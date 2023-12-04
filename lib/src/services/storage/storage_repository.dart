abstract class StorageRepository {
  Future<void> setCoachState(bool state);
  bool? getCoachState();

  Future<void> setLoginState(bool state);
  bool? getLoginState();

  List<String>? getSearchingHistory();
  Future<void> setSearchingHistory(String value);
  Future<bool?> clearSearchingHistory();

  List<int>? getViewProductHistory();
  Future<void> setViewProductHistory(int productId);
  Future<bool?> clearViewProductHistory();

  // Future<AppUser?> getUser();
  String? getIdUser();
  String? getEmailUser();
  String? getNameUser();
  String? getPhoneUser();

  Future<void> setIdUser(String? id);
  Future<void> setEmailUser(String? email);
  Future<void> setNameUser(String? name);
  Future<void> setPhoneUser(String? phone);
}
