import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:badges/badges.dart' as badges;
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';

List<Map<String, dynamic>> navList = [
  {
    'id': 0,
    "title": "home",
    "iconPath": "assets/icons/icon_house.svg",
    "routePath": "",
    "isNoti": false,
    "futureToGetBadge": null
  },
  {
    'id': 1,
    "title": "explore",
    "iconPath": "assets/icons/icon_lipstick.svg",
    "routePath": "",
    "isNoti": false,
    "futureToGetBadge": null
  },
  {
    'id': 2,
    "title": "notifications",
    "iconPath": "assets/icons/icon_bell.svg",
    "routePath": "",
    "isNoti": true,
    "futureToGetBadge": null
  },
  {
    'id': 3,
    "title": "stores",
    "iconPath": "assets/icons/icon_map.svg",
    "routePath": "",
    "isNoti": false,
    "futureToGetBadge": null
  },
  {
    'id': 4,
    "title": "account",
    "iconPath": "assets/icons/User.svg",
    "routePath": "",
    "isNoti": true,
    "futureToGetBadge": null
  }
];

class AppNestedNavigation extends ConsumerWidget {
  const AppNestedNavigation({
    Key? key,
    required this.child,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));

  final StatefulNavigationShell child;

  void _goBranch(int index, BuildContext context) {
    child.goBranch(
      index,
      initialLocation: index == child.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Use watch to get providers

    return Scaffold(
      body: child,
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
        _goBranch(item['id'], context);
      },
      child: Container(
        child: _buildNavItemContent(context, item),
      ),
    );
  }

  Widget _buildNavItemContent(BuildContext context, Map<String, dynamic> item) {
    return (item['id'] == child.currentIndex)
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
              color: AppColors.primaryThirdElement,
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
      badgeStyle: const badges.BadgeStyle(badgeColor: AppColors.primaryElement),
      position: badges.BadgePosition.custom(top: -6, end: -6),
      showBadge: item["isNoti"],
      badgeContent: item["isNoti"] ? item["futureToGetBadge"] : const Text(""),
      child: _buildNavItemIcon(context, item),
    );
  }

  Widget _buildNavItemIcon(BuildContext context, Map<String, dynamic> item) {
    return SvgPicture.asset(
      item["iconPath"]!,
      color: item['id'] == child.currentIndex
          ? AppColors.primaryThirdElement
          : null,
      width: 24,
    );
  }
}
