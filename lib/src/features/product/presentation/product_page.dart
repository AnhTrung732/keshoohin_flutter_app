// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:keshoohin_flutter_app/src/common_widgets/cart_icon/cartIcon.dart';
// import 'package:keshoohin_flutter_app/src/common_widgets/top%20navigation/topNavigation.dart';
// import 'package:keshoohin_flutter_app/src/features/product/domain/product/product.dart';
// import 'package:keshoohin_flutter_app/src/features/product/infrastructure/product_provider.dart';
// import 'package:keshoohin_flutter_app/src/services/shared_preferences/dev/shared_preferences_provider.dart';
// import 'package:keshoohin_flutter_app/src/services/shared_preferences/shared_preferences_repository_provider.dart';
// import 'package:keshoohin_flutter_app/src/themes/theme.dart';
// import 'package:keshoohin_flutter_app/src/utils/currency_format/currencyFormat.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:provider/provider.dart';
// import 'package:rive/rive.dart';




// class topW extends StatelessWidget {
//   late int idProduct;
//   topW(this.idProduct, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return TopNavigation(
//         left: Material(
//           child: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(Icons.keyboard_arrow_left)),
//         ),
//         stepRight: Material(
//             child: IconButton(
//                 onPressed: () => CreateSharingDynamicLink(idProduct),
//                 icon: SvgPicture.asset('assets/icons/Send.svg'))),
//         right: cartIcon());
//   }
// }

// class ProductPage extends ConsumerWidget {
//   final int idProduct;

//   const ProductPage(this.idProduct, {super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     //add product to products view recent history
//     ref.read(sharedPreferencesRepositoryProvider).maybeWhen(
//           data: (data) => data.setViewProductHistory(idProduct),
//           orElse: () {},
//         );

//     return FutureBuilder<Product>(
//         future: ref.read(productRepositoryProvider).getProduct(idProduct),
//         builder: (builder, snapshot) {
//           if (snapshot.hasData) {
//             var data = snapshot.data!;
//             var salePercent =
//                 (100 - data.retailPrice / data.listPrice * 100).toInt();
//             return Scaffold(
//                 body: SafeArea(
//                     child: Column(
//               children: [
//                 topW(idProduct),
//                 Expanded(
//                     child: SizedBox(
//                   height: 500,
//                   child: ListView(
//                     children: [
//                       Hero(
//                           tag: "hero_product_image_${data.idProduct}",
//                           child: productImagesSlider(data.images!)),
//                       productHeading(
//                         nameProduct: data.nameProduct,
//                         nameBrand: data.brand!.nameBrand,
//                         idBrand: data.idBrand,
//                         categoryName: data.nameProduct,
//                         brandCollection: data.brand!.idCollection!,
//                       ),
//                       reviews(data.reviews!),
//                       Container(
//                         padding: EdgeInsets.all(Theme.of(context)
//                             .own()
//                             .defaultVerticalPaddingOfScreen),
//                         color: Theme.of(context).own().defaultContainerColor,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "productDescriptions".tr(),
//                               style: Theme.of(context).textTheme.titleMedium,
//                             ),
//                             description(data.description!),
//                           ],
//                         ),
//                       ),
//                       const relatedProductsList()
//                     ],
//                   ),
//                 )),
//                 Container(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//                   decoration: BoxDecoration(
//                       color: Theme.of(context).own().defaultContainerColor,
//                       boxShadow: [
//                         BoxShadow(
//                             color: Theme.of(context).own().defaultScaffoldColor,
//                             spreadRadius: 1)
//                       ]),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Column(
//                               children: [
//                                 Text(
//                                   currencyFormat(data.retailPrice),
//                                   style: TextStyle(
//                                       fontSize: Theme.of(context)
//                                           .own()
//                                           .retailPriceSize,
//                                       fontWeight: FontWeight.bold,
//                                       color: Theme.of(context)
//                                           .own()
//                                           .retailPriceColor),
//                                 ),
//                                 data.listPrice != data.retailPrice
//                                     ? Text(
//                                         currencyFormat(data.listPrice),
//                                         style: const TextStyle(
//                                             decoration:
//                                                 TextDecoration.lineThrough),
//                                       )
//                                     : Container()
//                               ],
//                             ),
//                             salePercent != 0
//                                 ? Padding(
//                                     padding: const EdgeInsets.only(left: 5),
//                                     child: salePercentBadge(salePercent))
//                                 : Container()
//                           ],
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Material(
//                             child: InkWell(
//                               onTap: () async {
//                                 //add to cart
//                                 if (context
//                                         .read<CartProvider>()
//                                         .selectedProductInCart
//                                         .contains(idProduct) ==
//                                     false) {
//                                   await futureAddToCart(context, idProduct, 1);
//                                 }

//                                 //set selected to product
//                                 context
//                                     .read<CartProvider>()
//                                     .getBuyNow(idProduct);
//                                 Navigator.push(
//                                     context,
//                                     PageTransition(
//                                         type: PageTransitionType.fade,
//                                         child: checkoutPage(
//                                           isBuyNow: true,
//                                         ),
//                                         childCurrent: this));
//                               },
//                               child: Container(
//                                 height: 50,
//                                 alignment: Alignment.center,
//                                 padding: const EdgeInsets.all(5),
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(50),
//                                     color: const Color.fromRGBO(
//                                         244, 163, 155, 0.4),
//                                     border:
//                                         Border.all(color: Colors.redAccent)),
//                                 child: Text(
//                                   "buyNow".tr().toUpperCase(),
//                                   style: const TextStyle(
//                                       color: Colors.redAccent,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 5,
//                           ),
//                           Material(
//                             child: InkWell(
//                               onTap: () async {
//                                 futureAddToCart(context, idProduct, 1);
//                               },
//                               child: Container(
//                                 height: 50,
//                                 padding: const EdgeInsets.all(5),
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                     color: Colors.red.shade400,
//                                     borderRadius: BorderRadius.circular(500)),
//                                 child: Text(
//                                   "addToCart".tr().toUpperCase(),
//                                   style: const TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             )));
//           } else {
//             return Container(
//                 color: Colors.white,
//                 child: const RiveAnimation.asset('assets/icons/delivery.riv'));
//           }
//         });
//   }
// }
