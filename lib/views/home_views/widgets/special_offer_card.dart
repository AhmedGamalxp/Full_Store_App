import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:full_store_app/core/utils/app_styles.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.category,
    required this.image,
    required this.numOfbrand,
    this.ontap,
  });
  final String category, image;
  final int numOfbrand;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
        height: 100,
        width: 242,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              CachedNetworkImage(
                imageUrl: image,
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.05),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                          text: '$category\n',
                          style: AppStyles.styleSemiBold18
                              .copyWith(color: Colors.white)),
                      TextSpan(
                          text: '$numOfbrand Items',
                          style: AppStyles.styleSemiBold14
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
