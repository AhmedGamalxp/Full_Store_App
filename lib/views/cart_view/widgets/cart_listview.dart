import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:full_store_app/core/app_links.dart';
import 'package:full_store_app/data/models/items_model/item.dart';
import 'package:full_store_app/views/cart_view/widgets/cart_listview_item.dart';
import 'package:gap/gap.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 20),
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => Dismissible(
        onDismissed: (direction) {},
        key: UniqueKey(),
        direction: DismissDirection.endToStart,
        background: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffffe6e6),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                const Spacer(),
                SvgPicture.asset(
                  'assets/icons/Trash.svg',
                  width: 20,
                ),
                const Gap(20),
              ],
            ),
          ),
        ),
        child: CartListViewItem(
          product: ItemModel(
              itemsImage: 'laptop.png', itemsPrice: 300, itemsName: 'car'),
          numberOfProduct: 4,
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemCount: 4,
    );
  }
}
