import 'package:full_store_app/data/models/items_model/item.dart';
import 'package:get/get.dart';

class ProductDetailesController extends GetxController {
  late ItemModel product;
  bool seeMore = false;
  seeMoreDetailes() {
    seeMore = !seeMore;
    update();
  }

  inialData() {
    product = Get.arguments["item"];
  }

  @override
  void onInit() {
    inialData();

    super.onInit();
  }
}
