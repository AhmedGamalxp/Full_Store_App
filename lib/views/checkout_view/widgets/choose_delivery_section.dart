import 'package:flutter/widgets.dart';
import 'package:full_store_app/controllers/checkout_controller.dart';
import 'package:full_store_app/core/utils/app_assets.dart';
import 'package:full_store_app/views/checkout_view/widgets/choose_delivery_item.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ChooseDeliverySection extends StatelessWidget {
  const ChooseDeliverySection({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<CheckOutController>();
    return GetBuilder<CheckOutController>(
      builder: (controller) {
        return Row(
          children: [
            ChooseDeliveryItem(
              onTap: () {
                controller.chooseDeliveryType('0');
              },
              image: Assets.images006Delivery,
              active: controller.deliveryType == '0' ? true : false,
              title: 'Delivery',
            ),
            const Gap(10),
            ChooseDeliveryItem(
              onTap: () {
                controller.chooseDeliveryType('1');
              },
              image: Assets.imagesDrivethru,
              active: controller.deliveryType == '1' ? true : false,
              title: 'Drive throw',
            ),
          ],
        );
      },
    );
  }
}
