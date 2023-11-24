import 'package:keshoohin_flutter_app/src/features/user/application/user_service.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user/user_provider.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user_detail/user_detail_provider.dart';
import 'package:provider/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_service_provider.g.dart';

@riverpod
Future<UserService> userService(UserServiceRef ref) async => UserService(ref);
