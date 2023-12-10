import 'package:keshoohin_flutter_app/src/features/customer/user/application/user_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_service_provider.g.dart';

@riverpod
UserService userService(UserServiceRef ref) => UserService(ref);
