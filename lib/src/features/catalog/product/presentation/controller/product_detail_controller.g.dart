// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productDetailControllerHash() =>
    r'8ec11e8015453be3101c4000e294a93c8de0049a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [productDetailController].
@ProviderFor(productDetailController)
const productDetailControllerProvider = ProductDetailControllerFamily();

/// See also [productDetailController].
class ProductDetailControllerFamily
    extends Family<AsyncValue<ProductResponseEntity>> {
  /// See also [productDetailController].
  const ProductDetailControllerFamily();

  /// See also [productDetailController].
  ProductDetailControllerProvider call({
    required int index,
  }) {
    return ProductDetailControllerProvider(
      index: index,
    );
  }

  @override
  ProductDetailControllerProvider getProviderOverride(
    covariant ProductDetailControllerProvider provider,
  ) {
    return call(
      index: provider.index,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productDetailControllerProvider';
}

/// See also [productDetailController].
class ProductDetailControllerProvider
    extends AutoDisposeFutureProvider<ProductResponseEntity> {
  /// See also [productDetailController].
  ProductDetailControllerProvider({
    required int index,
  }) : this._internal(
          (ref) => productDetailController(
            ref as ProductDetailControllerRef,
            index: index,
          ),
          from: productDetailControllerProvider,
          name: r'productDetailControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productDetailControllerHash,
          dependencies: ProductDetailControllerFamily._dependencies,
          allTransitiveDependencies:
              ProductDetailControllerFamily._allTransitiveDependencies,
          index: index,
        );

  ProductDetailControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final int index;

  @override
  Override overrideWith(
    FutureOr<ProductResponseEntity> Function(
            ProductDetailControllerRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductDetailControllerProvider._internal(
        (ref) => create(ref as ProductDetailControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductResponseEntity> createElement() {
    return _ProductDetailControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductDetailControllerProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductDetailControllerRef
    on AutoDisposeFutureProviderRef<ProductResponseEntity> {
  /// The parameter `index` of this provider.
  int get index;
}

class _ProductDetailControllerProviderElement
    extends AutoDisposeFutureProviderElement<ProductResponseEntity>
    with ProductDetailControllerRef {
  _ProductDetailControllerProviderElement(super.provider);

  @override
  int get index => (origin as ProductDetailControllerProvider).index;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
