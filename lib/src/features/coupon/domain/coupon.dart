import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon.freezed.dart';
part 'coupon.g.dart';

@freezed
class Coupon with _$Coupon {
  factory Coupon({
    required int iDCoupon,
    required int valueDiscount,
    required String startOn,
    required String endOn,
    required String description,
    required int isDeleted,
    required int minInvoiceValue,
    required String codeCoupon,
    required int quantity,
    required int isMutualEvent,
    required int stock,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}
