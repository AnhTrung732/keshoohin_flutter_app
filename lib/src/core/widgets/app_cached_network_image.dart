import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/app_progress_indicator.dart';

class AppCachedNetworkImage extends StatelessWidget {
  const AppCachedNetworkImage(
      {super.key,
      required this.imageUrl,
      this.radius = 10,
      this.width,
      this.height,
      this.boxFit = BoxFit.fill});
  final String imageUrl;
  final double radius;
  final double? width;
  final double? height;
  final BoxFit boxFit;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        fit: boxFit,
        imageUrl: imageUrl,
        placeholder: (context, url) =>
            const AppProductProgressIndicator(height: 50, width: 50),
        errorWidget: (context, url, error) =>
            const AppProductProgressIndicator(height: 50, width: 50),
      ),
    );
  }
}
