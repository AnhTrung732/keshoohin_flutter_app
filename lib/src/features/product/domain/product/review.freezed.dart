// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  @JsonKey(name: 'IDReview')
  int get iDReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDProduct')
  int get iDProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDCus')
  int get iDCus => throw _privateConstructorUsedError;
  @JsonKey(name: 'CreatedOn')
  String get createdOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'ContentShort')
  String get contentShort => throw _privateConstructorUsedError;
  @JsonKey(name: 'ContentLong')
  String get contentLong => throw _privateConstructorUsedError;
  @JsonKey(name: 'Rating')
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsDeleted')
  int get isDeleted => throw _privateConstructorUsedError;
  List<ImageReview>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {@JsonKey(name: 'IDReview') int iDReview,
      @JsonKey(name: 'IDProduct') int iDProduct,
      @JsonKey(name: 'IDCus') int iDCus,
      @JsonKey(name: 'CreatedOn') String createdOn,
      @JsonKey(name: 'ContentShort') String contentShort,
      @JsonKey(name: 'ContentLong') String contentLong,
      @JsonKey(name: 'Rating') int rating,
      @JsonKey(name: 'IsDeleted') int isDeleted,
      List<ImageReview>? images});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iDReview = null,
    Object? iDProduct = null,
    Object? iDCus = null,
    Object? createdOn = null,
    Object? contentShort = null,
    Object? contentLong = null,
    Object? rating = null,
    Object? isDeleted = null,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      iDReview: null == iDReview
          ? _value.iDReview
          : iDReview // ignore: cast_nullable_to_non_nullable
              as int,
      iDProduct: null == iDProduct
          ? _value.iDProduct
          : iDProduct // ignore: cast_nullable_to_non_nullable
              as int,
      iDCus: null == iDCus
          ? _value.iDCus
          : iDCus // ignore: cast_nullable_to_non_nullable
              as int,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      contentShort: null == contentShort
          ? _value.contentShort
          : contentShort // ignore: cast_nullable_to_non_nullable
              as String,
      contentLong: null == contentLong
          ? _value.contentLong
          : contentLong // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageReview>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'IDReview') int iDReview,
      @JsonKey(name: 'IDProduct') int iDProduct,
      @JsonKey(name: 'IDCus') int iDCus,
      @JsonKey(name: 'CreatedOn') String createdOn,
      @JsonKey(name: 'ContentShort') String contentShort,
      @JsonKey(name: 'ContentLong') String contentLong,
      @JsonKey(name: 'Rating') int rating,
      @JsonKey(name: 'IsDeleted') int isDeleted,
      List<ImageReview>? images});
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iDReview = null,
    Object? iDProduct = null,
    Object? iDCus = null,
    Object? createdOn = null,
    Object? contentShort = null,
    Object? contentLong = null,
    Object? rating = null,
    Object? isDeleted = null,
    Object? images = freezed,
  }) {
    return _then(_$ReviewImpl(
      iDReview: null == iDReview
          ? _value.iDReview
          : iDReview // ignore: cast_nullable_to_non_nullable
              as int,
      iDProduct: null == iDProduct
          ? _value.iDProduct
          : iDProduct // ignore: cast_nullable_to_non_nullable
              as int,
      iDCus: null == iDCus
          ? _value.iDCus
          : iDCus // ignore: cast_nullable_to_non_nullable
              as int,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      contentShort: null == contentShort
          ? _value.contentShort
          : contentShort // ignore: cast_nullable_to_non_nullable
              as String,
      contentLong: null == contentLong
          ? _value.contentLong
          : contentLong // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageReview>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  _$ReviewImpl(
      {@JsonKey(name: 'IDReview') required this.iDReview,
      @JsonKey(name: 'IDProduct') required this.iDProduct,
      @JsonKey(name: 'IDCus') required this.iDCus,
      @JsonKey(name: 'CreatedOn') required this.createdOn,
      @JsonKey(name: 'ContentShort') required this.contentShort,
      @JsonKey(name: 'ContentLong') required this.contentLong,
      @JsonKey(name: 'Rating') required this.rating,
      @JsonKey(name: 'IsDeleted') required this.isDeleted,
      final List<ImageReview>? images})
      : _images = images;

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  @JsonKey(name: 'IDReview')
  final int iDReview;
  @override
  @JsonKey(name: 'IDProduct')
  final int iDProduct;
  @override
  @JsonKey(name: 'IDCus')
  final int iDCus;
  @override
  @JsonKey(name: 'CreatedOn')
  final String createdOn;
  @override
  @JsonKey(name: 'ContentShort')
  final String contentShort;
  @override
  @JsonKey(name: 'ContentLong')
  final String contentLong;
  @override
  @JsonKey(name: 'Rating')
  final int rating;
  @override
  @JsonKey(name: 'IsDeleted')
  final int isDeleted;
  final List<ImageReview>? _images;
  @override
  List<ImageReview>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Review(iDReview: $iDReview, iDProduct: $iDProduct, iDCus: $iDCus, createdOn: $createdOn, contentShort: $contentShort, contentLong: $contentLong, rating: $rating, isDeleted: $isDeleted, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.iDReview, iDReview) ||
                other.iDReview == iDReview) &&
            (identical(other.iDProduct, iDProduct) ||
                other.iDProduct == iDProduct) &&
            (identical(other.iDCus, iDCus) || other.iDCus == iDCus) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.contentShort, contentShort) ||
                other.contentShort == contentShort) &&
            (identical(other.contentLong, contentLong) ||
                other.contentLong == contentLong) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      iDReview,
      iDProduct,
      iDCus,
      createdOn,
      contentShort,
      contentLong,
      rating,
      isDeleted,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  factory _Review(
      {@JsonKey(name: 'IDReview') required final int iDReview,
      @JsonKey(name: 'IDProduct') required final int iDProduct,
      @JsonKey(name: 'IDCus') required final int iDCus,
      @JsonKey(name: 'CreatedOn') required final String createdOn,
      @JsonKey(name: 'ContentShort') required final String contentShort,
      @JsonKey(name: 'ContentLong') required final String contentLong,
      @JsonKey(name: 'Rating') required final int rating,
      @JsonKey(name: 'IsDeleted') required final int isDeleted,
      final List<ImageReview>? images}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  @JsonKey(name: 'IDReview')
  int get iDReview;
  @override
  @JsonKey(name: 'IDProduct')
  int get iDProduct;
  @override
  @JsonKey(name: 'IDCus')
  int get iDCus;
  @override
  @JsonKey(name: 'CreatedOn')
  String get createdOn;
  @override
  @JsonKey(name: 'ContentShort')
  String get contentShort;
  @override
  @JsonKey(name: 'ContentLong')
  String get contentLong;
  @override
  @JsonKey(name: 'Rating')
  int get rating;
  @override
  @JsonKey(name: 'IsDeleted')
  int get isDeleted;
  @override
  List<ImageReview>? get images;
  @override
  @JsonKey(ignore: true)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
