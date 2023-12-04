// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:keshoohin_flutter_app/src/common/global/app_state_notifier.dart';
// import 'package:keshoohin_flutter_app/src/common/utils/app_styles.dart';
// import 'package:keshoohin_flutter_app/src/common/widgets/image%20slider/imageSlider.dart';
// import 'package:keshoohin_flutter_app/src/common/widgets/product_list_view/product%20list%20view.dart';
// import 'package:keshoohin_flutter_app/src/common/widgets/top%20navigation/topNavigation.dart';
// import 'package:keshoohin_flutter_app/src/features/collection/domain/collection.dart';
// import 'package:keshoohin_flutter_app/src/features/collection/domain/image_slider.dart';
// import 'package:keshoohin_flutter_app/src/features/collection/presentation/controller/home_controller.dart';
// import 'package:keshoohin_flutter_app/src/features/map/presentation/widgets/flashSaleBox.dart';
// import 'package:keshoohin_flutter_app/src/features/map/presentation/widgets/switchCardsEvent.dart';
// import 'package:keshoohin_flutter_app/src/features/product/domain/product/product.dart';
// import 'package:skeletons/skeletons.dart';
// import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

// class HomePage1 extends ConsumerStatefulWidget {
//   const HomePage1({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
// }

// class _HomePageState extends ConsumerState<HomePage1> {
//   final GlobalKey qrScanGlobalKey = GlobalKey();
//   final GlobalKey cartGlobalKey = GlobalKey();
//   final List<TargetFocus> targets = [];
//   bool _initialized = false;

//   Widget buildTopNavigation() {
//     return TopNavigation(
//       isSearcher: true,
//       left: Material(
//         key: qrScanGlobalKey,
//         child: IconButton(
//           onPressed: () {},
//           icon: const Icon(Icons.qr_code_scanner_outlined),
//         ),
//       ),
//       //right: Container(key: cartGlobalKey, child: cartIcon()),
//     );
//   }

//   Widget buildImageSliderContainer() {
//     final asyncImageSlides = ref.watch(homeImageSliderProvider);

//     return Container(
//       width: double.infinity,
//       height: MediaQuery.of(context).size.width,
//       clipBehavior: Clip.hardEdge,
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(80)),
//         boxShadow: <BoxShadow>[
//           BoxShadow(
//             color: Colors.black45.withOpacity(0.1),
//             blurRadius: 1,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: asyncImageSlides.when(
//           data: (value) => SizedBox(
//                 width: double.infinity,
//                 child: imageSlider(value),
//               ),
//           error: (error, stackTrace) {
//             print(error);
//             return const SizedBox(
//               width: double.infinity,
//               child: SkeletonAvatar(
//                 style: SkeletonAvatarStyle(shape: BoxShape.rectangle),
//               ),
//             ); // Loading state indicator
//           },
//           loading: () => const SizedBox(
//                 width: double.infinity,
//                 child: SkeletonAvatar(
//                   style: SkeletonAvatarStyle(shape: BoxShape.rectangle),
//                 ),
//               )),
//     );
//   }

//   Widget buildRecommendationsSection() {
//     final asyncCollection = ref.watch(asyncCollectionProvider);
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         buildRecommendationsHeader(),
//         Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: Theme.of(context).own().defaultVerticalPaddingOfScreen -
//                 Theme.of(context).own().defaultProductCardMargin,
//           ),
//           child: asyncCollection.when(
//             data: (collection) {
//               if (collection != null) {
//                 return productListView(collection.collectionproducts, true);
//               } else {
//                 return const SizedBox(); // Return an empty widget or placeholder
//               }
//             },
//             error: (error, stackTrace) {
//               // Handle error
//               print("Error in buildRecommendationsSection: $error");
//               return const SizedBox(
//                 width: double.infinity,
//                 child: SkeletonAvatar(
//                   style: SkeletonAvatarStyle(shape: BoxShape.rectangle),
//                 ),
//               );
//             },
//             loading: () => const SizedBox(
//               width: double.infinity,
//               child: SkeletonAvatar(
//                 style: SkeletonAvatarStyle(shape: BoxShape.rectangle),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget buildRecommendationsHeader() {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 5),
//       padding: EdgeInsets.symmetric(
//         horizontal: Theme.of(context).own().defaultVerticalPaddingOfScreen,
//         vertical: 4,
//       ),
//       decoration: const BoxDecoration(
//         color: Color.fromRGBO(244, 163, 155, 0.4),
//         borderRadius: BorderRadius.only(
//             topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
//       ),
//       child: Text(
//         "recommendations".tr(),
//         style: Theme.of(context)
//             .textTheme
//             .titleMedium!
//             .copyWith(color: Colors.red),
//       ),
//     );
//   }

