import 'package:keshoohin_flutter_app/src/features/catalog/di_cataglog.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/collection_domain_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/domain/entities/entities_export.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_controller.g.dart';

@Riverpod(keepAlive: true)
class HomeImageSliderController extends _$HomeImageSliderController {
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
class HomeCollectionController extends _$HomeCollectionController {
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
class HomePageBannerDotsController extends _$HomePageBannerDotsController {
  @override
  int build() => 0;

  void setIndex(int value) {
    state = value;
  }
}

@Riverpod(keepAlive: true)
class HomePageMenuBarSelectorController
    extends _$HomePageMenuBarSelectorController {
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
