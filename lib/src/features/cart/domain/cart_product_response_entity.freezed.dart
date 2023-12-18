// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartProductResponseEntity _$CartProductResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _CartProduct.fromJson(json);
}

/// @nodoc
mixin _$CartProductResponseEntity {
  int get quantity => throw _privateConstructorUsedError;
  ProductResponseModel get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductResponseEntityCopyWith<CartProductResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductResponseEntityCopyWith<$Res> {
  factory $CartProductResponseEntityCopyWith(CartProductResponseEntity value,
          $Res Function(CartProductResponseEntity) then) =
      _$CartProductResponseEntityCopyWithImpl<$Res, CartProductResponseEntity>;
  @useResult
  $Res call({int quantity, ProductResponseModel product});

  $ProductResponseModelCopyWith<$Res> get product;
}

/// @nodoc
class _$CartProductResponseEntityCopyWithImpl<$Res,
        $Val extends CartProductResponseEntity>
    implements $CartProductResponseEntityCopyWith<$Res> {
  _$CartProductResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductResponseModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductResponseModelCopyWith<$Res> get product {
    return $ProductResponseModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartProductImplCopyWith<$Res>
    implements $CartProductResponseEntityCopyWith<$Res> {
  factory _$$CartProductImplCopyWith(
          _$CartProductImpl value, $Res Function(_$CartProductImpl) then) =
      __$$CartProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantity, ProductResponseModel product});

  @override
  $ProductResponseModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$CartProductImplCopyWithImpl<$Res>
    extends _$CartProductResponseEntityCopyWithImpl<$Res, _$CartProductImpl>
    implements _$$CartProductImplCopyWith<$Res> {
  __$$CartProductImplCopyWithImpl(
      _$CartProductImpl _value, $Res Function(_$CartProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? product = null,
  }) {
    return _then(_$CartProductImpl(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductResponseModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProductImpl implements _CartProduct {
  const _$CartProductImpl({required this.quantity, required this.product});

  factory _$CartProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductImplFromJson(json);

  @override
  final int quantity;
  @override
  final ProductResponseModel product;

  @override
  String toString() {
    return 'CartProductResponseEntity(quantity: $quantity, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductImplCopyWith<_$CartProductImpl> get copyWith =>
      __$$CartProductImplCopyWithImpl<_$CartProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductImplToJson(
      this,
    );
  }
}

abstract class _CartProduct implements CartProductResponseEntity {
  const factory _CartProduct(
      {required final int quantity,
      required final ProductResponseModel product}) = _$CartProductImpl;

  factory _CartProduct.fromJson(Map<String, dynamic> json) =
      _$CartProductImpl.fromJson;

  @override
  int get quantity;
  @override
  ProductResponseModel get product;
  @override
  @JsonKey(ignore: true)
  _$$CartProductImplCopyWith<_$CartProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
