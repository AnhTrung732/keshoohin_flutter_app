import 'package:keshoohin_flutter_app/src/features/customer/user/infrastructure/user/user.dart';
import 'package:keshoohin_flutter_app/src/features/customer/user/infrastructure/user/user_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@riverpod
UserRepository userRepository(UserRepositoryRef ref)  =>
    UserRepositoryImpl(ref);
