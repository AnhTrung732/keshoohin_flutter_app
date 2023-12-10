import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
      super.key});
  final String nameProduct;
  final String categoryName;
  final String nameBrand;
  final int idBrand;
  final int? brandCollection;
  final int listPrice;
  final int? retailPrice;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailHeadingState();
}

class _ProductDetailHeadingState extends ConsumerState<ProductDetailHeading> {
  @override
  Widget build(BuildContext context) {
    print(widget.retailPrice);
    print(widget.listPrice);

    var retailPrice = widget.retailPrice ?? widget.listPrice;
    var salePercent = (100 - retailPrice / widget.listPrice * 100).toInt();
    print(salePercent);
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductHeadingNameBrand(
              nameBrand: widget.nameBrand, nameProduct: widget.nameProduct),
          SizedBox(height: 20.h),
          ProductHeadingPrice(
              retailPrice: retailPrice, salePercent: salePercent),
        ],
      ),
    );
  }
}

class ProductHeadingPrice extends StatelessWidget {
  const ProductHeadingPrice(
      {required this.salePercent, required this.retailPrice, super.key});
  final int retailPrice;
  final int salePercent;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FadeText(
          text: currencyFormat(retailPrice),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        salePercent != 0
            ? Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SalePercentBadge(salePercent),
              )
            : Container()
      ],
    );
  }
}

class ProductHeadingNameBrand extends StatelessWidget {
  const ProductHeadingNameBrand(
      {super.key, required this.nameBrand, required this.nameProduct});
  final String nameBrand;
  final String nameProduct;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      TextSpan(
        style: const TextStyle(
          fontFamily: 'OpenSans',
          fontWeight: FontWeight.normal,
          color: AppColors.primaryFifthText,
        ),
        children: <InlineSpan>[
          TextSpan(
            text: '[$nameBrand]',
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
            text: nameProduct,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  void onBrandTap() {
    // Handle brand tap
    print('Brand tapped');
  }
}

class SalePercentBadge extends StatelessWidget {
  final int percent;
  const SalePercentBadge(this.percent, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:  const EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
        decoration: BoxDecoration(
            color: AppColors.primaryElement,
            borderRadius: BorderRadius.circular(5)),
        alignment: Alignment.center,
        child: Text(
          '-$percent%',
          style: const TextStyle(color: Colors.white),
        ));
  }
}
