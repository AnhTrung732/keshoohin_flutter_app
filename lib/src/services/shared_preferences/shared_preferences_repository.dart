abstract class SharedPreferencesRepository {
  Future<bool?> getCoachGuideState();
  Future<bool?> setCoachGuideState(bool newState);
  Future<bool?> clearCoachGuideState(bool newState);
  // Future<bool> saveLoginState(AppUser account);

  Future<List<String>?> getSearchingHistory();
  Future<bool?> setSearchingHistory(String value);
  Future<bool?> clearSearchingHistory();

  Future<List<int>?> getViewProductHistory();
  Future<bool?> setViewProductHistory(int productId);
  Future<bool?> clearViewProductHistory();

  // Future<AppUser?> getUser();
  Future<String?> getIdUser();
  Future<String?> getEmailUser();
  Future<String?> getNameUser();
  Future<String?> getPhoneUser();

  Future<bool?> setIdUser(String? id);
  Future<bool?> setEmailUser(String? email);
  Future<bool?> setNameUser(String? name);
  Future<bool?> setPhoneUser(String? phone);
}
