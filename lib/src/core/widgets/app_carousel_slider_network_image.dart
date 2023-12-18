import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/app_cached_network_image.dart';

class AppCaroulselSliderNetworkImage extends ConsumerStatefulWidget {
  const AppCaroulselSliderNetworkImage(
      this.imageList, this.onImageTap, this.onPageChanged,
      {required this.boxFit, super.key});
  final BoxFit boxFit;
  final List<dynamic> imageList;
  final void Function(BuildContext context, dynamic image) onImageTap;
  final void Function(int index) onPageChanged;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AppCaroulselSliderNetworkImageState();
}

class _AppCaroulselSliderNetworkImageState
    extends ConsumerState<AppCaroulselSliderNetworkImage> {
  late CarouselController buttonCarouselController;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    buttonCarouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: widget.imageList.map((image) {
        return InkWell(
          onTap: () => widget.onImageTap(context, image),
          child: AppCachedNetworkImage(
            imageUrl: image.path!,
            boxFit: widget.boxFit,
          ),
        );
      }).toList(),
      carouselController: buttonCarouselController,
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        onPageChanged: (index, reason) => widget.onPageChanged(index),
      ),
    );
  }
}
