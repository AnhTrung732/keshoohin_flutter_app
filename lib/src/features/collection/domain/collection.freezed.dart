// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return _Collection.fromJson(json);
}

/// @nodoc
mixin _$Collection {
  CollectionInfor get collectionInfor => throw _privateConstructorUsedError;
  List<Product> get collectionproducts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionCopyWith<Collection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionCopyWith<$Res> {
  factory $CollectionCopyWith(
          Collection value, $Res Function(Collection) then) =
      _$CollectionCopyWithImpl<$Res, Collection>;
  @useResult
  $Res call(
      {CollectionInfor collectionInfor, List<Product> collectionproducts});

  $CollectionInforCopyWith<$Res> get collectionInfor;
}

/// @nodoc
class _$CollectionCopyWithImpl<$Res, $Val extends Collection>
    implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionInfor = null,
    Object? collectionproducts = null,
  }) {
    return _then(_value.copyWith(
      collectionInfor: null == collectionInfor
          ? _value.collectionInfor
          : collectionInfor // ignore: cast_nullable_to_non_nullable
              as CollectionInfor,
      collectionproducts: null == collectionproducts
          ? _value.collectionproducts
          : collectionproducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectionInforCopyWith<$Res> get collectionInfor {
    return $CollectionInforCopyWith<$Res>(_value.collectionInfor, (value) {
      return _then(_value.copyWith(collectionInfor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollectionImplCopyWith<$Res>
    implements $CollectionCopyWith<$Res> {
  factory _$$CollectionImplCopyWith(
          _$CollectionImpl value, $Res Function(_$CollectionImpl) then) =
      __$$CollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CollectionInfor collectionInfor, List<Product> collectionproducts});

  @override
  $CollectionInforCopyWith<$Res> get collectionInfor;
}

/// @nodoc
class __$$CollectionImplCopyWithImpl<$Res>
    extends _$CollectionCopyWithImpl<$Res, _$CollectionImpl>
    implements _$$CollectionImplCopyWith<$Res> {
  __$$CollectionImplCopyWithImpl(
      _$CollectionImpl _value, $Res Function(_$CollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionInfor = null,
    Object? collectionproducts = null,
  }) {
    return _then(_$CollectionImpl(
      collectionInfor: null == collectionInfor
          ? _value.collectionInfor
          : collectionInfor // ignore: cast_nullable_to_non_nullable
              as CollectionInfor,
      collectionproducts: null == collectionproducts
          ? _value._collectionproducts
          : collectionproducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionImpl implements _Collection {
  _$CollectionImpl(
      {required this.collectionInfor,
      required final List<Product> collectionproducts})
      : _collectionproducts = collectionproducts;

  factory _$CollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionImplFromJson(json);

  @override
  final CollectionInfor collectionInfor;
  final List<Product> _collectionproducts;
  @override
  List<Product> get collectionproducts {
    if (_collectionproducts is EqualUnmodifiableListView)
      return _collectionproducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collectionproducts);
  }

  @override
  String toString() {
    return 'Collection(collectionInfor: $collectionInfor, collectionproducts: $collectionproducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionImpl &&
            (identical(other.collectionInfor, collectionInfor) ||
                other.collectionInfor == collectionInfor) &&
            const DeepCollectionEquality()
                .equals(other._collectionproducts, _collectionproducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, collectionInfor,
      const DeepCollectionEquality().hash(_collectionproducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      __$$CollectionImplCopyWithImpl<_$CollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionImplToJson(
      this,
    );
  }
}

abstract class _Collection implements Collection {
  factory _Collection(
      {required final CollectionInfor collectionInfor,
      required final List<Product> collectionproducts}) = _$CollectionImpl;

  factory _Collection.fromJson(Map<String, dynamic> json) =
      _$CollectionImpl.fromJson;

  @override
  CollectionInfor get collectionInfor;
  @override
  List<Product> get collectionproducts;
  @override
  @JsonKey(ignore: true)
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
