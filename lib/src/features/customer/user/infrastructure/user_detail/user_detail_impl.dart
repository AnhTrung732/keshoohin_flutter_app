import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/features/customer/user/domain/detail/detail.dart';
import 'package:keshoohin_flutter_app/src/features/customer/user/infrastructure/location/location_provider.dart';
import 'package:keshoohin_flutter_app/src/features/customer/user/infrastructure/user_detail/user_detail_repository.dart';

class UserDetailImpl extends UserDetailRepository {
  final Ref ref;
  late final locationRepository;

  UserDetailImpl({required this.ref}) {
    _initialize();
  }

  Future<void> _initialize() async {
    locationRepository = ref.read(locationRepositoryProvider);
  }

  Future<String?> _getCityNameByCode(String code) async {
    await locationRepository.getProvince().then(
        (value) => value[value.indexWhere((f) => f['id'] == code)]['name']!);
    return null;
  }

  Future<String?> _getDistrictNameByCode(String code) async {
    await locationRepository.getDistrict(code).then(
        (value) => value[value.indexWhere((f) => f['id'] == code)]['name']!);
    return null;
  }

  Future<String?> _getWardNameByCode(String code) async {
    await locationRepository.getWard(code).then(
        (value) => value[value.indexWhere((f) => f['id'] == code)]['name']!);
    return null;
  }

  @override
  Future<UserDetail> setUserLocation(String cityCode, String districtCode,
      String wardCode, String addressDetail) async {
    String? city = await _getCityNameByCode(cityCode);
    String? district = await _getCityNameByCode(districtCode);
    String? ward = await _getCityNameByCode(wardCode);
    return UserDetail(
        city: city!,
        district: district!,
        ward: ward!,
        addressDetail: addressDetail);
  }
}
