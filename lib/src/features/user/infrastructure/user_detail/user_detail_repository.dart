import 'package:keshoohin_flutter_app/src/features/user/domain/detail/detail.dart';

abstract class UserDetailRepository {
  Future<UserDetail> setUserLocation(String city, String district,
      String ward, String addressDetail);
}
