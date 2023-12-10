abstract class LocationRepository {
  Future<List<Map<String, String>>> getDistrict(String idProvince);
  Future<List<Map<String, String>>> getWard(String idDistrict);
  Future<List<Map<String, String>>> getProvince();
}
