import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/domain/repositories/image_slider_repository.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/infrastructure/repositories/image_slider/image_slider_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'image_slider_provider.g.dart';

@riverpod
ImageSliderRepository imageSliderRepository(ImageSliderRepositoryRef ref) =>
    ImageSliderImpl(httpUtil: ref.watch(httpUtilProvider));
