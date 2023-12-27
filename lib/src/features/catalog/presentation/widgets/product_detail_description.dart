import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/presentation/controller/product_detail_controller.dart';

class ProductDetailDiscription extends ConsumerStatefulWidget {
  const ProductDetailDiscription({required this.description, super.key});
  final String description;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailDiscriptionState();
}

class _ProductDetailDiscriptionState
    extends ConsumerState<ProductDetailDiscription> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<State<StatefulWidget>> discriptionkey =
        ref.watch(expandMoreKeyControllerProvider);
    double? expandedHeight = ref.watch(expandHeightControllerProvider);
    bool isInitExpand = ref.watch(expandInitControllerProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text16Normal(
            text: "Thông tin về sản phẩm",
            color: AppColors.primaryFifthElement),
        SizedBox(height: 10.h),
        const Text14Normal(
            text: "Mô tả sản phẩm", color: AppColors.primaryFifthElement),
        SizedBox(height: 10.h),
        Stack(children: [
          SizedBox(
            height: isInitExpand == true ? expandedHeight : null,
            child: Html(
              key: discriptionkey,
              data: widget.description,
              style: {
                'body': Style(
                  fontSize: FontSize(14.0),
                ),
              },
            ),
          ),
          const OverlayExpandableWidget(),
        ]),
      ],
    );
  }
}

class OverlayExpandableWidget extends ConsumerStatefulWidget {
  const OverlayExpandableWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyExpandableWidgetState();
}

class _MyExpandableWidgetState extends ConsumerState<OverlayExpandableWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) =>
        ref.read(expandHeightControllerProvider.notifier).setExpandHeight());
  }

  @override
  Widget build(BuildContext context) {
    bool isExpanded = ref.watch(expandMoreStateControllerProvider);
    double? overlayHeight = ref.watch(overlayHeightControllerProvider);

    return SizedBox(
      child: GestureDetector(
        onTap: () {
          setState(() {
            ref.read(expandMoreStateControllerProvider.notifier).changeState();
            ref.read(expandHeightControllerProvider.notifier).setExpandHeight();
            ref
                .read(overlayHeightControllerProvider.notifier)
                .setExpandHeight();
            print('Is Expanded: $widget.isExpanded, Height: $overlayHeight');
          });
        },
        child: Column(
          children: [
            AnimatedContainer(
              height: overlayHeight,
              duration: const Duration(milliseconds: 500),
              decoration: isExpanded
                  ? BoxDecoration(
                      color: AppColors.primaryBackground.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10.0),
                    )
                  : BoxDecoration(
                      gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.1),
                        AppColors.primaryBackground
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
            ),
            Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text14Normal(
                    text: isExpanded ? 'Thu gọn' : 'Xem thêm mô tả',
                    color: AppColors.primaryElement,
                  ),
                  Icon(
                    isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: AppColors.primaryElement,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
