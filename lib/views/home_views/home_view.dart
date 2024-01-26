import 'package:flutter/material.dart';
import 'package:full_store_app/core/functions/eixt_app_alert.dart';
import 'package:full_store_app/views/home_views/widgets/categories.dart';
import 'package:full_store_app/views/home_views/widgets/discount_banner.dart';
import 'package:full_store_app/views/home_views/widgets/popular_product_listview.dart';
import 'package:full_store_app/views/home_views/widgets/section_title.dart';
import 'package:full_store_app/views/home_views/widgets/special_offer_listview.dart';
import 'package:gap/gap.dart';

import 'widgets/home_view_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        exitAppAlert();
      },
      child: const Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeViewAppBar(),
              DiscountBanner(),
              Gap(20),
              Categories(),
              SectionTiTle(title: 'Special Offer'),
              SpecialOfferListView(),
              SectionTiTle(title: 'Popular Product'),
              PopularProductsListview(),
            ],
          ),
        ),
      ),
    );
  }
}
