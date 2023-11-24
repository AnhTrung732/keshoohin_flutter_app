import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:keshoohin_flutter_app/src/features/collection/presentation/home_page.dart';
import 'package:keshoohin_flutter_app/src/services/routing/route_names.dart';
import 'package:keshoohin_flutter_app/src/services/routing/routes.dart';
import 'package:keshoohin_flutter_app/src/themes/theme.dart';
import 'package:keshoohin_flutter_app/src/utils/constants/nav_list.dart';
import 'package:keshoohin_flutter_app/src/utils/shortcut_items.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:badges/badges.dart' as badges;

class KeshoohinApp extends ConsumerStatefulWidget {
  const KeshoohinApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _KeshoohinAppState();
}

class _KeshoohinAppState extends ConsumerState<KeshoohinApp> {
  int _index = 0;

  final QuickActions quickActions = const QuickActions();

  void _setupQuickActions() {
    quickActions.setShortcutItems(shortcutItems);
  }

  void _handleQuickActions() {
    quickActions.initialize((shortcutType) {
      if (shortcutType == 'action_search') {
        ref.read(routerProvider).goNamed(RouteNames.searchPage);
      } else if (shortcutType == 'action_cart') {
        ref.read(routerProvider).goNamed(RouteNames.cartPage);
      } else if (shortcutType == 'action_find_store') {
        ref.read(routerProvider).goNamed(RouteNames.mapPage);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    // NotificationController()
    //     .requestFirebaseToken()
    //     .then((value) => context.read<CartProvider>().deviceTokenFCM = value);
    _setupQuickActions();
    _handleQuickActions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: const [
          HomePage(),
          // Add other pages here
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    return Container(
      decoration: _buildContainerDecoration(context),
      padding: _buildContainerPadding(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _buildNavigationItems(context),
      ),
    );
  }

  BoxDecoration _buildContainerDecoration(BuildContext context) {
    return BoxDecoration(
      color: Theme.of(context).own().defaultContainerColor,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(5),
        topRight: Radius.circular(5),
      ),
      boxShadow: [
        BoxShadow(
          color: Theme.of(context).own().defaultScaffoldColor,
          spreadRadius: 1,
        ),
      ],
    );
  }

  EdgeInsets _buildContainerPadding(BuildContext context) {
    return EdgeInsets.symmetric(
      vertical: 5,
      horizontal: Theme.of(context).own().defaultVerticalPaddingOfScreen,
    );
  }

  List<Widget> _buildNavigationItems(BuildContext context) {
    return [
      for (var i in navList) _buildNavigationItem(context, i),
    ];
  }

  Widget _buildNavigationItem(BuildContext context, Map<String, dynamic> item) {
    return InkWell(
      onTap: () {
        setState(() {
          _index = item['id'];
        });
      },
      child: Container(
        child: _buildNavItemContent(context, item),
      ),
    );
  }

  Widget _buildNavItemContent(BuildContext context, Map<String, dynamic> item) {
    return (item['id'] == _index)
        ? _buildSelectedNavItem(context, item)
        : _buildUnselectedNavItem(context, item);
  }

  Widget _buildSelectedNavItem(
      BuildContext context, Map<String, dynamic> item) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromRGBO(244, 163, 155, 0.4),
      ),
      child: Row(
        children: [
          _buildNavItemIcon(context, item),
          const SizedBox(width: 5),
          Text(
            item['title'].toString().tr(),
            style: const TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUnselectedNavItem(
      BuildContext context, Map<String, dynamic> item) {
    return badges.Badge(
      position: badges.BadgePosition.custom(top: -6, end: -6),
      showBadge: item["isNoti"],
      badgeContent: item["isNoti"] ? item["futureToGetBadge"] : const Text(""),
      child: _buildNavItemIcon(context, item),
    );
  }

  Widget _buildNavItemIcon(BuildContext context, Map<String, dynamic> item) {
    return SvgPicture.asset(
      item["iconPath"]!,
      color: item['id'] == _index ? Colors.red : null,
      width: 24,
    );
  }
}
