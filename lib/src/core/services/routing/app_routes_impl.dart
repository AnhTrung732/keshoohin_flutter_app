import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:keshoohin_flutter_app/src/core/services/routing/app_routes_name.dart';
import 'package:keshoohin_flutter_app/src/core/services/services_export.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/app_nested_navigation.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/controller/app_controller.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/product_entity.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/pages/category_page.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/pages/home_page.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/pages/product_detail_page.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/product_detail_image_view.dart';
import 'package:keshoohin_flutter_app/src/features/customer/sign_in/presentation/sign_in_page.dart';
import 'package:keshoohin_flutter_app/src/features/customer/sign_up/presentation/sign_up_page.dart';
import 'package:keshoohin_flutter_app/src/features/customer/user/presentation/user_page.dart';
import 'package:keshoohin_flutter_app/src/features/customer/user/presentation/welcome_page.dart';
import 'package:keshoohin_flutter_app/src/features/map/presentation/map_page.dart';
import 'package:keshoohin_flutter_app/src/features/notification/presentation/notification_page.dart';
import 'package:keshoohin_flutter_app/src/features/search/presentation/search_page.dart';
import 'package:riverpod/riverpod.dart';

final parentNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'parentKey');
final homeTabNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'hometab');
final collectionTabNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'collection');
final notiTabNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'noti');
final mapTabNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'map');
final userTabNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'user');

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
    parentNavigatorKey: parentNavigatorKey,
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

StatefulShellRoute appStatefulShellRoute(Ref ref) {
  return StatefulShellRoute.indexedStack(
    pageBuilder: (
      BuildContext context,
      GoRouterState state,
      StatefulNavigationShell child,
    ) {
      return getPage(
        child: AppNestedNavigationBar(
          child: child,
        ),
        state: state,
      );
    },
    branches: [
      StatefulShellBranch(navigatorKey: homeTabNavigatorKey, routes: [
        GoRoute(
            name: APP_PAGE.home.toName,
            path: APP_PAGE.home.toPath,
            pageBuilder: (context, GoRouterState state) {
              return getPage(
                child: const HomePage(),
                state: state,
              );
            },
            routes: [
              GoRoute(
                  path: APP_PAGE.product.toPath,
                  name: APP_PAGE.product.toName,
                  builder: (context, state) => ProductDetailPage(
                        idProduct: int.parse(state
                            .pathParameters[APP_PAGE.product.toParameter]!),
                      ),
                  // onExit: (context) {
                  //   ref
                  //       .read(hasProductBarControllerProvider.notifier)
                  //       .removeProductBar();
                  //   return true;
                  // },
                  routes: [
                    GoRoute(
                      path: APP_PAGE.productImages.toPath,
                      name: APP_PAGE.productImages.toName,
                      builder: (context, state) {
                        List<ImageProductEntity> imageList =
                            state.extra as List<ImageProductEntity>;
                        return ProductDetailImageView(
                          imageList: imageList,
                          initImage: int.parse(state.uri.queryParameters[
                              APP_PAGE.productImages.toParameter]!),
                        );
                      },
                    )
                  ]),
            ])
      ]),
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
