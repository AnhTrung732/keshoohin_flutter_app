import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/di_cataglog.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/product_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
part 'product_detail_controller.g.dart';

// Product Retrieve
@riverpod
Future<ProductEntity> productDetailController(ProductDetailControllerRef ref,
    {required int index}) async {
  return await ref.read(getProductProvider).call(index);
}

// Expand Part
@riverpod
class ExpandMoreStateController extends _$ExpandMoreStateController {
  @override
  bool build() => false;

  void changeState() {
    state = !state;
  }
}

@riverpod
class ExpandInitController extends _$ExpandInitController {
  @override
  bool build() => false;

  void hasInit() {
    state = true;
  }
}

@riverpod
class ExpandMoreKeyController extends _$ExpandMoreKeyController {
  @override
  GlobalKey<State<StatefulWidget>> build() =>
      GlobalKey<State<StatefulWidget>>();
}

@Riverpod(dependencies: [ExpandMoreKeyController])
class OriginalExpandHeightController extends _$OriginalExpandHeightController {
  @override
  double? build() {
    final GlobalKey<State<StatefulWidget>> key =
        ref.watch(expandMoreKeyControllerProvider);

    if (key.currentContext != null) {
      final RenderBox renderBox =
          key.currentContext!.findRenderObject() as RenderBox;
      ref.read(expandInitControllerProvider.notifier).hasInit();
      return renderBox.size.height;
    }
    return null;
  }

  double? getHeight() => build();
}

@Riverpod(dependencies: [
  ExpandMoreStateController,
  OriginalExpandHeightController,
])
class ExpandHeightController extends _$ExpandHeightController {
  @override
  double? build() {
    return ref.watch(originalExpandHeightControllerProvider);
  }

  void setExpandHeight() {
    final double height =
        ref.read(originalExpandHeightControllerProvider.notifier).getHeight()!;

    state =
        ref.watch(expandMoreStateControllerProvider) ? height * 2 : height / 2;
  }
}

@Riverpod(dependencies: [ExpandHeightController])
class OverlayHeightController extends _$OverlayHeightController {
  @override
  double? build() {
    return ref.watch(expandHeightControllerProvider);
  }

  void setExpandHeight() {
    return ref.watch(expandHeightControllerProvider);
  }
}

// End of expand part

// Tab bar

@Riverpod(keepAlive: true)
class ProductScrollDirectionController
    extends _$ProductScrollDirectionController {
  @override
  ScrollDirection build() => ScrollDirection.static;

  void updateScrollDirection(ScrollDirection direction) {
    state = direction;
  }

  // bool isAnimate() {
  //   bool result =
  //       (state == ScrollDirection.up) || (state == ScrollDirection.static);
  //   print(result);
  //   return result;
  // }
}

enum ScrollDirection {
  up,
  static,
  down,
}

@riverpod
class ProductPageItemScrollController
    extends _$ProductPageItemScrollController {
  @override
  ItemScrollController build() => ItemScrollController();

  Future<void> animateItem(int index) async {
    state.scrollTo(
        index: index,
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOutCubic);
  }
}

@riverpod
class ProductTabBarIndex extends _$ProductTabBarIndex {
  @override
  int build() => 0;

  void setIndex(int index) {
    state = index;
    //print(state);
  }
}

@Riverpod(dependencies: [ProductTabBarIndex])
class ProductPageScrollListener extends _$ProductPageScrollListener {
  @override
  ItemPositionsListener build() => ItemPositionsListener.create();

  Future<void> listenToItem() async {
    state.itemPositions.addListener(() {
      // print('====current first ${state.itemPositions.value.first.index}====');
      // print('====current last ${state.itemPositions.value.last.index}====');
      ref
          .read(productTabBarIndexProvider.notifier)
          .setIndex(state.itemPositions.value.first.index);
    });
  }
}
