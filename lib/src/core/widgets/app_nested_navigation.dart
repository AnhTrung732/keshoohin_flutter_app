import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/controller/app_controller.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/widgets/product_detail_bottom_navigation_bar.dart';
import 'package:line_icons/line_icons.dart';

class AppNestedNavigationBar extends ConsumerStatefulWidget {
  const AppNestedNavigationBar({required this.child, super.key});
  final StatefulNavigationShell child;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AppNestedNavigationBarState();
}

class _AppNestedNavigationBarState
    extends ConsumerState<AppNestedNavigationBar> {
  bool _isLeftScrolled = false;
  bool _isRightScrolled = false;
  double _horizontalDragDistance = 0.0;
  final double _threshold = 30.0;
  Timer? _autoScrollTimer;
  @override
  Widget build(BuildContext context) {
    bool hasProductBar = ref.watch(hasProductBarControllerProvider);
    return Scaffold(
        body: widget.child,
        bottomNavigationBar: hasProductBar == true
            ? bottomNavigationBar(context)
            : BottomNavigationBar(child: widget.child));
  }

  Widget bottomNavigationBar(BuildContext context) {
    void cancelAutoScrollTimer() {
      // Cancel the timer if it's running
      if (_autoScrollTimer != null && _autoScrollTimer!.isActive) {
        _autoScrollTimer!.cancel();
      }
    }

    void startAutoScrollTimer() {
      // Cancel any existing timer
      //cancelAutoScrollTimer();
      // Start a new timer to change to _isRightScrolled after a delay
      _autoScrollTimer = Timer(const Duration(seconds: 8), () {
        setState(() {
          _isLeftScrolled = true;
          _isRightScrolled = false;
        });
      });
    }

    return GestureDetector(
        onHorizontalDragUpdate: (details) {
          // Update the accumulated horizontal drag distance
          _horizontalDragDistance += details.primaryDelta!;

          // Check for left scroll
          if (_horizontalDragDistance < -_threshold) {
            print("left scroll");
            setState(() {
              _isLeftScrolled = true;
              _isRightScrolled = false;
            });

            cancelAutoScrollTimer();
          }
          // Check for right scroll
          else if (_horizontalDragDistance > _threshold) {
            print("right scroll");

            setState(() {
              _isLeftScrolled = false;
              _isRightScrolled = true;
            });
            // Start a timer to automatically change to _isLeftScrolled

            startAutoScrollTimer();
          } else {
            setState(() {
              _isLeftScrolled = false;
              _isRightScrolled = false;
            });
          }
        },
        onHorizontalDragEnd: (details) {
          // Reset the accumulated horizontal drag distance when drag ends
          _horizontalDragDistance = 0.0;
          // Cancel the auto-scroll timer if it's running
          cancelAutoScrollTimer();
        },
        child: SizedBox(
          height: 60.h,
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: AnimatedSwitcher(
                switchInCurve: Curves.easeInOutBack,
                switchOutCurve: Curves.easeInOutBack,
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  final slideTween = _isLeftScrolled == true
                      ? Tween<Offset>(
                          begin: const Offset(1.0, 0.0), end: Offset.zero)
                      : _isRightScrolled == true
                          ? Tween<Offset>(
                              begin: const Offset(-1.0, 0.0), end: Offset.zero)
                          : Tween<Offset>(
                              begin: const Offset(1.0, 0.0), end: Offset.zero);
                  final slideAnimation = slideTween.animate(animation);

                  return SlideTransition(
                    position: slideAnimation,
                    child: child,
                  );
                },
                child: _isLeftScrolled == true
                    ? const ProductBottomNaviagtionBar()
                    : _isRightScrolled == true
                        ? BottomNavigationBar(child: widget.child)
                        : const ProductBottomNaviagtionBar(),
              ),
            ),
          ),
        ));
  }
}

class BottomNavigationBar extends ConsumerWidget {
  const BottomNavigationBar({required this.child, super.key});
  final StatefulNavigationShell child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        height: 60.h,
        child: Center(
          child: GNav(
            selectedIndex: child.currentIndex,
            mainAxisAlignment: MainAxisAlignment.center,
            tabBorderRadius: 14,
            tabActiveBorder: Border.all(
                color: AppColors.primaryElement, width: 1), // tab button border

            curve: Curves.easeIn, // tab animation curves
            duration:
                const Duration(milliseconds: 300), // tab animation duration
            gap: 10, // the tab button gap between icon and text
            color: Colors.grey[800], // unselected icon color
            activeColor:
                AppColors.primaryElement, // selected icon and text color
            iconSize: 20, // tab button icon size
            tabBackgroundColor:
                AppColors.primaryBackground, // selected tab background color
            tabMargin: const EdgeInsets.only(top: 5),
            padding: const EdgeInsets.symmetric(
                horizontal: 15, vertical: 10), // navigation bar padding
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.box,
                text: 'Likes',
              ),
              GButton(
                icon: Ionicons.notifications_outline,
                text: 'Search',
              ),
              GButton(
                icon: LineIcons.map,
                text: 'Profile',
              ),
              GButton(
                icon: LineIcons.user,
                text: 'Profile',
              )
            ],
            onTabChange: (int index) => {
              child.goBranch(
                index,
                initialLocation: index == child.currentIndex,
              )
            },
          ),
        ));
  }
}


