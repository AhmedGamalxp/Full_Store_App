import 'package:flutter/material.dart';
import 'package:full_store_app/core/functions/custom_dialog.dart';
import 'package:full_store_app/core/utils/request_state.dart';
import 'package:full_store_app/data/models/category_model/category_model.dart';
import 'package:full_store_app/data/models/items_model/item.dart';
import 'package:full_store_app/data/repos/home_repo.dart';
import 'package:full_store_app/services/services.dart';
import 'package:get/get.dart';

class ItemsViewController extends GetxController {
  HomeRepo homeRepo = Get.put(HomeRepo());

  RequestState? requestState;
  List<ItemModel> items = [];
  late String requestError;
  List<CategoryModel> categoies = [];
  late int currentCat;
  late ScrollController categoriesScrollController;
  MyServices myServices = Get.find<MyServices>();
  List<ItemModel> categoryItems = [];

  changeCategory(int index) {
    if (currentCat != index) {
      categoryItems.clear();
      currentCat = index;
      update();
    }
  }

  getData(int categoryId) async {
    requestState = RequestState.loading;
    update();
    var resulte = await homeRepo
        .getAllData(myServices.sharedPreferences.getString("id") as String);

    resulte.fold((failure) {
      requestError = failure.erorrMassage;
      requestState = RequestState.failure;
      customDialog(title: 'Error', body: failure.erorrMassage);
    }, (data) {
      for (var item in data['items']) {
        items.add(ItemModel.fromJson(item));
      }
      for (var item in items) {
        if (item.categoriesId == categoryId) {
          categoryItems.clear();
          categoryItems.add(item);
        }
      }
      requestState = RequestState.success;
    });
    update();
  }

  inialData() {
    categoies = Get.arguments["categories"];
    currentCat = Get.arguments["currentcat"];
  }

  @override
  void onInit() {
    inialData();
    getData(categoies[currentCat].categoriesId as int);
    categoriesScrollController =
        ScrollController(initialScrollOffset: 50 * currentCat.toDouble());
    super.onInit();
  }
}
