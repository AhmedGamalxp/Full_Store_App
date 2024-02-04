import 'package:flutter/material.dart';
import 'package:full_store_app/controllers/items_view_controller.dart';
import 'package:full_store_app/core/shared/custom_appbar.dart';
import 'package:full_store_app/views/items_view/widgets/Categories_list.dart';
import 'package:full_store_app/views/items_view/widgets/categories_items_list.dart';
import 'package:get/get.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsViewController());
    return const Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(height: 120),
              ),
              SliverToBoxAdapter(
                child: CategoriesList(),
              ),
              SliverFillRemaining(
                child: CategoriesItemsList(),
              ),
            ],
          ),
          CustomAppBar(),
        ],
      ),
    );
  }
}
