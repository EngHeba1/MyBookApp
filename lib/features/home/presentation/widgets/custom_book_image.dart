import 'package:bookly/core/constants/app_assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key,required this.url,  this.borderRadius });
   final String url;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius??16),
        ),
      child:
      ClipRRect(
        borderRadius:BorderRadius.circular(16) ,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl:url ,
          width: double.infinity,
          height: double.infinity,
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
