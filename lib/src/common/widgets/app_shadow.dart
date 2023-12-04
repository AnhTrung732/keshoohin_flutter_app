import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_colors.dart';
import 'package:keshoohin_flutter_app/src/common/utils/image_res.dart';
import 'package:skeletons/skeletons.dart';

BoxDecoration appBoxShadow({
  Color color = AppColors.primaryElement,
  double radius = 15,
  double sR = 1,
  double bR = 1,
  BoxBorder? boxBorder,
}) {
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
      border: boxBorder,
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: sR,
            blurRadius: bR,
            offset: const Offset(0, 1))
      ]);
}

BoxDecoration appBoxShadowWithRadius({
  Color color = AppColors.primaryElement,
  //double radius = 15,
  double sR = 1,
  double bR = 1,
  BoxBorder? boxBorder,
}) {
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.h), topRight: Radius.circular(20.h)),
      border: boxBorder,
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: sR,
            blurRadius: bR,
            offset: const Offset(0, 1))
      ]);
}

BoxDecoration appBoxShadowTextField(
    {Color color = AppColors.primaryBackground,
    double radius = 15,
    Color borderColor = AppColors.primaryFourthElementText}) {
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: borderColor));
}

class AppBoxDecorationImage extends StatelessWidget {
  final double width;
  final double height;
  final String imagePath;
  const AppBoxDecorationImage(
      {super.key,
      this.width = 40,
      this.height = 40,
      this.imagePath = ImageRes.userIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight, image: AssetImage(imagePath)),
          borderRadius: BorderRadius.circular(20.w)),
    );
  }
}

class AppBoxSkeleton extends StatelessWidget {
  const AppBoxSkeleton({
    super.key,
    this.width = double.infinity,
    this.height = 160,
    this.radius = 15,
  });
  final double width;
  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width.w,
        height: height.h,
        child: SkeletonAvatar(
            style: SkeletonAvatarStyle(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(radius)))));
  }
}

class AppDotIndicatorSkeleton extends StatelessWidget {
  const AppDotIndicatorSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 4,
      mainAxisAlignment: MainAxisAlignment.center,
      decorator: DotsDecorator(
          activeColor: AppColors.primaryFourthElementText,
          color: AppColors.primaryFourthElementText,
          size: const Size.square(9.0),
          activeSize: const Size(24.0, 8.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.w))),
    );
  }
}

class AppProductGridSkeleton extends StatelessWidget {
  const AppProductGridSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisExtent: 300),
        itemCount: 6,
        itemBuilder: (_, int index) {
          return Container(
              margin: const EdgeInsets.all(10),
              child: SkeletonAvatar(
                  style: SkeletonAvatarStyle(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20.w)))));
        });
  }
}

class AppProductCardSkeleton extends StatelessWidget {
  const AppProductCardSkeleton({
    super.key, this.width = 80, this.height = 240,
  });
  final double width;
  final double height; 
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        width: width.w,
        height: height.h,
        child: SkeletonAvatar(
            style: SkeletonAvatarStyle(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(20.w)))));
  }
}
