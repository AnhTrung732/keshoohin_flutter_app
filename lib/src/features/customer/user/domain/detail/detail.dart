import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail.freezed.dart';
part 'detail.g.dart';

@freezed 
class UserDetail with _$UserDetail {
  factory UserDetail({
    @Default('addressDetail') String addressDetail,
    @Default('city') String city,
    @Default('district') String district,
    @Default('ward') String ward,
    @Default('')  String deviceTokenFCM,
    @Default("1") String paymentMethod, //1 is cash on delivery, 2 is pay on vnpay gateway
    @Default({}) Set<int> selectedProductInCart
  }) = _UserDetail;

  factory UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);
}
