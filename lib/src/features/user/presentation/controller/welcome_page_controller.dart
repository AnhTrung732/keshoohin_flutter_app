import 'package:keshoohin_flutter_app/src/features/user/application/user_service.dart';
import 'package:keshoohin_flutter_app/src/features/user/application/user_service_provider.dart';
import 'package:keshoohin_flutter_app/src/services/routing/app_routes_name.dart';
import 'package:keshoohin_flutter_app/src/services/routing/app_routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'welcome_page_controller.g.dart';

@riverpod
class WelcomePageController extends _$WelcomePageController {
  @override
  FutureOr<void> build() {
    // no-op
  }

}
