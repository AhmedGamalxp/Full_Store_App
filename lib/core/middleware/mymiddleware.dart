import 'package:flutter/src/widgets/navigator.dart';
import 'package:full_store_app/core/utils/app_router.dart';
import 'package:full_store_app/services/services.dart';
import 'package:get/get.dart';

class MyMiddlewalre extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getBool('skipp splash') == true) {
      return const RouteSettings(name: AppRoute.loginView);
    }
    return super.redirect(route);
  }
}
