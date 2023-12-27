// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageReviewResponseModel _$ImageReviewResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ImageReview.fromJson(json);
}

/// @nodoc
mixin _$ImageReviewResponseModel {
  int get iDReviewImage => throw _privateConstructorUsedError;
  int get iDReview => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageReviewResponseModelCopyWith<ImageReviewResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageReviewResponseModelCopyWith<$Res> {
  factory $ImageReviewResponseModelCopyWith(ImageReviewResponseModel value,
          $Res Function(ImageReviewResponseModel) then) =
      _$ImageReviewResponseModelCopyWithImpl<$Res, ImageReviewResponseModel>;
  @useResult
  $Res call({int iDReviewImage, int iDReview, String path});
}

/// @nodoc
class _$ImageReviewResponseModelCopyWithImpl<$Res,
        $Val extends ImageReviewResponseModel>
    implements $ImageReviewResponseModelCopyWith<$Res> {
  _$ImageReviewResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iDReviewImage = null,
    Object? iDReview = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      iDReviewImage: null == iDReviewImage
          ? _value.iDReviewImage
          : iDReviewImage // ignore: cast_nullable_to_non_nullable
              as int,
      iDReview: null == iDReview
          ? _value.iDReview
          : iDReview // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageReviewImplCopyWith<$Res>
    implements $ImageReviewResponseModelCopyWith<$Res> {
  factory _$$ImageReviewImplCopyWith(
          _$ImageReviewImpl value, $Res Function(_$ImageReviewImpl) then) =
      __$$ImageReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int iDReviewImage, int iDReview, String path});
}