//   Widget buildRecommendationsList(List<Product> products) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//         horizontal: Theme.of(context).own().defaultVerticalPaddingOfScreen -
//             Theme.of(context).own().defaultProductCardMargin,
//       ),
//       child: productListView(products, true),
//     );
//   }

//   void _checkAndShowTutorial() async {
//     // Move the access to Theme.of() to a later point, for example, after the first frame has been drawn
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       final app = ref.read(appStateNotifierProvider.notifier);

//       try {
//         final state = app.appState.coachGuideState;

//         if (state == false) {
//           showTutorial();
//           app.setCoachGuideState(true);
//         }
//       } catch (error) {
//         print("ERROR: $error");
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white70,
//       body: SafeArea(
//         child: Column(
//           children: [
//             buildTopNavigation(),
//             Expanded(
//               child: ListView(
//                 children: [
//                   buildImageSliderContainer(),
//                   FlashSaleBox(15100),
//                   const SwitchCardsEvent(),
//                   buildRecommendationsSection(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void showTutorial() {
//     TutorialCoachMark(
//       targets: targets, // List<TargetFocus>
//       colorShadow: Theme.of(context).primaryColor, // DEFAULT Colors.black
//       // alignSkip: Alignment.bottomRight,
//       textSkip: "skip".tr(),
//       // paddingFocus: 10,
//       // opacityShadow: 0.8,
//       onClickTarget: (target) {
//         print(target);
//       },
//       onClickTargetWithTapPosition: (target, tapDetails) {
//         print("target: $target");
//         print(
//             "clicked at position local: ${tapDetails.localPosition} - global: ${tapDetails.globalPosition}");
//       },
//       onClickOverlay: (target) {
//         print(target);
//       },
//       onSkip: () {
//         print("skip");
//         return false;
//       },
//       onFinish: () {
//         print("finish");
//       },
//     ).show(context: context);
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();

//     if (!_initialized) {
//       _checkAndShowTutorial();
//       _initialized = true;
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     _checkAndShowTutorial();
//     targets.add(TargetFocus(
//         identify: "Target 1",
//         keyTarget: qrScanGlobalKey,
//         contents: [
//           TargetContent(
//               align: ContentAlign.bottom,
//               child: Container(
//                 margin: const EdgeInsets.only(top: 100),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       "QR scanner",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                           fontSize: 20.0),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 10.0),
//                       child: Text(
//                         "qrCoachGuide".tr(),
//                         style: const TextStyle(color: Colors.white),
//                       ),
//                     )
//                   ],
//                 ),
//               ))
//         ]));

//     targets.add(
//         TargetFocus(identify: "Target 2", keyTarget: cartGlobalKey, contents: [
//       TargetContent(
//           align: ContentAlign.left,
//           child: Container(
//             margin: const EdgeInsets.only(top: 100),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "cart".tr(),
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       fontSize: 20.0),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10.0),
//                   child: Text(
//                     "cartCoachGuide".tr(),
//                     style: const TextStyle(color: Colors.white),
//                   ),
//                 )
//               ],
//             ),
//           )),
//       TargetContent(
//           align: ContentAlign.top,
//           child: Container(
//             child: const Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   "Multiples content",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       fontSize: 20.0),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 10.0),
//                   child: Text(
//                     "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 )
//               ],
//             ),
//           ))
//     ]));
//     //
//     // targets.add(
//     //     TargetFocus(identify: "Target 3", keyTarget: keyButton5, contents: [
//     //   TargetContent(
//     //       align: ContentAlign.right,
//     //       child: Container(
//     //         child: Column(
//     //           mainAxisSize: MainAxisSize.min,
//     //           crossAxisAlignment: CrossAxisAlignment.start,
//     //           children: <Widget>[
//     //             Text(
//     //               "Title lorem ipsum",
//     //               style: TextStyle(
//     //                   fontWeight: FontWeight.bold,
//     //                   color: Colors.white,
//     //                   fontSize: 20.0),
//     //             ),
//     //             Padding(
//     //               padding: const EdgeInsets.only(top: 10.0),
//     //               child: Text(
//     //                 "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
//     //                 style: TextStyle(color: Colors.white),
//     //               ),
//     //             )
//     //           ],
//     //         ),
//     //       ))
//     // ]));
//   }
// }
