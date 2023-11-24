// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:keshoohin_flutter_app/src/utils/constants/api_config.dart';
// import 'package:keshoohin_flutter_app/src/features/cart/domain/cart.dart';
// import 'package:keshoohin_flutter_app/src/features/coupon/domain/coupon.dart';
// import 'package:keshoohin_flutter_app/src/features/product/futureAddToCart.dart';
// import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user/user_impl.dart';
// import 'package:keshoohin_flutter_app/src/services/shared_preferences/dev/shared_preferences_provider.dart';
// import 'package:keshoohin_flutter_app/src/services/shared_preferences/shared_preferences_impl.dart';
// import 'package:keshoohin_flutter_app/src/services/shared_preferences/shared_preferences_repository.dart';
// import 'package:keshoohin_flutter_app/src/services/shared_preferences/shared_preferences_repository_provider.dart';

// class CartProvider with ChangeNotifier {
//   final UserRepositoryImpl impl;
//   final Cart cart;

//   CartProvider({required this.impl, required this.cart});


//   // void setCoupon(Coupon coupon) {
//   //   _selectedCoupon = coupon;
//   //   notifyListeners();
//   // }

//   // void saveCartProducts(List<CartProduct> list) {
//   //   _cartProducts = list;
//   //   _numOfProducts = list.length;
//   //   calcTotalPrice();
//   //   notifyListeners();
//   // }

//   Future<Map<String, dynamic>> makeToOrder() async {
//     var invDetail = getCheckoutProduct().map((e) {
//       return {
//         "IDProduct": e.product.idProduct.toString(),
//         "Quantity": e.quantity.toString(),
//       };
//     }).toList();

//     late final body;
//     await _getBodyFromSharedPreferences().then((value) => body = value);

//     http.Response response = await http.post(
//       headers: {"Content-type": "application/json"},
//       Uri.parse('$baseUrl/api/invoice/create'),
//       body: body,
//     );

//     return {
//       'IDInvoice': jsonDecode(response.body)['IDInvoice'],
//       "MethodPay": jsonDecode(response.body)['MethodPay'],
//       "TotalValue": jsonDecode(response.body)['TotalValue']
//     };
//   }

//   Future<String> _getBodyFromSharedPreferences() async {
//     var invDetail = getCheckoutProduct().map((e) {
//       return {
//         "IDProduct": e.product.idProduct.toString(),
//         "Quantity": e.quantity.toString(),
//       };
//     }).toList();

//     late String body;
//     await impl.getCurrentUser().then((value) => body = jsonEncode({
//           "IDCus": value!.idUser,
//           "MethodPay": paymentMethod,
//           "CodeCoupon":
//               selectedCoupon == null ? null : selectedCoupon!.codeCoupon,
//           "InvoiceDetail": invDetail,
//           "City": city,
//           "District": district,
//           "Ward": ward,
//           "AddressDetail": addressDetail,
//           "Email": value!.email,
//           "Phone": phoneCustomer,
//           "FirstName": nameCustomer,
//           "LastName": ".",
//           "DeviceTokenFCM": deviceTokenFCM
//         }));

//     return body;
//   }

//   // void calcTotalPrice() {
//   //   _total = 0;
//   //   _cartProducts.forEach((i) {
//   //     if (selectedProductInCart.contains(i.product.idProduct)) {
//   //       _total += i.quantity * i.product.retailPrice;
//   //     }
//   //   });
//   // }

//   // Set<int> addToSelectedProductInCart(int id, bool isAdd) {
//   //   isAdd ? selectedProductInCart.add(id) : selectedProductInCart.remove(id);

//   //   calcTotalPrice();
//   //   notifyListeners();
//   //   return selectedProductInCart;
//   // }

//   List<CartProduct> getCheckoutProduct() {
//     return _cartProducts
//         .where((e) => selectedProductInCart.contains(e.product.idProduct))
//         .toList();
//   }

//   // void getBuyNow(int id) {
//   //   selectedProductInCart = {id};
//   //   calcTotalPrice();
//   //   notifyListeners();
//   // }

//   Future<void> getBuyAgain(List<CartProduct> listId, context) async {
//     selectedProductInCart = {};

//     for (var e in listId) {
//       for (var i = 0; i < e.quantity; i++) {
//         await futureAddToCart(context, e.product.idProduct, 1);
//       }
//       selectedProductInCart.add(e.product.idProduct);
//     }

//     calcTotalPrice();
//     notifyListeners();
//   }
// }
