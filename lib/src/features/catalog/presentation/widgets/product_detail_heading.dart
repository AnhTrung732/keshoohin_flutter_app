import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/widgets_export.dart';

class ProductDetailHeading extends ConsumerStatefulWidget {
  const ProductDetailHeading(
      {required this.nameProduct,
      required this.categoryName,
      required this.nameBrand,
      required this.idBrand,
      required this.brandCollection,
      required this.listPrice,
      required this.retailPrice,
      required this.rating,
      required this.totalPurchaseQuantity,
      super.key});
  final String nameProduct;
  final String categoryName;
  final String nameBrand;
  final int idBrand;
  final int? brandCollection;
  final int listPrice;
  final int retailPrice;
  final int rating;
  final int totalPurchaseQuantity;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailHeadingState();
}

class _ProductDetailHeadingState extends ConsumerState<ProductDetailHeading> {
  @override
  Widget build(BuildContext context) {
    var salePercent = calcSalePercent(
        retailPrice: widget.retailPrice, listPrice: widget.listPrice);
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductHeadingPrice(
              listPrice: widget.listPrice,
              retailPrice: widget.retailPrice,
              salePercent: salePercent),
          SizedBox(height: 10.h),
          ProductHeadingNameBrand(
              nameBrand: widget.nameBrand, nameProduct: widget.nameProduct),
          SizedBox(height: 10.h),
          ProductHeadingRating(
            rating: widget.rating,
            totalPurchaseQuantity: widget.totalPurchaseQuantity,
            numReviews: 10,
          ),
        ],
      ),
    );
  }
}

class ProductHeadingPrice extends StatelessWidget {
  const ProductHeadingPrice(
      {required this.salePercent,
      required this.retailPrice,
      super.key,
      required this.listPrice});
  final int retailPrice;
  final int listPrice;
  final int salePercent;
  @override
  Widget build(BuildContext context) {
    bool isSale = salePercent != 0;
    return Container(
      decoration: isSale ? appBoxShadow(radius: 7, isGradient: true) : null,
      padding:
          isSale ? const EdgeInsets.only(left: 15, top: 15, bottom: 15) : null,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text24Normal(
            text: currencyFormat(retailPrice),
            fontWeight: FontWeight.bold,
            color: AppColors.primaryFifthText,
          ),
          isSale
              ? Row(
                  children: [
                    SizedBox(width: 10.w),
                    TextLineThrough(
                      text: currencyFormat(listPrice),
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(width: 10.w),
                    SalePercentBadge(salePercent)
                  ],
                )
              : Container()
        ],
      ),
    );
  }
}

class ProductHeadingNameBrand extends ConsumerStatefulWidget {
  const ProductHeadingNameBrand(
      {required this.nameBrand, required this.nameProduct, super.key});
  final String nameBrand;
  final String nameProduct;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductHeadingNameBrandState();
}

class _ProductHeadingNameBrandState
    extends ConsumerState<ProductHeadingNameBrand> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text.rich(
        maxLines: isExpanded ? 5 : 2,
        overflow: TextOverflow.ellipsis,
        TextSpan(
          style: const TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.normal,
            color: AppColors.primaryFifthText,
          ),
          children: <InlineSpan>[
            TextSpan(
              text: '[${widget.nameBrand}]',
              style: const TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 14,
              ),
              recognizer: TapGestureRecognizer()..onTap = onBrandTap,
            ),
            WidgetSpan(
              child: SizedBox(
                  width: 10.w), // Adjust the spacing between the two spans
            ),
            TextSpan(
              text: widget.nameProduct,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      Container(
        alignment: Alignment.bottomRight,
        child: GestureDetector(
          child: isExpanded
              ? const Icon(
                  Icons.expand_less,
                  color: AppColors.primaryFifthText,
                )
              : const Icon(
                  Icons.expand_more,
                  color: AppColors.primaryFifthText,
                ),
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
        ),
      )
    ]);
  }

  void onBrandTap() {
    // Handle brand tap
    print('Brand tapped');
  }
}

class SalePercentBadge extends StatelessWidget {
  final int percent;
  const SalePercentBadge(this.percent,
      {super.key,
      this.textColor = AppColors.primaryElement,
      this.backGroundColor = AppColors.primaryElementText});
  final Color textColor;
  final Color backGroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
        decoration: BoxDecoration(
            color: backGroundColor, borderRadius: BorderRadius.circular(5)),
        alignment: Alignment.center,
        child: Text12Normal(text: 'Giảm đến $percent%', color: textColor));
  }
}

class ProductHeadingRating extends StatelessWidget {
  const ProductHeadingRating(
      {super.key,
      required this.rating,
      required this.totalPurchaseQuantity,
      required this.numReviews});
  final int rating;
  final int totalPurchaseQuantity;
  final int numReviews;
  @override
  Widget build(BuildContext context) {
    final double toRating = calcRating(rating: rating);

    return Row(
      children: [
        Container(
            decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.grey.shade300)),
            ),
            child: Row(
              children: [
                ProductHeadingRatingBar(rating: toRating),
                Text12Normal(
                    text: "${toRating.toString()} / 5.0 ($numReviews)",
                    color: AppColors.primaryFourthElement),
                SizedBox(width: 5.w),
              ],
            )),
        SizedBox(width: 5.w),
        Text12Normal(
            text: "$totalPurchaseQuantity đã bán",
            color: AppColors.primaryFourthElement),
      ],
    );
  }
}

class ProductHeadingRatingBar extends StatelessWidget {
  const ProductHeadingRatingBar({super.key, required this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBar(
      ignoreGestures: true,
      itemSize: 15,
      initialRating: rating,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      ratingWidget: RatingWidget(
        full: Image.asset(
          ImageRes.heartFullIcon,
          color: AppColors.primaryElement,
        ),
        half: Image.asset(ImageRes.heartHalfIcon,
            color: AppColors.primaryElement),
        empty: Image.asset(
          ImageRes.heartEmptyIcon,
          color: AppColors.primaryElement,
        ),
      ),
      itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
