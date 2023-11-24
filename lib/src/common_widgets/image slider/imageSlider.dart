import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:keshoohin_flutter_app/src/features/collection/domain/image_slider.dart';
import 'package:page_transition/page_transition.dart';

class imageSlider extends StatefulWidget {
  late List<ImageSlider> child;

  imageSlider(this.child);

  @override
  State<imageSlider> createState() => _imageSliderState(child);
}

class _imageSliderState extends State<imageSlider> {
  CarouselController buttonCarouselController = CarouselController();
  int _current = 0;
  late List<ImageSlider> child;

  _imageSliderState(List<ImageSlider> this.child);

  @override
  Widget build(BuildContext context) => Stack(children: <Widget>[
        CarouselSlider(
          items: [
            for (var i in child)
              InkWell(
                  // onTap: () => Navigator.push(
                  //     context,
                  //     PageTransition(
                  //         type: PageTransitionType.rightToLeftWithFade,
                  //         child: CollectionPage(futureGetCollection(65)),
                  //         childCurrent: context.widget)),
                  child: CachedNetworkImage(
                    imageUrl: i.path!,
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    width: double.infinity,
                    fit: BoxFit.fill,
                  )),
          ],
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            aspectRatio: 1,
            initialPage: 2,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: child.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => buttonCarouselController.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ),
      ]);
}
