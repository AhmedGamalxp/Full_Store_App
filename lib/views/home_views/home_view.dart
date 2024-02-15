import 'package:flutter/material.dart';
import 'package:full_store_app/controllers/home_controller.dart';
import 'package:full_store_app/core/functions/eixt_app_alert.dart';
import 'package:full_store_app/core/shared/custom_loading1.dart';
import 'package:full_store_app/core/utils/request_state.dart';
import 'package:full_store_app/views/home_views/widgets/categories.dart';
import 'package:full_store_app/views/home_views/widgets/discount_banner.dart';
import 'package:full_store_app/views/home_views/widgets/popular_product_listview.dart';
import 'package:full_store_app/views/home_views/widgets/search_list.dart';
import 'package:full_store_app/views/home_views/widgets/section_title.dart';
import 'package:full_store_app/views/home_views/widgets/special_offer_listview.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../core/shared/custom_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          exitAppAlert();
        },
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return controller.requestState == RequestState.loading
                ? const CustomLoadingWidget1()
                : Stack(
                    children: [
                      controller.searchController.text.isNotEmpty
                          ? const SearchList()
                          : SingleChildScrollView(
                              child: Column(
                                children: [
                                  const SizedBox(height: 110),
                                  const DiscountBanner(),
                                  const Gap(20),
                                  const Categories(),
                                  SectionTiTle(
                                    title: 'Special Offer',
                                    ontap: () {},
                                  ),
                                  const SpecialOfferListView(),
                                  SectionTiTle(
                                    title: 'Popular Product',
                                    ontap: () {},
                                  ),
                                  const PopularProductsListview(),
                                  const SizedBox(height: 110),
                                ],
                              ),
                            ),
                      CustomAppBar(
                        onchange: (value) {
                          controller.addProductToSearchList(searchName: value);
                        },
                        controller: controller.searchController,
                      ),
                    ],
                  );
          },
        ));
  }
}
