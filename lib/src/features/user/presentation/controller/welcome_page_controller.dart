import 'package:keshoohin_flutter_app/src/features/user/application/user_service.dart';
import 'package:keshoohin_flutter_app/src/features/user/application/user_service_provider.dart';
import 'package:keshoohin_flutter_app/src/services/routing/route_names.dart';
import 'package:keshoohin_flutter_app/src/services/routing/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'welcome_page_controller.g.dart';

@riverpod
class WelcomePageController extends _$WelcomePageController {
  @override
  FutureOr<void> build() {
    // no-op
  }

  Future<AsyncValue<bool>> checkHasUser() async {
    final userService = ref.read(userServiceProvider);
    //state = const AsyncLoading();
    return await AsyncValue.guard(() => userService.value!.hasUser());
  }
}
