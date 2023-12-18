import 'dart:async';

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class CheckMarkColors {
  final Color content;
  final Color background;

  const CheckMarkColors({
    required this.content,
    required this.background,
  });
}

class CheckMarkStyle {
  final CheckMarkColors loading;
  final CheckMarkColors completed;

  const CheckMarkStyle({
    required this.loading,
    required this.completed,
  });

  static const defaultStyle = CheckMarkStyle(
    loading: CheckMarkColors(
        content: AppColors.primaryElement,
        background: AppColors.primaryBackground),
    completed: CheckMarkColors(
        content: Colors.white, background: AppColors.primaryElement),
  );
}

class AppCheckMarkIndicator extends StatefulWidget {
  final Widget child;
  final CheckMarkStyle style;
  final Future<void> Function()? onRefreshFunc;

  const AppCheckMarkIndicator({
    super.key,
    required this.child,
    this.style = CheckMarkStyle.defaultStyle,
    this.onRefreshFunc,
  });

  @override
  State<AppCheckMarkIndicator> createState() => _AppCheckMarkIndicatorState();
}

class _AppCheckMarkIndicatorState extends State<AppCheckMarkIndicator>
    with SingleTickerProviderStateMixin {
  /// Whether to render check mark instead of spinner
  bool _renderCompleteState = false;

  ScrollDirection prevScrollDirection = ScrollDirection.idle;

  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      withRotation: false,
      onRefresh: () => widget.onRefreshFunc!(),
      durations: const RefreshIndicatorDurations(
        completeDuration: Duration(seconds: 2),
      ),
      onStateChanged: (change) {
        /// set [_renderCompleteState] to true when controller.state become completed
        if (change.didChange(to: IndicatorState.complete)) {
          _renderCompleteState = true;

          /// set [_renderCompleteState] to false when controller.state become idle
        } else if (change.didChange(to: IndicatorState.idle)) {
          _renderCompleteState = false;
        }
      },
      indicatorBuilder: (
        BuildContext context,
        IndicatorController controller,
      ) {
        final style = _renderCompleteState
            ? widget.style.completed
            : widget.style.loading;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: style.background,
            shape: BoxShape.circle,
          ),
          child: _renderCompleteState
              ? const Icon(
                  Icons.production_quantity_limits,
                  color: Colors.white,
                )
              : SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: style.content,
                    value: controller.isDragging || controller.isArmed
                        ? controller.value.clamp(0.0, 1.0)
                        : null,
                  ),
                ),
        );
      },
      child: widget.child,
    );
  }
}

class AppLiquidPullToRefresh extends ConsumerWidget {
  const AppLiquidPullToRefresh(
      {required this.child, this.onRefreshFunc, super.key});
  final Future<void> Function()? onRefreshFunc;
  final Widget child;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LiquidPullToRefresh(
        height: 50,
        showChildOpacityTransition: false,
        backgroundColor: AppColors.primaryElement,
        color: AppColors.primaryBackground,
        onRefresh: () => onRefreshFunc!(),
        child: child);
  }
}
