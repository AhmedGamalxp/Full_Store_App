import 'package:flutter/material.dart';
import 'package:full_store_app/controllers/home_controller.dart';
import 'package:full_store_app/views/home_views/widgets/popular_product_item2.dart';
import 'package:get/get.dart';

class PopularProductsListview extends StatelessWidget {
  const PopularProductsListview({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<HomeController>();
    return GetBuilder<HomeController>(
      builder: (controller) {
        return SizedBox(
          height: 200,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return PopularProductItem2(
                  item: controller.items[index],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: controller.items.length),
        );
      },
    );
    // return GridView.builder(
    //   padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2,
    //     mainAxisSpacing: 16,
    //     crossAxisSpacing: 16,
    //     childAspectRatio: 0.7,
    //   ),
    //   itemBuilder: (context, index) {
    //     return const PopularProductItem2();
    //   },
    //   itemCount: 5,
    // );
  }
}
