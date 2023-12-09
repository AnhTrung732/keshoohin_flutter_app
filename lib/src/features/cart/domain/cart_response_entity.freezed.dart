// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartResponseEntity _$CartResponseEntityFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$CartResponseEntity {
  int get count => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<CartProductResponseEntity> get cartProducts =>
      throw _privateConstructorUsedError;
  Set<int> get selectedProductInCart => throw _privateConstructorUsedError;
  Coupon? get selectedCoupon => throw _privateConstructorUsedError;
  UserDetail? get userDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartResponseEntityCopyWith<CartResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartResponseEntityCopyWith<$Res> {
  factory $CartResponseEntityCopyWith(
          CartResponseEntity value, $Res Function(CartResponseEntity) then) =
      _$CartResponseEntityCopyWithImpl<$Res, CartResponseEntity>;
  @useResult
  $Res call(
      {int count,
      int total,
      List<CartProductResponseEntity> cartProducts,
      Set<int> selectedProductInCart,
      Coupon? selectedCoupon,
      UserDetail? userDetail});

  $CouponCopyWith<$Res>? get selectedCoupon;
  $UserDetailCopyWith<$Res>? get userDetail;
}

/// @nodoc
class _$CartResponseEntityCopyWithImpl<$Res, $Val extends CartResponseEntity>
    implements $CartResponseEntityCopyWith<$Res> {
  _$CartResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? total = null,
    Object? cartProducts = null,
    Object? selectedProductInCart = null,
    Object? selectedCoupon = freezed,
    Object? userDetail = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      cartProducts: null == cartProducts
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProductResponseEntity>,
      selectedProductInCart: null == selectedProductInCart
          ? _value.selectedProductInCart
          : selectedProductInCart // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      selectedCoupon: freezed == selectedCoupon
          ? _value.selectedCoupon
          : selectedCoupon // ignore: cast_nullable_to_non_nullable
              as Coupon?,
      userDetail: freezed == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CouponCopyWith<$Res>? get selectedCoupon {
    if (_value.selectedCoupon == null) {
      return null;
    }

    return $CouponCopyWith<$Res>(_value.selectedCoupon!, (value) {
      return _then(_value.copyWith(selectedCoupon: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailCopyWith<$Res>? get userDetail {
    if (_value.userDetail == null) {
      return null;
    }

    return $UserDetailCopyWith<$Res>(_value.userDetail!, (value) {
      return _then(_value.copyWith(userDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartImplCopyWith<$Res>
    implements $CartResponseEntityCopyWith<$Res> {
  factory _$$CartImplCopyWith(
          _$CartImpl value, $Res Function(_$CartImpl) then) =
      __$$CartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      int total,
      List<CartProductResponseEntity> cartProducts,
      Set<int> selectedProductInCart,
      Coupon? selectedCoupon,
      UserDetail? userDetail});

  @override
  $CouponCopyWith<$Res>? get selectedCoupon;
  @override
  $UserDetailCopyWith<$Res>? get userDetail;
}

/// @nodoc
class __$$CartImplCopyWithImpl<$Res>
    extends _$CartResponseEntityCopyWithImpl<$Res, _$CartImpl>
    implements _$$CartImplCopyWith<$Res> {
  __$$CartImplCopyWithImpl(_$CartImpl _value, $Res Function(_$CartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? total = null,
    Object? cartProducts = null,
    Object? selectedProductInCart = null,
    Object? selectedCoupon = freezed,
    Object? userDetail = freezed,
  }) {
    return _then(_$CartImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      cartProducts: null == cartProducts
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProductResponseEntity>,
      selectedProductInCart: null == selectedProductInCart
          ? _value._selectedProductInCart
          : selectedProductInCart // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      selectedCoupon: freezed == selectedCoupon
          ? _value.selectedCoupon
          : selectedCoupon // ignore: cast_nullable_to_non_nullable
              as Coupon?,
      userDetail: freezed == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartImpl implements _Cart {
  _$CartImpl(
      {this.count = 0,
      this.total = 0,
      required final List<CartProductResponseEntity> cartProducts,
      final Set<int> selectedProductInCart = const {},
      this.selectedCoupon,
      this.userDetail})
      : _cartProducts = cartProducts,
        _selectedProductInCart = selectedProductInCart;

  factory _$CartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartImplFromJson(json);

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int total;
  final List<CartProductResponseEntity> _cartProducts;
  @override
  List<CartProductResponseEntity> get cartProducts {
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProducts);
  }

  final Set<int> _selectedProductInCart;
  @override
  @JsonKey()
  Set<int> get selectedProductInCart {
    if (_selectedProductInCart is EqualUnmodifiableSetView)
      return _selectedProductInCart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedProductInCart);
  }

  @override
  final Coupon? selectedCoupon;
  @override
  final UserDetail? userDetail;

  @override
  String toString() {
    return 'CartResponseEntity(count: $count, total: $total, cartProducts: $cartProducts, selectedProductInCart: $selectedProductInCart, selectedCoupon: $selectedCoupon, userDetail: $userDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts) &&
            const DeepCollectionEquality()
                .equals(other._selectedProductInCart, _selectedProductInCart) &&
            (identical(other.selectedCoupon, selectedCoupon) ||
                other.selectedCoupon == selectedCoupon) &&
            (identical(other.userDetail, userDetail) ||
                other.userDetail == userDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      total,
      const DeepCollectionEquality().hash(_cartProducts),
      const DeepCollectionEquality().hash(_selectedProductInCart),
      selectedCoupon,
      userDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      __$$CartImplCopyWithImpl<_$CartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartImplToJson(
      this,
    );
  }
}

abstract class _Cart implements CartResponseEntity {
  factory _Cart(
      {final int count,
      final int total,
      required final List<CartProductResponseEntity> cartProducts,
      final Set<int> selectedProductInCart,
      final Coupon? selectedCoupon,
      final UserDetail? userDetail}) = _$CartImpl;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$CartImpl.fromJson;

  @override
  int get count;
  @override
  int get total;
  @override
  List<CartProductResponseEntity> get cartProducts;
  @override
  Set<int> get selectedProductInCart;
  @override
  Coupon? get selectedCoupon;
  @override
  UserDetail? get userDetail;
  @override
  @JsonKey(ignore: true)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
