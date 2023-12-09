import 'package:cached_network_image/cached_network_image.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/collection_domain_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/presentation/controller/home_controller.dart';

AppBar apphomeAppBar({
  isVisible = true,
}) {
  return AppBar(
    title: Container(
      margin: EdgeInsets.only(left: 7.w, right: 7.w),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Visibility(
          visible: isVisible,
          child: GestureDetector(
            child: const Icon(Icons.menu),
          ),
        ),
        Row(
          children: [
            GestureDetector(
              child: const Icon(Icons.send),
            ),
            SizedBox(width: 20.w),
            GestureDetector(
              child: const Icon(Icons.shopping_bag_outlined),
            )
          ],
        )
      ]),
    ),
  );
}

class AppHomeGreeting extends ConsumerWidget {
  const AppHomeGreeting({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("Xin chao");
    final name = ref.read(storageRepositoryProvider).getNameUser();
    return Row(
      children: [
        const Text20Normal(
            text: "Xin chào, ",
            color: AppColors.primaryThirdElementText,
            fontWeight: FontWeight.bold),
        Text20Normal(
            text: name ?? "người dùng mới",
            color: AppColors.primaryText,
            fontWeight: FontWeight.bold),
      ],
    );
  }
}

class AppHomeBanner extends StatelessWidget {
  const AppHomeBanner({super.key, required this.ref});
  final WidgetRef ref;
  @override
  Widget build(BuildContext context) {
    final asyncImageSlides = ref.watch(homeImageSliderProvider);
    return asyncImageSlides.when(
        data: (value) => appHomeBannerContent(value, ref),
        error: (error, stackTrace) => Column(children: [
              const AppBoxSkeleton(),
              SizedBox(height: 5.h),
              const AppDotIndicatorSkeleton()
            ]), // Loading state indicator
        loading: () => Column(children: [
              const AppBoxSkeleton(),
              SizedBox(height: 5.h),
              const AppDotIndicatorSkeleton()
            ]));
  }
}

Widget appHomeBannerContent(
    List<ImageSliderEntity>? listImagSlider, WidgetRef ref) {
  return SizedBox(
    width: double.infinity,
    child: Column(
      children: [
        SizedBox(
          width: 325.w,
          height: 160.h,
          child: AppCaroulselSliderNetworkImage(
            listImagSlider!,
            (context, image) {},
            (index) =>
                ref.read(homePageBannerDotsProvider.notifier).setIndex(index),
          ),
        ),
        SizedBox(height: 5.h),
        DotsIndicator(
          position: ref.watch(homePageBannerDotsProvider),
          dotsCount: listImagSlider.length,
          mainAxisAlignment: MainAxisAlignment.center,
          decorator: DotsDecorator(
              activeColor: AppColors.primaryElement,
              color: AppColors.primaryFourthElementText,
              size: const Size.square(9.0),
              activeSize: const Size(24.0, 8.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.w))),
        )
      ],
    ),
  );
}

Widget bannerContainer({String? imageURL, double radius = 15}) {
  return Container(
    width: 325.w,
    height: 140.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        image: DecorationImage(
          image: CachedNetworkImageProvider(imageURL!),
          fit: BoxFit.fill,
        )),
  );
}

class AppHomeMenuBar extends ConsumerStatefulWidget {
  const AppHomeMenuBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppHomeMenuBarState();
}

class _AppHomeMenuBarState extends ConsumerState<AppHomeMenuBar> {
  bool isShowAll = true;
  @override
  Widget build(BuildContext context) {
    bool isSelectMenuBar =
        ref.watch(homePageMenuBarSelectorProvider).last != -1;

    return Column(
      children: [
        // Xem tất cả sản phẩm
        Container(
          margin: EdgeInsets.only(top: 15.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text16Normal(
                  text: "Dành cho bạn",
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.bold,
                ),
                GestureDetector(
                  onTap: () {
                    isShowAll == true
                        ? ref
                            .read(homePageMenuBarSelectorProvider.notifier)
                            .addIndex(-1)
                        : ref
                            .read(homePageMenuBarSelectorProvider.notifier)
                            .popLastIndex();
                    setState(() {
                      isShowAll = !isShowAll;
                    });
                  },
                  child: Text14Normal(
                    text: (isShowAll || isSelectMenuBar)
                        ? "Xem tất cả"
                        : "Thu gọn",
                    color: AppColors.primaryThirdElementText,
                  ),
                )
              ]),
        ),
        SizedBox(height: 20.h),
        const AppHomeMenuBarSelector(),
      ],
    );
  }
}

class AppHomeMenuBarSelector extends ConsumerWidget {
  const AppHomeMenuBarSelector({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selected = ref.watch(homePageMenuBarSelectorProvider).last;
    return Row(
      children: menuBarSelectionItems.map((item) {
        final index = menuBarSelectionItems.indexOf(item);
        final isFirst = index == 0;
        final isSelect = (index == selected) || (selected == -1);
        return GestureDetector(
          onTap: () {
            // Handle onTap action
            ref.read(homePageMenuBarSelectorProvider.notifier).addIndex(index);
          },
          child: Container(
            margin: EdgeInsets.only(left: isFirst ? 0 : 15.w),
            decoration: appBoxShadow(
              color: isSelect
                  ? AppColors.primaryElement
                  : AppColors.primaryBackground,
              radius: 7.w,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: Text12Normal(
              text: item,
              color: isSelect
                  ? AppColors.primaryElementText
                  : AppColors.primaryThirdElementText,
            ),
          ),
        );
      }).toList(),
    );
  }
}
