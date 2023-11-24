// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _ProductInfor.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: 'IDProduct')
  int get idProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'NameProduct')
  String get nameProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDBrand')
  int get idBrand => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'CreatedOn')
  String get createdOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsDeleted')
  int get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'Stock')
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotalPurchaseQuantity')
  int? get totalPurchaseQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'Mass')
  int? get mass => throw _privateConstructorUsedError;
  @JsonKey(name: 'UnitsOfMass')
  String? get unitsOfMass => throw _privateConstructorUsedError;
  @JsonKey(name: 'Units')
  String? get units => throw _privateConstructorUsedError;
  @JsonKey(name: 'ApplyTaxes')
  int? get applyTaxes => throw _privateConstructorUsedError;
  @JsonKey(name: 'StatusSale')
  int? get statusSale => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDTag')
  int get idTag => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDType')
  int get idType => throw _privateConstructorUsedError;
  @JsonKey(name: 'ListPrice')
  int get listPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDCollection')
  int? get idCollection => throw _privateConstructorUsedError;
  @JsonKey(name: 'RetailPrice')
  int? get retailPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'Brand')
  Brand? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'Images')
  List<ImageProduct>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'Rating')
  dynamic get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'Reviews')
  List<Review>? get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: 'IDProduct') int idProduct,
      @JsonKey(name: 'NameProduct') String nameProduct,
      @JsonKey(name: 'IDBrand') int idBrand,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'CreatedOn') String createdOn,
      @JsonKey(name: 'IsDeleted') int isDeleted,
      @JsonKey(name: 'Stock') int stock,
      @JsonKey(name: 'TotalPurchaseQuantity') int? totalPurchaseQuantity,
      @JsonKey(name: 'Mass') int? mass,
      @JsonKey(name: 'UnitsOfMass') String? unitsOfMass,
      @JsonKey(name: 'Units') String? units,
      @JsonKey(name: 'ApplyTaxes') int? applyTaxes,
      @JsonKey(name: 'StatusSale') int? statusSale,
      @JsonKey(name: 'IDTag') int idTag,
      @JsonKey(name: 'IDType') int idType,
      @JsonKey(name: 'ListPrice') int listPrice,
      @JsonKey(name: 'IDCollection') int? idCollection,
      @JsonKey(name: 'RetailPrice') int? retailPrice,
      @JsonKey(name: 'Brand') Brand? brand,
      @JsonKey(name: 'Images') List<ImageProduct>? images,
      @JsonKey(name: 'Rating') dynamic rating,
      @JsonKey(name: 'Reviews') List<Review>? reviews});

  $BrandCopyWith<$Res>? get brand;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProduct = null,
    Object? nameProduct = null,
    Object? idBrand = null,
    Object? description = freezed,
    Object? createdOn = null,
    Object? isDeleted = null,
    Object? stock = null,
    Object? totalPurchaseQuantity = freezed,
    Object? mass = freezed,
    Object? unitsOfMass = freezed,
    Object? units = freezed,
    Object? applyTaxes = freezed,
    Object? statusSale = freezed,
    Object? idTag = null,
    Object? idType = null,
    Object? listPrice = null,
    Object? idCollection = freezed,
    Object? retailPrice = freezed,
    Object? brand = freezed,
    Object? images = freezed,
    Object? rating = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      idProduct: null == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as int,
      nameProduct: null == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String,
      idBrand: null == idBrand
          ? _value.idBrand
          : idBrand // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      totalPurchaseQuantity: freezed == totalPurchaseQuantity
          ? _value.totalPurchaseQuantity
          : totalPurchaseQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      mass: freezed == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as int?,
      unitsOfMass: freezed == unitsOfMass
          ? _value.unitsOfMass
          : unitsOfMass // ignore: cast_nullable_to_non_nullable
              as String?,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String?,
      applyTaxes: freezed == applyTaxes
          ? _value.applyTaxes
          : applyTaxes // ignore: cast_nullable_to_non_nullable
              as int?,
      statusSale: freezed == statusSale
          ? _value.statusSale
          : statusSale // ignore: cast_nullable_to_non_nullable
              as int?,
      idTag: null == idTag
          ? _value.idTag
          : idTag // ignore: cast_nullable_to_non_nullable
              as int,
      idType: null == idType
          ? _value.idType
          : idType // ignore: cast_nullable_to_non_nullable
              as int,
      listPrice: null == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as int,
      idCollection: freezed == idCollection
          ? _value.idCollection
          : idCollection // ignore: cast_nullable_to_non_nullable
              as int?,
      retailPrice: freezed == retailPrice
          ? _value.retailPrice
          : retailPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProduct>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductInforImplCopyWith<$Res>
    implements $ProductCopyWith<$Res> {
  factory _$$ProductInforImplCopyWith(
          _$ProductInforImpl value, $Res Function(_$ProductInforImpl) then) =
      __$$ProductInforImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'IDProduct') int idProduct,
      @JsonKey(name: 'NameProduct') String nameProduct,
      @JsonKey(name: 'IDBrand') int idBrand,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'CreatedOn') String createdOn,
      @JsonKey(name: 'IsDeleted') int isDeleted,
      @JsonKey(name: 'Stock') int stock,
      @JsonKey(name: 'TotalPurchaseQuantity') int? totalPurchaseQuantity,
      @JsonKey(name: 'Mass') int? mass,
      @JsonKey(name: 'UnitsOfMass') String? unitsOfMass,
      @JsonKey(name: 'Units') String? units,
      @JsonKey(name: 'ApplyTaxes') int? applyTaxes,
      @JsonKey(name: 'StatusSale') int? statusSale,
      @JsonKey(name: 'IDTag') int idTag,
      @JsonKey(name: 'IDType') int idType,
      @JsonKey(name: 'ListPrice') int listPrice,
      @JsonKey(name: 'IDCollection') int? idCollection,
      @JsonKey(name: 'RetailPrice') int? retailPrice,
      @JsonKey(name: 'Brand') Brand? brand,
      @JsonKey(name: 'Images') List<ImageProduct>? images,
      @JsonKey(name: 'Rating') dynamic rating,
      @JsonKey(name: 'Reviews') List<Review>? reviews});

  @override
  $BrandCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$ProductInforImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductInforImpl>
    implements _$$ProductInforImplCopyWith<$Res> {
  __$$ProductInforImplCopyWithImpl(
      _$ProductInforImpl _value, $Res Function(_$ProductInforImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProduct = null,
    Object? nameProduct = null,
    Object? idBrand = null,
    Object? description = freezed,
    Object? createdOn = null,
    Object? isDeleted = null,
    Object? stock = null,
    Object? totalPurchaseQuantity = freezed,
    Object? mass = freezed,
    Object? unitsOfMass = freezed,
    Object? units = freezed,
    Object? applyTaxes = freezed,
    Object? statusSale = freezed,
    Object? idTag = null,
    Object? idType = null,
    Object? listPrice = null,
    Object? idCollection = freezed,
    Object? retailPrice = freezed,
    Object? brand = freezed,
    Object? images = freezed,
    Object? rating = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$ProductInforImpl(
      idProduct: null == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as int,
      nameProduct: null == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String,
      idBrand: null == idBrand
          ? _value.idBrand
          : idBrand // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      totalPurchaseQuantity: freezed == totalPurchaseQuantity
          ? _value.totalPurchaseQuantity
          : totalPurchaseQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      mass: freezed == mass
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as int?,
      unitsOfMass: freezed == unitsOfMass
          ? _value.unitsOfMass
          : unitsOfMass // ignore: cast_nullable_to_non_nullable
              as String?,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String?,
      applyTaxes: freezed == applyTaxes
          ? _value.applyTaxes
          : applyTaxes // ignore: cast_nullable_to_non_nullable
              as int?,
      statusSale: freezed == statusSale
          ? _value.statusSale
          : statusSale // ignore: cast_nullable_to_non_nullable
              as int?,
      idTag: null == idTag
          ? _value.idTag
          : idTag // ignore: cast_nullable_to_non_nullable
              as int,
      idType: null == idType
          ? _value.idType
          : idType // ignore: cast_nullable_to_non_nullable
              as int,
      listPrice: null == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as int,
      idCollection: freezed == idCollection
          ? _value.idCollection
          : idCollection // ignore: cast_nullable_to_non_nullable
              as int?,
      retailPrice: freezed == retailPrice
          ? _value.retailPrice
          : retailPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProduct>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductInforImpl implements _ProductInfor {
  _$ProductInforImpl(
      {@JsonKey(name: 'IDProduct') required this.idProduct,
      @JsonKey(name: 'NameProduct') required this.nameProduct,
      @JsonKey(name: 'IDBrand') required this.idBrand,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'CreatedOn') required this.createdOn,
      @JsonKey(name: 'IsDeleted') required this.isDeleted,
      @JsonKey(name: 'Stock') required this.stock,
      @JsonKey(name: 'TotalPurchaseQuantity') this.totalPurchaseQuantity,
      @JsonKey(name: 'Mass') this.mass,
      @JsonKey(name: 'UnitsOfMass') this.unitsOfMass,
      @JsonKey(name: 'Units') this.units,
      @JsonKey(name: 'ApplyTaxes') this.applyTaxes,
      @JsonKey(name: 'StatusSale') this.statusSale,
      @JsonKey(name: 'IDTag') required this.idTag,
      @JsonKey(name: 'IDType') required this.idType,
      @JsonKey(name: 'ListPrice') required this.listPrice,
      @JsonKey(name: 'IDCollection') this.idCollection,
      @JsonKey(name: 'RetailPrice') this.retailPrice,
      @JsonKey(name: 'Brand') this.brand,
      @JsonKey(name: 'Images') final List<ImageProduct>? images,
      @JsonKey(name: 'Rating') this.rating,
      @JsonKey(name: 'Reviews') final List<Review>? reviews})
      : _images = images,
        _reviews = reviews;

  factory _$ProductInforImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductInforImplFromJson(json);

  @override
  @JsonKey(name: 'IDProduct')
  final int idProduct;
  @override
  @JsonKey(name: 'NameProduct')
  final String nameProduct;
  @override
  @JsonKey(name: 'IDBrand')
  final int idBrand;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'CreatedOn')
  final String createdOn;
  @override
  @JsonKey(name: 'IsDeleted')
  final int isDeleted;
  @override
  @JsonKey(name: 'Stock')
  final int stock;
  @override
  @JsonKey(name: 'TotalPurchaseQuantity')
  final int? totalPurchaseQuantity;
  @override
  @JsonKey(name: 'Mass')
  final int? mass;
  @override
  @JsonKey(name: 'UnitsOfMass')
  final String? unitsOfMass;
  @override
  @JsonKey(name: 'Units')
  final String? units;
  @override
  @JsonKey(name: 'ApplyTaxes')
  final int? applyTaxes;
  @override
  @JsonKey(name: 'StatusSale')
  final int? statusSale;
  @override
  @JsonKey(name: 'IDTag')
  final int idTag;
  @override
  @JsonKey(name: 'IDType')
  final int idType;
  @override
  @JsonKey(name: 'ListPrice')
  final int listPrice;
  @override
  @JsonKey(name: 'IDCollection')
  final int? idCollection;
  @override
  @JsonKey(name: 'RetailPrice')
  final int? retailPrice;
  @override
  @JsonKey(name: 'Brand')
  final Brand? brand;
  final List<ImageProduct>? _images;
  @override
  @JsonKey(name: 'Images')
  List<ImageProduct>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'Rating')
  final dynamic rating;
  final List<Review>? _reviews;
  @override
  @JsonKey(name: 'Reviews')
  List<Review>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Product(idProduct: $idProduct, nameProduct: $nameProduct, idBrand: $idBrand, description: $description, createdOn: $createdOn, isDeleted: $isDeleted, stock: $stock, totalPurchaseQuantity: $totalPurchaseQuantity, mass: $mass, unitsOfMass: $unitsOfMass, units: $units, applyTaxes: $applyTaxes, statusSale: $statusSale, idTag: $idTag, idType: $idType, listPrice: $listPrice, idCollection: $idCollection, retailPrice: $retailPrice, brand: $brand, images: $images, rating: $rating, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductInforImpl &&
            (identical(other.idProduct, idProduct) ||
                other.idProduct == idProduct) &&
            (identical(other.nameProduct, nameProduct) ||
                other.nameProduct == nameProduct) &&
            (identical(other.idBrand, idBrand) || other.idBrand == idBrand) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.totalPurchaseQuantity, totalPurchaseQuantity) ||
                other.totalPurchaseQuantity == totalPurchaseQuantity) &&
            (identical(other.mass, mass) || other.mass == mass) &&
            (identical(other.unitsOfMass, unitsOfMass) ||
                other.unitsOfMass == unitsOfMass) &&
            (identical(other.units, units) || other.units == units) &&
            (identical(other.applyTaxes, applyTaxes) ||
                other.applyTaxes == applyTaxes) &&
            (identical(other.statusSale, statusSale) ||
                other.statusSale == statusSale) &&
            (identical(other.idTag, idTag) || other.idTag == idTag) &&
            (identical(other.idType, idType) || other.idType == idType) &&
            (identical(other.listPrice, listPrice) ||
                other.listPrice == listPrice) &&
            (identical(other.idCollection, idCollection) ||
                other.idCollection == idCollection) &&
            (identical(other.retailPrice, retailPrice) ||
                other.retailPrice == retailPrice) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        idProduct,
        nameProduct,
        idBrand,
        description,
        createdOn,
        isDeleted,
        stock,
        totalPurchaseQuantity,
        mass,
        unitsOfMass,
        units,
        applyTaxes,
        statusSale,
        idTag,
        idType,
        listPrice,
        idCollection,
        retailPrice,
        brand,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(rating),
        const DeepCollectionEquality().hash(_reviews)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductInforImplCopyWith<_$ProductInforImpl> get copyWith =>
      __$$ProductInforImplCopyWithImpl<_$ProductInforImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductInforImplToJson(
      this,
    );
  }
}

