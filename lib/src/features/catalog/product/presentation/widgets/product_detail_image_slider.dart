import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/product/domain/response/image_response_entity.dart';

class ProductDetailImagesSlider extends StatefulWidget {
  final List<ImageProductResponseEntity> imageList;
  final int idThisProduct;
  const ProductDetailImagesSlider(
      {required this.idThisProduct, required this.imageList, super.key});

  @override
  State<ProductDetailImagesSlider> createState() =>
      _ProductDetailImagesSliderState();
}

class _ProductDetailImagesSliderState extends State<ProductDetailImagesSlider> {
  late CarouselController buttonCarouselController;
  int _current = 0;

  @override
  void initState() {
    super.initState();
    buttonCarouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    List<ImageProductResponseEntity> imageList = widget.imageList;

    return Container(
      decoration: appBoxShadow(color: AppColors.primaryBackground),
      height: MediaQuery.of(context).size.width * 9 / 16,
      child: Stack(
        children: <Widget>[
          AppCaroulselSliderNetworkImage(
              imageList,
              (context, image) => _onImageTap(context, image),
              (index) => setState(() {
                    _current = index;
                  })),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10.h, bottom: 5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black12.withOpacity(0.1),
              ),
              child: Text12Normal(
                text: "${_current + 1}/${imageList.length}",
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                color: Colors.black12.withOpacity(0.1),
              ),
              child: const Icon(
                Icons.threed_rotation_sharp,
                color: AppColors.primaryThirdElement,
              ),
            ),
            // onTap: () => Navigator.push(
            //   context,
            //   PageTransition(
            //     type: PageTransitionType.rightToLeftWithFade,
            //     child: RealityViewer(),
            //     childCurrent: widget,
            //   ),
            // ),
          ),
        ],
      ),
    );
  }

  void _onImageTap(BuildContext context, ImageProductResponseEntity image) {
    context.goNamed(
      APP_PAGE.productImages.toName,
      extra: widget.imageList,
      pathParameters: {
        APP_PAGE.product.toParameter: widget.idThisProduct.toString(),
      },
      queryParameters: {
        APP_PAGE.productImages.toParameter: _current.toString(),
      },
    );
  }
}
