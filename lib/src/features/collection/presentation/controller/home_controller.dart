import 'package:keshoohin_flutter_app/src/features/collection/domain/image_slider.dart';
import 'package:keshoohin_flutter_app/src/features/collection/infrastructure/image_slider/image_slider_provider.dart';
import 'package:keshoohin_flutter_app/src/features/collection/infrastructure/image_slider/image_slider_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_controller.g.dart';

@Riverpod(keepAlive: true)
class HomeImageSlider extends _$HomeImageSlider {
  late ImageSliderRepository imageSlider;

  @override
  FutureOr<List<ImageSlider>> build() async {
    return fetchImageSliderList();
  }

  Future<List<ImageSlider>> fetchImageSliderList() async {
    // Load initial todo list from the remote repository
    return ref.read(imageSliderRepositoryProvider).getImageSlider();
  }
}

// @Riverpod(keepAlive: true)
// class HomeImageSlider extends _$HomeImageSlider {
//   late ImageSliderRepository imageSlider;

//   @override
//   FutureOr<List<ImageSlider>> build() async {
//     return fetchImageSliderList();
//   }

//   Future<List<ImageSlider>> fetchImageSliderList() async {
//     // Load initial todo list from the remote repository
//     return ref.read(imageSliderRepositoryProvider).getImageSlider();
//   }
// }

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
