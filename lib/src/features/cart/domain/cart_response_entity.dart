import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin_flutter_app/src/features/cart/domain/cart_product_response_entity.dart';
import 'package:keshoohin_flutter_app/src/features/coupon/domain/coupon.dart';
import 'package:keshoohin_flutter_app/src/features/customer/user/domain/detail/detail.dart';

part 'cart_response_entity.freezed.dart';
part 'cart_response_entity.g.dart';

@freezed
class CartResponseEntity with _$CartResponseEntity {
  factory CartResponseEntity({
    @Default(0) int count,
    @Default(0) int total,
    required List<CartProductResponseEntity> cartProducts,
    @Default({}) Set<int> selectedProductInCart,
    Coupon? selectedCoupon,
    UserDetail? userDetail,
  }) = _Cart;

  factory CartResponseEntity.fromJson(Map<String, dynamic> json) => _$CartResponseEntityFromJson(json);
}

extension MutableCart on CartResponseEntity {
  CartResponseEntity setCoupon(Coupon coupon) {
    return copyWith(selectedCoupon: coupon);
  }

  CartResponseEntity calcTotalPrice() {
    int newTotal = 0;
    for (var item in cartProducts) {
      if (userDetail!.selectedProductInCart
          .contains(item.product.idProduct)) {
        var retailPrice = item.product.retailPrice ??
            item.product.listPrice;
        newTotal += item.quantity * retailPrice!;
      }
    }
    // Return a new Cart instance with the updated total value
    return copyWith(total: newTotal);
  }

  CartResponseEntity setCartProducts(List<CartProductResponseEntity> list) {
    return copyWith(cartProducts: list).calcTotalPrice();
  }

  CartResponseEntity addSelectedProductInCart(int id, bool isAdd) {
    final Set<int> updatedSelectedProductInCart = {...selectedProductInCart};

    isAdd
        ? updatedSelectedProductInCart.add(id)
        : updatedSelectedProductInCart.remove(id);

    // Update other fields as needed
    return copyWith(selectedProductInCart: updatedSelectedProductInCart)
        .calcTotalPrice();
  }

  CartResponseEntity getBuyNow(int id) {
    return copyWith(
      selectedProductInCart: {id},
    ).calcTotalPrice();
  }
}
