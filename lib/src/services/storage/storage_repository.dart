abstract class StorageRepository {


  Future<List<String>?> getSearchingHistory();
  Future<void> setSearchingHistory(String value);
  Future<bool?> clearSearchingHistory();

  Future<List<int>?> getViewProductHistory();
  Future<void> setViewProductHistory(int productId);
  Future<bool?> clearViewProductHistory();

  // Future<AppUser?> getUser();
  Future<String?> getIdUser();
  Future<String?> getEmailUser();
  Future<String?> getNameUser();
  Future<String?> getPhoneUser();

  Future<void> setIdUser(String? id);
  Future<void> setEmailUser(String? email);
  Future<void> setNameUser(String? name);
  Future<void> setPhoneUser(String? phone);
}
