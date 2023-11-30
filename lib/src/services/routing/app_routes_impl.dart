import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_nested_navigation.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/app_circular_progress_indicator.dart';
import 'package:keshoohin_flutter_app/src/features/collection/presentation/category_page.dart';
import 'package:keshoohin_flutter_app/src/features/collection/presentation/home_page.dart';
import 'package:keshoohin_flutter_app/src/features/map/presentation/map_page.dart';
import 'package:keshoohin_flutter_app/src/features/notification/presentation/notification_page.dart';
import 'package:keshoohin_flutter_app/src/features/search/presentation/search_page.dart';
import 'package:keshoohin_flutter_app/src/features/sign_in/presentation/sign_in_page.dart';
import 'package:keshoohin_flutter_app/src/features/sign_up/presentation/sign_up_page.dart';
import 'package:keshoohin_flutter_app/src/features/user/application/user_service_provider.dart';
import 'package:keshoohin_flutter_app/src/features/user/presentation/user_page.dart';
import 'package:keshoohin_flutter_app/src/features/user/presentation/welcome_page.dart';
import 'package:keshoohin_flutter_app/src/services/routing/app_routes_name.dart';

final parentNavigatorKey = GlobalKey<NavigatorState>();
final homeTabNavigatorKey = GlobalKey<NavigatorState>();
final collectionTabNavigatorKey = GlobalKey<NavigatorState>();
final notiTabNavigatorKey = GlobalKey<NavigatorState>();
final mapTabNavigatorKey = GlobalKey<NavigatorState>();
final userTabNavigatorKey = GlobalKey<NavigatorState>();

Page getPage({
  required Widget child,
  required GoRouterState state,
}) {
  return MaterialPage(
    key: state.pageKey,
    child: child,
  );
}

GoRoute welcomePageRoute() {
  return GoRoute(
    path: APP_PAGE.welcome.toPath,
    name: APP_PAGE.welcome.toName,
    pageBuilder: (context, GoRouterState state) {
      return getPage(
        child: const WelcomePage(),
        state: state,
      );
    },
  );
}

GoRoute signInPageRoute() => GoRoute(
      parentNavigatorKey: parentNavigatorKey,
      name: APP_PAGE.login.toName,
      path: APP_PAGE.login.toPath,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const SignInPage(),
        transitionsBuilder: _buildSlideTransition,
      ),
    );

GoRoute signUpPageRoute() => GoRoute(
      parentNavigatorKey: parentNavigatorKey,
      name: APP_PAGE.signup.toName,
      path: APP_PAGE.signup.toPath,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const SignUpPage(),
        transitionsBuilder: _buildSlideTransition,
      ),
    );

GoRoute searchPageRoute() => GoRoute(
      parentNavigatorKey: parentNavigatorKey,
      name: APP_PAGE.search.toName,
      path: APP_PAGE.search.toPath,
      builder: (context, state) => const SearchPage(),
    );

StatefulShellRoute appStatefulShellRoute() {
  return StatefulShellRoute.indexedStack(
    parentNavigatorKey: parentNavigatorKey,
    pageBuilder: (
      BuildContext context,
      GoRouterState state,
      StatefulNavigationShell child,
    ) {
      return getPage(
        child: AppNestedNavigation(
          child: child,
        ),
        state: state,
      );
    },
    branches: [
      StatefulShellBranch(
        navigatorKey: homeTabNavigatorKey,
        routes: [
          GoRoute(
            name: APP_PAGE.home.toName,
            path: APP_PAGE.home.toPath,
            pageBuilder: (context, GoRouterState state) {
              return getPage(
                child: const HomePage(),
                state: state,
              );
            },
          ),
        ],
      ),
      StatefulShellBranch(
        navigatorKey: collectionTabNavigatorKey,
        routes: [
          GoRoute(
            name: APP_PAGE.category.toName,
            path: APP_PAGE.category.toPath,
            pageBuilder: (context, state) {
              return getPage(
                child: const CategoryPage(),
                state: state,
              );
            },
          ),
        ],
      ),
      StatefulShellBranch(
        navigatorKey: notiTabNavigatorKey,
        routes: [
          GoRoute(
            name: APP_PAGE.notification.toName,
            path: APP_PAGE.notification.toPath,
            pageBuilder: (context, state) {
              return getPage(
                child: const NotificationPage(),
                state: state,
              );
            },
          ),
        ],
      ),
      StatefulShellBranch(
        navigatorKey: mapTabNavigatorKey,
        routes: [
          GoRoute(
            name: APP_PAGE.map.toName,
            path: APP_PAGE.map.toPath,
            pageBuilder: (context, state) {
              return getPage(
                child: const MapPage(),
                state: state,
              );
            },
          ),
        ],
      ),
      StatefulShellBranch(
        navigatorKey: userTabNavigatorKey,
        routes: [
          GoRoute(
            name: APP_PAGE.user.toName,
            path: APP_PAGE.user.toPath,
            pageBuilder: (context, state) {
              return getPage(
                child: const UserPage(),
                state: state,
              );
            },
          ),
        ],
      ),
    ],
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
