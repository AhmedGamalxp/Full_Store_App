import 'package:flutter/material.dart';
import 'package:full_store_app/controllers/home_controller.dart';
import 'package:full_store_app/core/utils/request_state.dart';
import 'package:full_store_app/views/home_views/widgets/category_item.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetBuilder<HomeController>(
      builder: (controller) {
        if (controller.requestState == RequestState.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return SizedBox(
            height: 100,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: controller.categories.length,
              itemBuilder: (context, index) {
                return CategoryCard(
                  image: controller.categories[index].categoriesImage,
                  text: controller.categories[index].categoriesName,
                  press: () {},
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 20,
                );
              },
            ),
          );
        }
      },
    );
  }
}
