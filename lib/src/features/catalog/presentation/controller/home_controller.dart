import 'package:keshoohin_flutter_app/src/features/catalog/domain/collection_domain_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/entities_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/usecases/provider/catalog_usescases_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_controller.g.dart';

@Riverpod(keepAlive: true)
class HomeImageSlider extends _$HomeImageSlider {
  @override
  FutureOr<List<ImageSliderEntity>?> build() async {
    return fetchImageSliderList();
  }

  Future<List<ImageSliderEntity>?> fetchImageSliderList() async {
    // Load initial todo list from the remote repository
    return ref.read(getImageSliderProvider).call();
  }
}

@riverpod
class HomeCollection extends _$HomeCollection {
  @override
  FutureOr<CollectionEntity?> build() async {
    return fetchCollection(65);
  }

  Future<CollectionEntity?> fetchCollection(int index) async {
    // Load initial from the remote repository
    return ref.read(getCollectionProvider).call(index);
  }
}

@Riverpod(keepAlive: true)
class HomePageBannerDots extends _$HomePageBannerDots {
  @override
  int build() => 0;

  void setIndex(int value) {
    state = value;
  }
}

@Riverpod(keepAlive: true)
class HomePageMenuBarSelector extends _$HomePageMenuBarSelector {
  @override
  List<int> build() => [0];

  void addIndex(int value) {
    state = [...state, value];
  }

  void popLastIndex() {
    if (state.isNotEmpty) {
      state = List<int>.from(state)..removeLast();
    }
  }
}

List<String> menuBarSelectionItems = [
  "Sản phẩm",
  "Khuyến mãi",
  "Sự kiện",
];
