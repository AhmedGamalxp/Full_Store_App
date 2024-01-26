import 'package:full_store_app/core/functions/custom_dialog.dart';
import 'package:full_store_app/core/utils/request_state.dart';
import 'package:full_store_app/data/models/category_model/category_model.dart';
import 'package:full_store_app/data/models/items_model/item.dart';
import 'package:full_store_app/data/repos/home_repo.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeRepo homeRepo = Get.put(HomeRepo());
  RequestState? requestState;
  List<CategoryModel> categories = [];
  List<ItemModel> specialOfferItems = [];

  List<ItemModel> items = [];
  late String requestError;
  getAllData() async {
    requestState = RequestState.loading;
    update();
    var resulte = await homeRepo.getAllData();

    resulte.fold((failure) {
      requestError = failure.erorrMassage;
      requestState = RequestState.failure;
      customDialog(title: 'Error', body: failure.erorrMassage);
    }, (data) {
      for (var item in data['categories']) {
        categories.add(CategoryModel.fromJson(item));
      }
      for (var item in data['items']) {
        items.add(ItemModel.fromJson(item));
      }
      for (var item in items) {
        if (item.itemsDiscount != 0) {
          specialOfferItems.add(item);
        }
      }
      requestState = RequestState.success;
    });
    update();
  }

  @override
  void onInit() {
    getAllData();
    super.onInit();
  }
}