abstract class _ProductInfor implements Product {
  factory _ProductInfor(
      {@JsonKey(name: 'IDProduct') required final int idProduct,
      @JsonKey(name: 'NameProduct') required final String nameProduct,
      @JsonKey(name: 'IDBrand') required final int idBrand,
      @JsonKey(name: 'Description') final String? description,
      @JsonKey(name: 'CreatedOn') required final String createdOn,
      @JsonKey(name: 'IsDeleted') required final int isDeleted,
      @JsonKey(name: 'Stock') required final int stock,
      @JsonKey(name: 'TotalPurchaseQuantity') final int? totalPurchaseQuantity,
      @JsonKey(name: 'Mass') final int? mass,
      @JsonKey(name: 'UnitsOfMass') final String? unitsOfMass,
      @JsonKey(name: 'Units') final String? units,
      @JsonKey(name: 'ApplyTaxes') final int? applyTaxes,
      @JsonKey(name: 'StatusSale') final int? statusSale,
      @JsonKey(name: 'IDTag') required final int idTag,
      @JsonKey(name: 'IDType') required final int idType,
      @JsonKey(name: 'ListPrice') required final int listPrice,
      @JsonKey(name: 'IDCollection') final int? idCollection,
      @JsonKey(name: 'RetailPrice') final int? retailPrice,
      @JsonKey(name: 'Brand') final Brand? brand,
      @JsonKey(name: 'Images') final List<ImageProduct>? images,
      @JsonKey(name: 'Rating') final dynamic rating,
      @JsonKey(name: 'Reviews')
      final List<Review>? reviews}) = _$ProductInforImpl;

