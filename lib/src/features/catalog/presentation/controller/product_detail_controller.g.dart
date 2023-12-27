// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productDetailControllerHash() =>
    r'80917d5f4a2056c1d602fc336ee8e0b102f590a0';

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
class ProductDetailControllerFamily extends Family<AsyncValue<ProductEntity>> {
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
    extends AutoDisposeFutureProvider<ProductEntity> {
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
    FutureOr<ProductEntity> Function(ProductDetailControllerRef provider)
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
  AutoDisposeFutureProviderElement<ProductEntity> createElement() {
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
    on AutoDisposeFutureProviderRef<ProductEntity> {
  /// The parameter `index` of this provider.
  int get index;
}

class _ProductDetailControllerProviderElement
    extends AutoDisposeFutureProviderElement<ProductEntity>
    with ProductDetailControllerRef {
  _ProductDetailControllerProviderElement(super.provider);

  @override
  int get index => (origin as ProductDetailControllerProvider).index;
}

String _$expandMoreStateControllerHash() =>
    r'af8e70da046f069bcf796a347f250fcbf3b5152d';

/// See also [ExpandMoreStateController].
@ProviderFor(ExpandMoreStateController)
final expandMoreStateControllerProvider =
    AutoDisposeNotifierProvider<ExpandMoreStateController, bool>.internal(
  ExpandMoreStateController.new,
  name: r'expandMoreStateControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$expandMoreStateControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ExpandMoreStateController = AutoDisposeNotifier<bool>;
String _$expandInitControllerHash() =>
    r'd32d0fa40a7723bd47c26fcdf74789acf8b9585a';

/// See also [ExpandInitController].
@ProviderFor(ExpandInitController)
final expandInitControllerProvider =
    AutoDisposeNotifierProvider<ExpandInitController, bool>.internal(
  ExpandInitController.new,
  name: r'expandInitControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$expandInitControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ExpandInitController = AutoDisposeNotifier<bool>;
String _$expandMoreKeyControllerHash() =>
    r'8668ee631b27927d1bc3edf8acfc129458cfd793';

/// See also [ExpandMoreKeyController].
@ProviderFor(ExpandMoreKeyController)
final expandMoreKeyControllerProvider = AutoDisposeNotifierProvider<
    ExpandMoreKeyController, GlobalKey<State<StatefulWidget>>>.internal(
  ExpandMoreKeyController.new,
  name: r'expandMoreKeyControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$expandMoreKeyControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ExpandMoreKeyController
    = AutoDisposeNotifier<GlobalKey<State<StatefulWidget>>>;
String _$originalExpandHeightControllerHash() =>
    r'9c2f6a430e02002f5c7615a71baa5fdc14ac4e5a';

/// See also [OriginalExpandHeightController].
@ProviderFor(OriginalExpandHeightController)
final originalExpandHeightControllerProvider = AutoDisposeNotifierProvider<
    OriginalExpandHeightController, double?>.internal(
  OriginalExpandHeightController.new,
  name: r'originalExpandHeightControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$originalExpandHeightControllerHash,
  dependencies: <ProviderOrFamily>[expandMoreKeyControllerProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    expandMoreKeyControllerProvider,
    ...?expandMoreKeyControllerProvider.allTransitiveDependencies
  },
);

typedef _$OriginalExpandHeightController = AutoDisposeNotifier<double?>;
String _$expandHeightControllerHash() =>
    r'ecc8306cbce898d6bc775e11f83994c05936a343';

/// See also [ExpandHeightController].
@ProviderFor(ExpandHeightController)
final expandHeightControllerProvider =
    AutoDisposeNotifierProvider<ExpandHeightController, double?>.internal(
  ExpandHeightController.new,
  name: r'expandHeightControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$expandHeightControllerHash,
  dependencies: <ProviderOrFamily>[
    expandMoreStateControllerProvider,
    originalExpandHeightControllerProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    expandMoreStateControllerProvider,
    ...?expandMoreStateControllerProvider.allTransitiveDependencies,
    originalExpandHeightControllerProvider,
    ...?originalExpandHeightControllerProvider.allTransitiveDependencies
  },
);

typedef _$ExpandHeightController = AutoDisposeNotifier<double?>;
String _$overlayHeightControllerHash() =>
    r'2928495f8849236388b1cf1c5898bc3a481da27a';

/// See also [OverlayHeightController].
@ProviderFor(OverlayHeightController)
final overlayHeightControllerProvider =
    AutoDisposeNotifierProvider<OverlayHeightController, double?>.internal(
  OverlayHeightController.new,
  name: r'overlayHeightControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$overlayHeightControllerHash,
  dependencies: <ProviderOrFamily>[expandHeightControllerProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    expandHeightControllerProvider,
    ...?expandHeightControllerProvider.allTransitiveDependencies
  },
);

typedef _$OverlayHeightController = AutoDisposeNotifier<double?>;
String _$productScrollDirectionControllerHash() =>
    r'1fce832a3aef09e13c1c3940c6f840eed23f61e8';

/// See also [ProductScrollDirectionController].
@ProviderFor(ProductScrollDirectionController)
final productScrollDirectionControllerProvider = NotifierProvider<
    ProductScrollDirectionController, ScrollDirection>.internal(
  ProductScrollDirectionController.new,
  name: r'productScrollDirectionControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productScrollDirectionControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProductScrollDirectionController = Notifier<ScrollDirection>;
String _$productPageItemScrollControllerHash() =>
    r'8d576c3886b9c2c740aa4d0e7f267422cc24bc2a';

/// See also [ProductPageItemScrollController].
@ProviderFor(ProductPageItemScrollController)
final productPageItemScrollControllerProvider = AutoDisposeNotifierProvider<
    ProductPageItemScrollController, ItemScrollController>.internal(
  ProductPageItemScrollController.new,
  name: r'productPageItemScrollControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productPageItemScrollControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProductPageItemScrollController
    = AutoDisposeNotifier<ItemScrollController>;
String _$productTabBarIndexHash() =>
    r'6ec738abc0cb537d345e49d3d8051c8ab6d14287';

/// See also [ProductTabBarIndex].
@ProviderFor(ProductTabBarIndex)
final productTabBarIndexProvider =
    AutoDisposeNotifierProvider<ProductTabBarIndex, int>.internal(
  ProductTabBarIndex.new,
  name: r'productTabBarIndexProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productTabBarIndexHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProductTabBarIndex = AutoDisposeNotifier<int>;
String _$productPageScrollListenerHash() =>
    r'276b1cf2754a23d3f4fab1b963baac558a5e0fa0';

/// See also [ProductPageScrollListener].
@ProviderFor(ProductPageScrollListener)
final productPageScrollListenerProvider = AutoDisposeNotifierProvider<
    ProductPageScrollListener, ItemPositionsListener>.internal(
  ProductPageScrollListener.new,
  name: r'productPageScrollListenerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productPageScrollListenerHash,
  dependencies: <ProviderOrFamily>[productTabBarIndexProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    productTabBarIndexProvider,
    ...?productTabBarIndexProvider.allTransitiveDependencies
  },
);

typedef _$ProductPageScrollListener
    = AutoDisposeNotifier<ItemPositionsListener>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
