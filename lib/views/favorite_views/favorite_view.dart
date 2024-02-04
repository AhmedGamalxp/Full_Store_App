import 'package:flutter/material.dart';
import 'package:full_store_app/controllers/myfavorite_controller.dart';
import 'package:full_store_app/core/shared/custom_appbar.dart';
import 'package:full_store_app/views/favorite_views/myfavorite_view_list.dart';
import 'package:full_store_app/views/home_views/widgets/popular_product_item2.dart';
import 'package:get/get.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        MyFavoriteViewList(),
        CustomAppBar(),
      ],
    ));
  }
}
