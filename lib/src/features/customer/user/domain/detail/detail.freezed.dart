// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) {
  return _UserDetail.fromJson(json);
}

/// @nodoc
mixin _$UserDetail {
  String get addressDetail => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  String get ward => throw _privateConstructorUsedError;
  String get deviceTokenFCM => throw _privateConstructorUsedError;
  String get paymentMethod =>
      throw _privateConstructorUsedError; //1 is cash on delivery, 2 is pay on vnpay gateway
  Set<int> get selectedProductInCart => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailCopyWith<UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res, UserDetail>;
  @useResult
  $Res call(
      {String addressDetail,
      String city,
      String district,
      String ward,
      String deviceTokenFCM,
      String paymentMethod,
      Set<int> selectedProductInCart});
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res, $Val extends UserDetail>
    implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressDetail = null,
    Object? city = null,
    Object? district = null,
    Object? ward = null,
    Object? deviceTokenFCM = null,
    Object? paymentMethod = null,
    Object? selectedProductInCart = null,
  }) {
    return _then(_value.copyWith(
      addressDetail: null == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      ward: null == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String,
      deviceTokenFCM: null == deviceTokenFCM
          ? _value.deviceTokenFCM
          : deviceTokenFCM // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      selectedProductInCart: null == selectedProductInCart
          ? _value.selectedProductInCart
          : selectedProductInCart // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailImplCopyWith<$Res>
    implements $UserDetailCopyWith<$Res> {
  factory _$$UserDetailImplCopyWith(
          _$UserDetailImpl value, $Res Function(_$UserDetailImpl) then) =
      __$$UserDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String addressDetail,
      String city,
      String district,
      String ward,
      String deviceTokenFCM,
      String paymentMethod,
      Set<int> selectedProductInCart});
}

/// @nodoc
class __$$UserDetailImplCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$UserDetailImpl>
    implements _$$UserDetailImplCopyWith<$Res> {
  __$$UserDetailImplCopyWithImpl(
      _$UserDetailImpl _value, $Res Function(_$UserDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressDetail = null,
    Object? city = null,
    Object? district = null,
    Object? ward = null,
    Object? deviceTokenFCM = null,
    Object? paymentMethod = null,
    Object? selectedProductInCart = null,
  }) {
    return _then(_$UserDetailImpl(
      addressDetail: null == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      ward: null == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String,
      deviceTokenFCM: null == deviceTokenFCM
          ? _value.deviceTokenFCM
          : deviceTokenFCM // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      selectedProductInCart: null == selectedProductInCart
          ? _value._selectedProductInCart
          : selectedProductInCart // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailImpl implements _UserDetail {
  _$UserDetailImpl(
      {this.addressDetail = 'addressDetail',
      this.city = 'city',
      this.district = 'district',
      this.ward = 'ward',
      this.deviceTokenFCM = '',
      this.paymentMethod = "1",
      final Set<int> selectedProductInCart = const {}})
      : _selectedProductInCart = selectedProductInCart;

  factory _$UserDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailImplFromJson(json);

  @override
  @JsonKey()
  final String addressDetail;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String district;
  @override
  @JsonKey()
  final String ward;
  @override
  @JsonKey()
  final String deviceTokenFCM;
  @override
  @JsonKey()
  final String paymentMethod;
//1 is cash on delivery, 2 is pay on vnpay gateway
  final Set<int> _selectedProductInCart;
//1 is cash on delivery, 2 is pay on vnpay gateway
  @override
  @JsonKey()
  Set<int> get selectedProductInCart {
    if (_selectedProductInCart is EqualUnmodifiableSetView)
      return _selectedProductInCart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedProductInCart);
  }

  @override
  String toString() {
    return 'UserDetail(addressDetail: $addressDetail, city: $city, district: $district, ward: $ward, deviceTokenFCM: $deviceTokenFCM, paymentMethod: $paymentMethod, selectedProductInCart: $selectedProductInCart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailImpl &&
            (identical(other.addressDetail, addressDetail) ||
                other.addressDetail == addressDetail) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.ward, ward) || other.ward == ward) &&
            (identical(other.deviceTokenFCM, deviceTokenFCM) ||
                other.deviceTokenFCM == deviceTokenFCM) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other._selectedProductInCart, _selectedProductInCart));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      addressDetail,
      city,
      district,
      ward,
      deviceTokenFCM,
      paymentMethod,
      const DeepCollectionEquality().hash(_selectedProductInCart));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      __$$UserDetailImplCopyWithImpl<_$UserDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailImplToJson(
      this,
    );
  }
}

abstract class _UserDetail implements UserDetail {
  factory _UserDetail(
      {final String addressDetail,
      final String city,
      final String district,
      final String ward,
      final String deviceTokenFCM,
      final String paymentMethod,
      final Set<int> selectedProductInCart}) = _$UserDetailImpl;

  factory _UserDetail.fromJson(Map<String, dynamic> json) =
      _$UserDetailImpl.fromJson;

  @override
  String get addressDetail;
  @override
  String get city;
  @override
  String get district;
  @override
  String get ward;
  @override
  String get deviceTokenFCM;
  @override
  String get paymentMethod;
  @override //1 is cash on delivery, 2 is pay on vnpay gateway
  Set<int> get selectedProductInCart;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
