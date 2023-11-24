import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin_flutter_app/src/features/cart/domain/cart_product.dart';
import 'package:keshoohin_flutter_app/src/features/coupon/domain/coupon.dart';
import 'package:keshoohin_flutter_app/src/features/user/domain/detail/detail.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
class Cart with _$Cart {
  factory Cart({
    @Default(0) int count,
    @Default(0) int total,
    required List<CartProduct> cartProducts,
    @Default({}) Set<int> selectedProductInCart,
    Coupon? selectedCoupon,
    UserDetail? userDetail,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

extension MutableCart on Cart {
  Cart setCoupon(Coupon coupon) {
    return copyWith(selectedCoupon: coupon);
  }

  Cart calcTotalPrice() {
    int newTotal = 0;
    for (var item in cartProducts) {
      if (userDetail!.selectedProductInCart
          .contains(item.product.idProduct)) {
        var retailPrice = item.product.retailPrice ??
            item.product.listPrice;
        newTotal += item.quantity * retailPrice;
      }
    }
    // Return a new Cart instance with the updated total value
    return copyWith(total: newTotal);
  }

  Cart setCartProducts(List<CartProduct> list) {
    return copyWith(cartProducts: list).calcTotalPrice();
  }

  Cart addSelectedProductInCart(int id, bool isAdd) {
    final Set<int> updatedSelectedProductInCart = {...selectedProductInCart};

    isAdd
        ? updatedSelectedProductInCart.add(id)
        : updatedSelectedProductInCart.remove(id);

    // Update other fields as needed
    return copyWith(selectedProductInCart: updatedSelectedProductInCart)
        .calcTotalPrice();
  }

  Cart getBuyNow(int id) {
    return copyWith(
      selectedProductInCart: {id},
    ).calcTotalPrice();
  }
}
