import 'package:keshoohin_flutter_app/src/features/customer/user/infrastructure/user_detail/user_detail_impl.dart';
import 'package:keshoohin_flutter_app/src/features/customer/user/infrastructure/user_detail/user_detail_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_detail_provider.g.dart';

@riverpod
Future<UserDetailRepository> userDetailRepository(
        UserDetailRepositoryRef ref) async =>
    UserDetailImpl(ref: ref);
