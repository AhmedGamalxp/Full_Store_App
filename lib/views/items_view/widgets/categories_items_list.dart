import 'package:flutter/material.dart';
import 'package:full_store_app/controllers/items_view_controller.dart';
import 'package:full_store_app/data/models/items_model/item.dart';

import 'package:full_store_app/views/home_views/widgets/popular_product_item2.dart';
import 'package:get/get.dart';

class CategoriesItemsList extends StatelessWidget {
  const CategoriesItemsList({super.key, required this.categoryItems});
  final List<ItemModel> categoryItems;
  @override
  Widget build(BuildContext context) {
    Get.find<ItemsViewController>();
    return GetBuilder<ItemsViewController>(
      builder: (controller) {
        return GridView.builder(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) {
              return PopularProductItem2(
                item: categoryItems[index],
              );
            },
            itemCount: categoryItems.length);
      },
    );
  }
}
