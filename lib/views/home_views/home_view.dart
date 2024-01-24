import 'package:flutter/material.dart';
import 'package:full_store_app/core/functions/eixt_app_alert.dart';
import 'package:full_store_app/core/utils/app_styles.dart';
import 'package:full_store_app/views/home_views/widgets/discount_banner.dart';

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
        body: Column(
          children: [
            HomeViewAppBar(),
            DiscountBanner(),
          ],
        ),
      ),
    );
  }
}
