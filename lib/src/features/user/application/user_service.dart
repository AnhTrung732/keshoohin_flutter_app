import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/features/user/domain/detail/detail.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user/user_provider.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user_detail/user_detail_provider.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user_detail/user_detail_repository.dart';

import '../infrastructure/user/user.dart';

class UserService {
  final Ref ref;

  UserService(this.ref);
  // final UserRepository userRepository;
  // final UserDetailRepository userDetailRepository;

  Future<bool> hasUser() {
    return ref.read(userRepositoryProvider).hasUser();
  }

  Future<UserDetail> setUserLocation(String cityCode, String districtCode,
      String wardCode, String addressDetail) {
    return ref
        .read(userDetailRepositoryProvider)
        .value!
        .setUserLocation(cityCode, districtCode, wardCode, addressDetail);
  }
}
