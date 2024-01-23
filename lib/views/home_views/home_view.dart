import 'package:flutter/material.dart';
import 'package:full_store_app/core/utils/app_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'HomePage',
          style: AppStyles.styleBold36,
        ),
      ),
    );
  }
}
