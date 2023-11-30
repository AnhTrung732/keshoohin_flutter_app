import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_styles.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/product%20card/productCard.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/product%20card/productCardSkeleton.dart';
import 'package:keshoohin_flutter_app/src/features/collection/domain/collection.dart';
import 'package:keshoohin_flutter_app/src/features/collection/domain/image_slider.dart';

class FlashSaleHeader extends StatefulWidget {
  late int seconds;

  FlashSaleHeader(this.seconds, {super.key});

  @override
  State<FlashSaleHeader> createState() => _FlashSaleHeaderState();
}

class _FlashSaleHeaderState extends State<FlashSaleHeader> {
  late Timer timer;
  int _days = 0;
  int _hours = 0;
  int _mins = 0;
  int _secs = 0;

  void calcCountDown() {
    _days = widget.seconds ~/ 86400;
    _hours = (widget.seconds - _days * 86400) ~/ 3600;
    _mins = (widget.seconds - _days * 86400 - _hours * 3600) ~/ 60;
    _secs = (widget.seconds - _days * 86400 - _hours * 3600 - _mins * 60);
    widget.seconds--;
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        calcCountDown();
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  String convertToTwoDigits(int number) {
    return number < 10 ? '0$number' : number.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Image.network(
              "https://image.hsv-tech.io/800x0/tfs/common/f5c3203e-ccaa-4394-8a0e-d148ee18cfc0.webp",
              width: 150,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: RichText(
                      text: TextSpan(
                        text: convertToTwoDigits(_days),
                        style: DefaultTextStyle.of(context).style.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'days'.tr(),
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: convertToTwoDigits(_hours),
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'hours'.tr(),
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        vertical: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: convertToTwoDigits(_mins),
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'mins'.tr(),
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: RichText(
                      text: TextSpan(
                        text: convertToTwoDigits(_secs),
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'secs'.tr(),
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class FlashSaleBox extends ConsumerWidget {
  final int seconds;
  final ScrollController _controller = ScrollController();

  FlashSaleBox(this.seconds, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCollection = ref.watch(asyncCollectionProvider);
    return Container(
      margin: EdgeInsets.only(
        top: Theme.of(context).own().defaultMarginBetween,
      ),
      padding: EdgeInsets.all(
        Theme.of(context).own().defaultVerticalPaddingOfScreen,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).own().headingSearchBoxBorderColor,
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          FlashSaleHeader(seconds),
          Stack(
            alignment: Alignment.centerRight,
            children: [
              _buildProductList(asyncCollection, context),
              _buildNavigationButtons(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductList(
      AsyncValue<Collection> asyncImageSlider, BuildContext context) {
    return asyncImageSlider.when(
        loading: () => const SizedBox(width: double.infinity),
        error: (error, stack) => _buildSkeletonList(context),
        data: (collection) => SingleChildScrollView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var i in collection.collectionproducts)
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: productCard(i),
                    )
                ],
              ),
            ));
  }

  Widget _buildSkeletonList(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 3; i++)
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: const productCardSkeleton(),
            ),
        ],
      ),
    );
  }

  Widget _buildNavigationButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            _controller.animateTo(
              _controller.offset - MediaQuery.of(context).size.width,
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
            );
          },
          icon: const Icon(Icons.chevron_left),
        ),
        IconButton(
          onPressed: () {
            _controller.animateTo(
              _controller.offset + MediaQuery.of(context).size.width,
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
            );
          },
          icon: const Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}
