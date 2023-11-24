// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageReview _$ImageReviewFromJson(Map<String, dynamic> json) {
  return _ImageReview.fromJson(json);
}

/// @nodoc
mixin _$ImageReview {
  int get iDReviewImage => throw _privateConstructorUsedError;
  int get iDReview => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageReviewCopyWith<ImageReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageReviewCopyWith<$Res> {
  factory $ImageReviewCopyWith(
          ImageReview value, $Res Function(ImageReview) then) =
      _$ImageReviewCopyWithImpl<$Res, ImageReview>;
  @useResult
  $Res call({int iDReviewImage, int iDReview, String path});
}

/// @nodoc
class _$ImageReviewCopyWithImpl<$Res, $Val extends ImageReview>
    implements $ImageReviewCopyWith<$Res> {
  _$ImageReviewCopyWithImpl(this._value, this._then);

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
    implements $ImageReviewCopyWith<$Res> {
  factory _$$ImageReviewImplCopyWith(
          _$ImageReviewImpl value, $Res Function(_$ImageReviewImpl) then) =
      __$$ImageReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int iDReviewImage, int iDReview, String path});
}

/// @nodoc
class __$$ImageReviewImplCopyWithImpl<$Res>
    extends _$ImageReviewCopyWithImpl<$Res, _$ImageReviewImpl>
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
class _$ImageReviewImpl implements _ImageReview {
  _$ImageReviewImpl(
      {required this.iDReviewImage,
      required this.iDReview,
      required this.path});

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
    return 'ImageReview(iDReviewImage: $iDReviewImage, iDReview: $iDReview, path: $path)';
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

abstract class _ImageReview implements ImageReview {
  factory _ImageReview(
      {required final int iDReviewImage,
      required final int iDReview,
      required final String path}) = _$ImageReviewImpl;

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
