import 'package:flutter/material.dart';
import 'package:full_store_app/core/utils/app_styles.dart';
import 'package:full_store_app/views/cart_view/widgets/bottom_bar.dart';
import 'package:full_store_app/views/cart_view/widgets/cart_listview.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Cart',
              style: AppStyles.styleSemiBold18,
            ),
            Text(
              '   (4 Item)',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
      body: const CartListView(),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: const BottonBar(),
      ),
    );
  }
}
