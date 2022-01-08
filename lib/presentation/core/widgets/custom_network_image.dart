import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final bool? hasShadow;
  final double? height;
  final double? width;
  final BoxFit? fit;

  const CustomNetworkImage({
    Key? key,
    @required this.imageUrl,
    @required this.height,
    @required this.width,
    this.hasShadow = false,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl ?? '',
      // height: height,
      // width: width,
      fit: BoxFit.cover,
      imageBuilder: (BuildContext context, ImageProvider<Object> imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: fit ?? BoxFit.cover,
          ),
        ),
      ),
      placeholder: (BuildContext context, String url) => const ImagePlaceholder(
        width: double.infinity,
      ),
      errorWidget: (BuildContext context, String url, error) => const Icon(Icons.error),
    );
  }
}

// Image.asset(
//         "assets/images/empty.png",
//         width: MediaQuery.of(context).size.width * 0.4,
//         fit: BoxFit.cover,
//       )
class ImagePlaceholder extends StatelessWidget {
  final double? height;
  final double? width;

  const ImagePlaceholder({
    Key? key,
    this.height = 200,
    this.width = 200,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.white,
      child: Container(
        color: Colors.grey[300],
      ),
    );
  }
}
