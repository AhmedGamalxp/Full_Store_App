import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:full_store_app/controllers/favorites_controller.dart';
import 'package:full_store_app/controllers/myfavorite_controller.dart';
import 'package:full_store_app/core/constants.dart';
import 'package:full_store_app/core/shared/empty_widget.dart';
import 'package:full_store_app/core/shared/loading_widget.dart';
import 'package:full_store_app/core/utils/request_state.dart';
import 'package:full_store_app/views/favorite_views/myfavorite_list_item.dart';
import 'package:full_store_app/views/home_views/widgets/popular_product_item2.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class MyFavoriteViewList extends StatelessWidget {
  const MyFavoriteViewList({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MyFavoritesController(), fenix: true);

    return GetBuilder<MyFavoritesController>(
      builder: (controller) {
        if (controller.requestState == RequestState.loading) {
          return const CustomLoadingWidget();
        } else if (controller.requestState == RequestState.failure ||
            controller.myFavorites.isEmpty) {
          return const CustomEmptyWidget();
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(top: 120, bottom: 100),
              itemBuilder: (context, index) {
                return Dismissible(
                  onDismissed: (direction) {
                    controller.deleteFromMyFavorites(
                        '${controller.myFavorites[index].itemsId}');
                  },
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffe6e6),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Row(
                      children: [
                        Spacer(),
                        Icon(
                          Icons.delete,
                          color: kPrimeryColor,
                        ),
                        Gap(20),
                      ],
                    ),
                  ),
                  child: MyFavoriteListItem(
                    product: controller.myFavorites[index],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: controller.myFavorites.length,
            ),
          );
        }
      },
    );
  }
}