/// @nodoc
class __$$ImageReviewImplCopyWithImpl<$Res>
    extends _$ImageReviewResponseModelCopyWithImpl<$Res, _$ImageReviewImpl>
    implements _$$ImageReviewImplCopyWith<$Res> {
  __$$ImageReviewImplCopyWithImpl(
      _$ImageReviewImpl _value, $Res Function(_$ImageReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iDReviewImage = null,
    Object? iDReview = null,
    Object? path = null,
  }) {
    return _then(_$ImageReviewImpl(
      iDReviewImage: null == iDReviewImage
          ? _value.iDReviewImage
          : iDReviewImage // ignore: cast_nullable_to_non_nullable
              as int,
      iDReview: null == iDReview
          ? _value.iDReview
          : iDReview // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageReviewImpl extends _ImageReview {
  _$ImageReviewImpl(
      {required this.iDReviewImage, required this.iDReview, required this.path})
      : super._();

  factory _$ImageReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageReviewImplFromJson(json);

  @override
  final int iDReviewImage;
  @override
  final int iDReview;
  @override
  final String path;

  @override
  String toString() {
    return 'ImageReviewResponseModel(iDReviewImage: $iDReviewImage, iDReview: $iDReview, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageReviewImpl &&
            (identical(other.iDReviewImage, iDReviewImage) ||
                other.iDReviewImage == iDReviewImage) &&
            (identical(other.iDReview, iDReview) ||
                other.iDReview == iDReview) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iDReviewImage, iDReview, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageReviewImplCopyWith<_$ImageReviewImpl> get copyWith =>
      __$$ImageReviewImplCopyWithImpl<_$ImageReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageReviewImplToJson(
      this,
    );
  }
}

abstract class _ImageReview extends ImageReviewResponseModel {
  factory _ImageReview(
      {required final int iDReviewImage,
      required final int iDReview,
      required final String path}) = _$ImageReviewImpl;
  _ImageReview._() : super._();

  factory _ImageReview.fromJson(Map<String, dynamic> json) =
      _$ImageReviewImpl.fromJson;

  @override
  int get iDReviewImage;
  @override
  int get iDReview;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$ImageReviewImplCopyWith<_$ImageReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewResponseModel _$ReviewResponseModelFromJson(Map<String, dynamic> json) {
  return _ReviewResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewResponseModel {
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
  List<ImageReviewResponseModel>? get images =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewResponseModelCopyWith<ReviewResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewResponseModelCopyWith<$Res> {
  factory $ReviewResponseModelCopyWith(
          ReviewResponseModel value, $Res Function(ReviewResponseModel) then) =
      _$ReviewResponseModelCopyWithImpl<$Res, ReviewResponseModel>;
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
      List<ImageReviewResponseModel>? images});
}

/// @nodoc
class _$ReviewResponseModelCopyWithImpl<$Res, $Val extends ReviewResponseModel>
    implements $ReviewResponseModelCopyWith<$Res> {
  _$ReviewResponseModelCopyWithImpl(this._value, this._then);

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
              as List<ImageReviewResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewResponseModelImplCopyWith<$Res>
    implements $ReviewResponseModelCopyWith<$Res> {
  factory _$$ReviewResponseModelImplCopyWith(_$ReviewResponseModelImpl value,
          $Res Function(_$ReviewResponseModelImpl) then) =
      __$$ReviewResponseModelImplCopyWithImpl<$Res>;
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
      List<ImageReviewResponseModel>? images});
}

/// @nodoc
class __$$ReviewResponseModelImplCopyWithImpl<$Res>
    extends _$ReviewResponseModelCopyWithImpl<$Res, _$ReviewResponseModelImpl>
    implements _$$ReviewResponseModelImplCopyWith<$Res> {
  __$$ReviewResponseModelImplCopyWithImpl(_$ReviewResponseModelImpl _value,
      $Res Function(_$ReviewResponseModelImpl) _then)
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
    return _then(_$ReviewResponseModelImpl(
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
              as List<ImageReviewResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewResponseModelImpl extends _ReviewResponseModel {
  _$ReviewResponseModelImpl(
      {@JsonKey(name: 'IDReview') required this.iDReview,
      @JsonKey(name: 'IDProduct') required this.iDProduct,
      @JsonKey(name: 'IDCus') required this.iDCus,
      @JsonKey(name: 'CreatedOn') required this.createdOn,
      @JsonKey(name: 'ContentShort') required this.contentShort,
      @JsonKey(name: 'ContentLong') required this.contentLong,
      @JsonKey(name: 'Rating') required this.rating,
      @JsonKey(name: 'IsDeleted') required this.isDeleted,
      final List<ImageReviewResponseModel>? images})
      : _images = images,
        super._();

  factory _$ReviewResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewResponseModelImplFromJson(json);

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
  final List<ImageReviewResponseModel>? _images;
  @override
  List<ImageReviewResponseModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReviewResponseModel(iDReview: $iDReview, iDProduct: $iDProduct, iDCus: $iDCus, createdOn: $createdOn, contentShort: $contentShort, contentLong: $contentLong, rating: $rating, isDeleted: $isDeleted, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewResponseModelImpl &&
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
  _$$ReviewResponseModelImplCopyWith<_$ReviewResponseModelImpl> get copyWith =>
      __$$ReviewResponseModelImplCopyWithImpl<_$ReviewResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewResponseModel extends ReviewResponseModel {
  factory _ReviewResponseModel(
          {@JsonKey(name: 'IDReview') required final int iDReview,
          @JsonKey(name: 'IDProduct') required final int iDProduct,
          @JsonKey(name: 'IDCus') required final int iDCus,
          @JsonKey(name: 'CreatedOn') required final String createdOn,
          @JsonKey(name: 'ContentShort') required final String contentShort,
          @JsonKey(name: 'ContentLong') required final String contentLong,
          @JsonKey(name: 'Rating') required final int rating,
          @JsonKey(name: 'IsDeleted') required final int isDeleted,
          final List<ImageReviewResponseModel>? images}) =
      _$ReviewResponseModelImpl;
  _ReviewResponseModel._() : super._();

  factory _ReviewResponseModel.fromJson(Map<String, dynamic> json) =
      _$ReviewResponseModelImpl.fromJson;

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
  List<ImageReviewResponseModel>? get images;
  @override
  @JsonKey(ignore: true)
  _$$ReviewResponseModelImplCopyWith<_$ReviewResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
