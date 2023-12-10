import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin_flutter_app/src/features/customer/user/domain/detail/detail.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  factory AppUser({
    String? token,
    String? email,
    String? phone,
    String? name,
    UserDetail? userDetail,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
