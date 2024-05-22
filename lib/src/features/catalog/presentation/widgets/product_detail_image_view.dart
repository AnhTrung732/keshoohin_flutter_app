import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/widgets_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/product_entity.dart';

class ProductDetailImageView extends ConsumerStatefulWidget {
  const ProductDetailImageView({
    required this.imageList,
    required this.initImage,
    super.key,
  });

  final List<ImageProductEntity> imageList;
  final int initImage;

  @override
  _ProductDetailImageDetailState createState() =>
      _ProductDetailImageDetailState();
}

class _ProductDetailImageDetailState
    extends ConsumerState<ProductDetailImageView> {
  late CarouselController buttonCarouselController;

  @override
  void initState() {
    super.initState();
    buttonCarouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProductAppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: CarouselSlider(
                        items: widget.imageList.map((i) {
                          return InteractiveViewer(
                            panEnabled:
                                true, // Set it to false to prevent panning.
                            minScale: 1,
                            maxScale: 2,
                            child: AppCachedNetworkImage(
                              imageUrl: i.path!,
                              width: double.infinity,
                              boxFit: BoxFit.contain,
                            ),
                          );
                        }).toList(),
                        carouselController: buttonCarouselController,
                        options: CarouselOptions(
                          viewportFraction: 1,
                          height: double.infinity,
                          initialPage: widget.initImage,
                          // onPageChanged: (index, reason) {
                          //   setState(() {
                          //     _current = index;
                          //   });
                          // },
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
