import 'package:equatable/equatable.dart';

class ImageReviewEntity extends Equatable {
  const ImageReviewEntity({
    required this.idReviewImage,
    required this.idReview,
    required this.path,
  });

  final int idReviewImage;
  final int idReview;
  final String path;

  @override
  List<Object?> get props => [idReviewImage, idReview, path];
}

class ReviewEntity extends Equatable {
  const ReviewEntity({
    required this.idReview,
    required this.idProduct,
    required this.idCus,
    required this.createdOn,
    required this.contentShort,
    required this.contentLong,
    required this.rating,
    required this.isDeleted,
    this.images,
  });

  final int idReview;
  final int idProduct;
  final int idCus;
  final String createdOn;
  final String contentShort;
  final String contentLong;
  final int rating;
  final int isDeleted;
  final List<ImageReviewEntity>? images;

  @override
  List<Object?> get props => [
        idReview,
        idProduct,
        idCus,
        createdOn,
        contentShort,
        contentLong,
        rating,
        isDeleted,
        images,
      ];
}
