import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:full_store_app/core/app_links.dart';
import 'package:full_store_app/core/constants.dart';
import 'package:full_store_app/core/utils/app_assets.dart';
import 'package:full_store_app/core/utils/app_styles.dart';
import 'package:full_store_app/data/models/items_model/item.dart';
import 'package:gap/gap.dart';

class PopularProductItem2 extends StatelessWidget {
  const PopularProductItem2({
    super.key,
    required this.item,
  });

  @override
  final bool isFavorite = true;
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${item.itemsName}",
                style: AppStyles.styleSemiBold14,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              CachedNetworkImage(
                imageUrl: '${AppLinks.imageItemsLink}/${item.itemsImage}',
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Row(
                children: [
                  Text(
                    '\$ ${item.itemsPrice}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: kPrimeryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: kPrimeryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(5),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
