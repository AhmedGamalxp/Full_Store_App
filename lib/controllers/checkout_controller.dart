import 'package:full_store_app/core/functions/custom_dialog.dart';
import 'package:full_store_app/core/utils/app_router.dart';
import 'package:full_store_app/core/utils/request_state.dart';
import 'package:full_store_app/data/models/address_model/address_model.dart';
import 'package:full_store_app/data/repos/address_repo.dart';
import 'package:full_store_app/data/repos/chechout_repo.dart';
import 'package:full_store_app/services/services.dart';
import 'package:get/get.dart';

class CheckOutController extends GetxController {
  String? paymentMethod;
  String? deliveryType;
  String? addressId = '0';
  late String couponId;
  late String couponDiscount;
  late String orderPrice;

  AddressRepo addressRepo = Get.put(AddressRepo());
  CheckOutRepo checkOutRepo = Get.put(CheckOutRepo());
  RequestState? requestState;
  late String requestError;
  MyServices myServices = Get.find();
  List<AddressModel> addressList = [];

  choosePaymentMethod(String value) {
    paymentMethod = value;
    update();
  }

  chooseDeliveryType(String value) {
    deliveryType = value;
    update();
  }

  chooseshippingAddress(String value) {
    addressId = value;
    update();
  }

  chechOut() async {
    if (paymentMethod == null) {
      return customDialog(title: 'Alert', body: 'Please choose payment method');
    }
    if (deliveryType == null) {
      return customDialog(title: 'Alert', body: 'Please choose delivery type ');
    }
    requestState = RequestState.loading;
    update();
    var resulte = await checkOutRepo.checkOut(
      userId: myServices.sharedPreferences.getString("id") as String,
      addressId: addressId as String,
      deliveryType: deliveryType as String,
      deliveryPrice: '10',
      paymentMethod: paymentMethod as String,
      orderPrice: orderPrice,
      couponId: couponId,
      couponDiscount: couponDiscount,
    );
    resulte.fold((failure) {
      requestError = failure.erorrMassage;
      requestState = RequestState.failure;
      print(requestError);
      customDialog(title: 'Error', body: failure.erorrMassage);
    }, (data) {
      Get.offNamed(AppRoute.mainView);
      customDialog(title: 'Success', body: 'Check Out Done');
      requestState = RequestState.success;
    });
    update();
  }

  viewAddress() async {
    addressList = [];
    requestState = RequestState.loading;
    update();
    var resulte = await addressRepo.view(
      userId: myServices.sharedPreferences.getString("id") as String,
    );

    resulte.fold((failure) {
      requestError = failure.erorrMassage;
      requestState = RequestState.failure;
      customDialog(title: 'Error', body: failure.erorrMassage);
    }, (data) {
      for (var item in data['data']) {
        addressList.add(AddressModel.fromJson(item));
      }
      requestState = RequestState.success;
    });
    update();
  }

  @override
  void onInit() {
    viewAddress();
    couponId = Get.arguments["couponid"];
    couponDiscount = Get.arguments["coupondiscount"];
    orderPrice = Get.arguments["orderprice"];
    super.onInit();
  }
}
