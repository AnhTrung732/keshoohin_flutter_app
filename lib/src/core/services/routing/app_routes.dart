import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:keshoohin_flutter_app/src/core/common_provider/common_provider.dart';
import 'package:keshoohin_flutter_app/src/core/services/routing/app_routes_impl.dart';
import 'package:keshoohin_flutter_app/src/core/services/routing/app_routes_name.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/controller/app_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_routes.g.dart';

// private navigators
class AppRouter {
  late final AppStateNotifier appStateNotifier;
  final Ref ref;
  GoRouter get router => _goRouter;

  AppRouter({required this.ref}) {
    _initialize();
  }

  Future<void> _initialize() async {
    // Retrieve the Dio instance
    appStateNotifier = ref.read(appStateNotifierProvider.notifier);
  }

  late final GoRouter _goRouter = GoRouter(
    navigatorKey: parentNavigatorKey,
    initialLocation: APP_PAGE.welcome.toPath,
    routes: [
      welcomePageRoute(),
      signInPageRoute(),
      signUpPageRoute(),
      searchPageRoute(),
      appStatefulShellRoute(ref),
    ],
    redirect: (BuildContext context, GoRouterState state) async {
      print(state.fullPath);
      final isGoingtoWelcome = state.fullPath == APP_PAGE.welcome.toPath;
      final productDetailPath =
          '${APP_PAGE.home.toPath}/${APP_PAGE.product.toPath}';
      final isGoingtoProduct = state.fullPath == productDetailPath;

      final isLogedIn =
          ref.read(appStateNotifierProvider.notifier).appState.loginState;
      if (isGoingtoWelcome && isLogedIn) {
        return APP_PAGE.home.toPath;
      }

      if (isGoingtoProduct) {
        Future.delayed(Duration.zero, () {
          ref.read(hasProductBarControllerProvider.notifier).hasProductBar();
        });
      }
      return null;
    },
  );
}

@riverpod
AppRouter appRouter(AppRouterRef ref) => AppRouter(ref: ref);
