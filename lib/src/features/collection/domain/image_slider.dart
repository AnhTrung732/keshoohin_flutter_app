import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin_flutter_app/src/features/collection/infrastructure/image_slider/image_slider_provider.dart';
import 'package:keshoohin_flutter_app/src/features/collection/infrastructure/image_slider/image_slider_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_slider.freezed.dart';
part 'image_slider.g.dart';

@freezed
class ImageSlider with _$ImageSlider {
  const factory ImageSlider({
    @JsonKey(name: 'IDImage') int? idImage,
    @JsonKey(name: 'StartOn') String? startOn,
    @JsonKey(name: 'EndOn') String? endOn,
    @JsonKey(name: 'Path') String? path,
    @JsonKey(name: 'Route') String? route,
    @JsonKey(name: 'IsDeleted') int? isDeleted,
    @JsonKey(name: 'CreatedOn') String? createdOn,
  }) = _ImageSlider;

  factory ImageSlider.fromJson(Map<String, dynamic> json) =>
      _$ImageSliderFromJson(json);
}

@riverpod
class AsyncImageSlider extends _$AsyncImageSlider {
  late ImageSliderRepository imageSlider;

  @override
  FutureOr<List<ImageSlider>> build() async {
    // Load initial todo list from the remote repository
    imageSlider = ref.watch(imageSliderRepositoryProvider);
    return imageSlider.getImageSlider();
  }
}
