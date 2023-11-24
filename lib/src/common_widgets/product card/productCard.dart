import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:keshoohin_flutter_app/src/common_widgets/sale_percent_badge/salePercentBadge.dart';
import 'package:keshoohin_flutter_app/src/features/product/domain/product/product.dart';
import 'package:keshoohin_flutter_app/src/themes/theme.dart';
import 'package:keshoohin_flutter_app/src/utils/currency_format/currencyFormat.dart';
import 'package:page_transition/page_transition.dart';

class productCard extends StatelessWidget {
  late Product product;

  productCard(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    var nameBrand = product.brand?.nameBrand ?? "   ";
    var image_path = product.images?.first.path ?? "  ";
    var retailPrice = product.retailPrice ?? product.listPrice;
    var salePercent = (100 - retailPrice / product.listPrice * 100).toInt();
    return Container(
        margin:
            EdgeInsets.all(Theme.of(context).own().defaultProductCardMargin),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Theme.of(context).own().defaultContainerColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black45.withOpacity(0.1),
              blurRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Material(
          elevation: 5,
          child: InkWell(
            // onTap: () {
            //   Navigator.push(
            //       context,
            //       PageTransition(
            //           type: PageTransitionType.rightToLeftWithFade,
            //           child: ProductPage(product.idProduct),
            //           childCurrent: this));
            // },
            child: Column(
              children: [
                Hero(
                    tag: "hero_product_image_${product.idProduct}",
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CachedNetworkImage(
                        imageUrl: image_path,
                        // placeholder: (context, url) =>
                        //     CircularProgressIndicator(
                        //   color: Theme.of(context).primaryColor,
                        // ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.all(
                      Theme.of(context).own().defaultVerticalPaddingOfScreen),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        nameBrand,
                        maxLines: 1,
                        style: const TextStyle(overflow: TextOverflow.ellipsis),
                      ),
                      SizedBox(
                          height: Theme.of(context).own().defaultMarginBetween),
                      Text(
                        product.nameProduct,
                        maxLines: 2,
                        style: const TextStyle(
                            overflow: TextOverflow.ellipsis, fontSize: 18),
                      ),
                      SizedBox(
                          height: Theme.of(context).own().defaultMarginBetween),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            currencyFormat(retailPrice),
                            style: TextStyle(
                              color: Theme.of(context).own().retailPriceColor,
                              fontSize: Theme.of(context).own().retailPriceSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          salePercent != 0
                              ? Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: salePercentBadge(salePercent),
                                )
                              : Container(),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
