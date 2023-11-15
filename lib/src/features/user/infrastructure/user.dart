import 'package:keshoohin_flutter_app/src/features/user/domain/app_user.dart';

abstract class UserRepository {
  Future<bool> hasUser();
  // Future<AppUser?> getCurrentUser();
  Future<void> saveCurrentUser(AppUser user);
}
