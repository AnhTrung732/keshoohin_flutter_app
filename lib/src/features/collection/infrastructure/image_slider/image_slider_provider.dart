import 'package:keshoohin_flutter_app/src/features/collection/infrastructure/image_slider/image_slider_impl.dart';
import 'package:keshoohin_flutter_app/src/features/collection/infrastructure/image_slider/image_slider_repository.dart';
import 'package:keshoohin_flutter_app/src/services/dio/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'image_slider_provider.g.dart';

@riverpod
ImageSliderRepository imageSliderRepository(ImageSliderRepositoryRef ref) =>
    ImageSliderImpl(dio: ref.watch(dioProvider));
