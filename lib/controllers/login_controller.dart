import 'package:flutter/material.dart';
import 'package:full_store_app/core/functions/custom_dialog.dart';
import 'package:full_store_app/core/utils/app_router.dart';
import 'package:full_store_app/core/utils/request_state.dart';
import 'package:full_store_app/data/repos/auth_repos/login_repo.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginRepo loginRepo = Get.put(LoginRepo());
  GlobalKey<FormState> loginformKey = GlobalKey<FormState>();
  bool isScure = false;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  RequestState? requestState;
  late String requestError;

  login() async {
    if (loginformKey.currentState!.validate()) {
      loginformKey.currentState!.save();
      requestState = RequestState.loading;
      update();
      var resulte = await loginRepo.login(
        email: emailController.text,
        password: passwordController.text,
      );

      resulte.fold((failure) {
        requestError = failure.erorrMassage;
        requestState = RequestState.failure;
        customDialog(title: 'Error', body: failure.erorrMassage);
      }, (status) {
        if (status == 1) {
          requestState = RequestState.success;
          Get.offAllNamed(AppRoute.homeView);
        } else {
          requestState = RequestState.failure;
          customDialog(title: 'Error', body: 'Unexpected error');
        }
      });
      update();
    }
  }

  chanePassVisibility() {
    isScure = !isScure;
    update();
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
