import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:keshoohin_flutter_app/src/app.dart';
import 'package:keshoohin_flutter_app/src/features/cart/presentation/cart_page.dart';
import 'package:keshoohin_flutter_app/src/features/map/presentation/map_page.dart';
import 'package:keshoohin_flutter_app/src/features/collection/presentation/home_page.dart';
import 'package:keshoohin_flutter_app/src/features/search/presentation/search_page.dart';
import 'package:keshoohin_flutter_app/src/features/sign_in/presentation/sign_in_page.dart';
import 'package:keshoohin_flutter_app/src/features/user/presentation/welcome_page.dart';
import 'package:keshoohin_flutter_app/src/services/routing/route_names.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routes.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  // final parentKey = GlobalKey<NavigatorState>();
  // final shellKey = GlobalKey<NavigatorState>();
  // final searchShellKey = GlobalKey<NavigatorState>();

  return GoRouter(
      navigatorKey: GlobalKey<NavigatorState>(),
      initialLocation: '/',
      routes: getRoutes());
}

List<GoRoute> getRoutes() {
  return [
    GoRoute(
      path: '/',
      builder: (context, state) => const WelcomePage(),
    ),
    SignInPageRoute(),
    HomeRoute(),
    CartPageRoute(),
    SearchPageRoute(),
    MapPageRoute(),
  ];
}

class KeshoohinPageRoute extends GoRoute {
  KeshoohinPageRoute()
      : super(
          name: RouteNames.keshoohinPage,
          path: "/welcome_screen",
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const KeshoohinApp(),
            transitionsBuilder: _buildSlideTransition,
          ),
        );
}

class SignInPageRoute extends GoRoute {
  SignInPageRoute()
      : super(
          name: RouteNames.signInPage,
          path: "/sign_in",
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const SignInPage(),
            transitionsBuilder: _buildSlideTransition,
          ),
        );
}

class HomeRoute extends GoRoute {
  HomeRoute()
      : super(
          name: RouteNames.homePage,
          path: "/home_page",
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const HomePage(),
            transitionsBuilder: _buildSlideTransition,
          ),
        );
}

class CartPageRoute extends GoRoute {
  CartPageRoute()
      : super(
          name: RouteNames.cartPage,
          path: "/cart_page",
          builder: (context, state) => const CartPage(),
        );
}

class SearchPageRoute extends GoRoute {
  SearchPageRoute()
      : super(
          name: RouteNames.searchPage,
          path: "/search_page",
          builder: (context, state) => const SearchPage(),
        );
}

class MapPageRoute extends GoRoute {
  MapPageRoute()
      : super(
          name: RouteNames.mapPage,
          path: "/map_page",
          builder: (context, state) => const MapPage(),
        );
}

Widget _buildSlideTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return SlideTransition(
    position: Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(animation),
    child: child,
  );
}
