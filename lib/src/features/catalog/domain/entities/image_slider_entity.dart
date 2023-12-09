import 'package:equatable/equatable.dart';

class ImageSliderEntity extends Equatable {
  const ImageSliderEntity({
    required this.idImage,
    required this.path,
  });
  final int? idImage;
  final String? path;

  @override
  List<Object?> get props => <Object?>[idImage, path];
}
