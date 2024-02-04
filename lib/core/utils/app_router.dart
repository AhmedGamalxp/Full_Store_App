import 'package:full_store_app/core/middleware/mymiddleware.dart';
import 'package:full_store_app/views/auth_views/forget_password_view.dart';
import 'package:full_store_app/views/auth_views/login_view.dart';
import 'package:full_store_app/views/auth_views/otp_view.dart';
import 'package:full_store_app/views/auth_views/reset_pass_otp_view.dart';
import 'package:full_store_app/views/auth_views/reset_password_view.dart';
import 'package:full_store_app/views/auth_views/signup_view.dart';
import 'package:full_store_app/views/auth_views/success_view.dart';
import 'package:full_store_app/views/favorite_views/favorite_view.dart';
import 'package:full_store_app/views/home_views/home_view.dart';
import 'package:full_store_app/views/main_view.dart';
import 'package:full_store_app/views/items_view/items_view.dart';
import 'package:full_store_app/views/language_view/language_view.dart';
import 'package:full_store_app/views/product_detailes/product_detailes_view.dart';
import 'package:full_store_app/views/profile_view/profile_view.dart';
import 'package:full_store_app/views/splash_view/splash_view.dart';
import 'package:get/get.dart';

class AppRoute {
  static const String splashView = "/splashView";
  static const String loginView = "/loginView";
  static const String signUp = "/signUp";
  static const String languageView = "/languageView";
  static const String forgetPassView = "/forgetPassView";
  static const String otpView = "/otpView";
  static const String forgetPassotpView = "/forgetPassotpView";
  static const String resetPassword = "/resetPassword";
  static const String successView = "/successView";
  static const String homeView = "/homeView";
  static const String mainView = "/mainView";
  static const String itemsView = "/itemsView";
  static const String productDetailesView = "/ProductDetailesView";
  static const String favoriteView = "/FavoriteView";
  static const String profileView = "/ProfileView";
  static const String myTest = "/mytest";
}

List<GetPage<dynamic>> myRoutes = [
  // GetPage(name: '/', page: () => const MyTest()),
  GetPage(
    name: '/',
    page: () => const LanguageView(),
    middlewares: [MyMiddlewalre()],
  ),
  GetPage(name: AppRoute.splashView, page: () => const SplashView()),
  GetPage(name: AppRoute.loginView, page: () => const LoginView()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassView, page: () => const ForgetPassView()),
  GetPage(name: AppRoute.otpView, page: () => const OtpView()),
  GetPage(
      name: AppRoute.forgetPassotpView, page: () => const ResetPassOtpView()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successView, page: () => const SuccessView()),
  GetPage(name: AppRoute.homeView, page: () => const HomeView()),
  GetPage(name: AppRoute.mainView, page: () => const MainView()),
  GetPage(name: AppRoute.itemsView, page: () => const ItemsView()),
  GetPage(name: AppRoute.favoriteView, page: () => const FavoriteView()),
  GetPage(name: AppRoute.profileView, page: () => const ProfileView()),
  GetPage(
      name: AppRoute.productDetailesView,
      page: () => const ProductDetailesView()),
];
