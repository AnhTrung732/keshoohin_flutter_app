// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeImageSliderHash() => r'2e68a60441deb25861c245f48df33a76d46507a1';

/// See also [HomeImageSlider].
@ProviderFor(HomeImageSlider)
final homeImageSliderProvider =
    AsyncNotifierProvider<HomeImageSlider, List<ImageSliderEntity>?>.internal(
  HomeImageSlider.new,
  name: r'homeImageSliderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeImageSliderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomeImageSlider = AsyncNotifier<List<ImageSliderEntity>?>;
String _$homeCollectionHash() => r'9525422bb99bc5eb7d35d2c46311af6ec1863594';

/// See also [HomeCollection].
@ProviderFor(HomeCollection)
final homeCollectionProvider = AutoDisposeAsyncNotifierProvider<HomeCollection,
    CollectionEntity?>.internal(
  HomeCollection.new,
  name: r'homeCollectionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeCollectionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomeCollection = AutoDisposeAsyncNotifier<CollectionEntity?>;
String _$homePageBannerDotsHash() =>
    r'124412da195e1a59184f35cac07a4fe1f62d9a8c';

/// See also [HomePageBannerDots].
@ProviderFor(HomePageBannerDots)
final homePageBannerDotsProvider =
    NotifierProvider<HomePageBannerDots, int>.internal(
  HomePageBannerDots.new,
  name: r'homePageBannerDotsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homePageBannerDotsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomePageBannerDots = Notifier<int>;
String _$homePageMenuBarSelectorHash() =>
    r'3d4d4dab99a32de91bc11bec64178d643d2b30a0';

/// See also [HomePageMenuBarSelector].
@ProviderFor(HomePageMenuBarSelector)
final homePageMenuBarSelectorProvider =
    NotifierProvider<HomePageMenuBarSelector, List<int>>.internal(
  HomePageMenuBarSelector.new,
  name: r'homePageMenuBarSelectorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homePageMenuBarSelectorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomePageMenuBarSelector = Notifier<List<int>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
