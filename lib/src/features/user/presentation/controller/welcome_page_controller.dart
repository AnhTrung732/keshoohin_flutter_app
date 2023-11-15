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

  Future<bool?> checkHasUser() async {
    final userService = ref.read(userServiceProvider);

    try {
      state = const AsyncLoading();
      final hasUser = await AsyncValue.guard(() => userService.maybeWhen(
            data: (value) => value.hasUser(),
            orElse: () {
              throw Exception("userServiceProvider is not available");
            },
          ));
    } catch (error) {
      // Handle error (optional)
    }
  }
}
