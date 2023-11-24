import 'package:keshoohin_flutter_app/src/features/user/domain/app_user.dart';
import 'package:keshoohin_flutter_app/src/features/user/domain/detail/detail.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/location/location.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user_detail/user_detail_repository.dart';

class UserDetailImpl extends UserDetailRepository {
  final LocationRepository locationRepository;

  UserDetailImpl(this.locationRepository);

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
    return UserDetail(city: city!, district: district!, ward: ward!, addressDetail: addressDetail);
  }
}