  factory _ProductInfor.fromJson(Map<String, dynamic> json) =
      _$ProductInforImpl.fromJson;

  @override
  @JsonKey(name: 'IDProduct')
  int get idProduct;
  @override
  @JsonKey(name: 'NameProduct')
  String get nameProduct;
  @override
  @JsonKey(name: 'IDBrand')
  int get idBrand;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(name: 'CreatedOn')
  String get createdOn;
  @override
  @JsonKey(name: 'IsDeleted')
  int get isDeleted;
  @override
  @JsonKey(name: 'Stock')
  int get stock;
  @override
  @JsonKey(name: 'TotalPurchaseQuantity')
  int? get totalPurchaseQuantity;
  @override
  @JsonKey(name: 'Mass')
  int? get mass;
  @override
  @JsonKey(name: 'UnitsOfMass')
  String? get unitsOfMass;
  @override
  @JsonKey(name: 'Units')
  String? get units;
  @override
  @JsonKey(name: 'ApplyTaxes')
  int? get applyTaxes;
  @override
  @JsonKey(name: 'StatusSale')
  int? get statusSale;
  @override
  @JsonKey(name: 'IDTag')
  int get idTag;
  @override
  @JsonKey(name: 'IDType')
  int get idType;
  @override
  @JsonKey(name: 'ListPrice')
  int get listPrice;
  @override
  @JsonKey(name: 'IDCollection')
  int? get idCollection;
  @override
  @JsonKey(name: 'RetailPrice')
  int? get retailPrice;
  @override
  @JsonKey(name: 'Brand')
  Brand? get brand;
  @override
  @JsonKey(name: 'Images')
  List<ImageProduct>? get images;
  @override
  @JsonKey(name: 'Rating')
  dynamic get rating;
  @override
  @JsonKey(name: 'Reviews')
  List<Review>? get reviews;
  @override
  @JsonKey(ignore: true)
  _$$ProductInforImplCopyWith<_$ProductInforImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
