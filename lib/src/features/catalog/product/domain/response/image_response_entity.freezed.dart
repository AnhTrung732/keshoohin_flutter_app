// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageProductResponseEntity _$ImageProductResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _ImageProduct.fromJson(json);
}

/// @nodoc
mixin _$ImageProductResponseEntity {
  @JsonKey(name: 'Path')
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageProductResponseEntityCopyWith<ImageProductResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageProductResponseEntityCopyWith<$Res> {
  factory $ImageProductResponseEntityCopyWith(ImageProductResponseEntity value,
          $Res Function(ImageProductResponseEntity) then) =
      _$ImageProductResponseEntityCopyWithImpl<$Res,
          ImageProductResponseEntity>;
  @useResult
  $Res call({@JsonKey(name: 'Path') String? path});
}

/// @nodoc
class _$ImageProductResponseEntityCopyWithImpl<$Res,
        $Val extends ImageProductResponseEntity>
    implements $ImageProductResponseEntityCopyWith<$Res> {
  _$ImageProductResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageProductImplCopyWith<$Res>
    implements $ImageProductResponseEntityCopyWith<$Res> {
  factory _$$ImageProductImplCopyWith(
          _$ImageProductImpl value, $Res Function(_$ImageProductImpl) then) =
      __$$ImageProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Path') String? path});
}

/// @nodoc
class __$$ImageProductImplCopyWithImpl<$Res>
    extends _$ImageProductResponseEntityCopyWithImpl<$Res, _$ImageProductImpl>
    implements _$$ImageProductImplCopyWith<$Res> {
  __$$ImageProductImplCopyWithImpl(
      _$ImageProductImpl _value, $Res Function(_$ImageProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_$ImageProductImpl(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageProductImpl implements _ImageProduct {
  _$ImageProductImpl({@JsonKey(name: 'Path') this.path});

  factory _$ImageProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageProductImplFromJson(json);

  @override
  @JsonKey(name: 'Path')
  final String? path;

  @override
  String toString() {
    return 'ImageProductResponseEntity(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageProductImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageProductImplCopyWith<_$ImageProductImpl> get copyWith =>
      __$$ImageProductImplCopyWithImpl<_$ImageProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageProductImplToJson(
      this,
    );
  }
}

abstract class _ImageProduct implements ImageProductResponseEntity {
  factory _ImageProduct({@JsonKey(name: 'Path') final String? path}) =
      _$ImageProductImpl;

  factory _ImageProduct.fromJson(Map<String, dynamic> json) =
      _$ImageProductImpl.fromJson;

  @override
  @JsonKey(name: 'Path')
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$$ImageProductImplCopyWith<_$ImageProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
