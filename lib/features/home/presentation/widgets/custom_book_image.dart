import 'package:bookly/core/constants/app_assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key,required this.url});
   final String url;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child:
      ClipRRect(
        borderRadius:BorderRadius.circular(16) ,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl:url ,
          placeholder: (context, url) => Center(child: const CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      )
      // Container(
      //   decoration: BoxDecoration(
      //     color: Colors.red,
      //     borderRadius: BorderRadius.circular(16),
      //     image: DecorationImage(
      //         image: NetworkImage(url), fit: BoxFit.fill),
      //   ),
      // ),
    );
  }
}
