import 'package:full_store_app/core/middleware/mymiddleware.dart';
import 'package:full_store_app/views/auth_views/forget_password_view.dart';
import 'package:full_store_app/views/auth_views/login_view.dart';
import 'package:full_store_app/views/auth_views/otp_view.dart';
import 'package:full_store_app/views/auth_views/reset_pass_otp_view.dart';
import 'package:full_store_app/views/auth_views/reset_password_view.dart';
import 'package:full_store_app/views/auth_views/signup_view.dart';
import 'package:full_store_app/views/auth_views/success_view.dart';
import 'package:full_store_app/views/home_views/home_view.dart';
import 'package:full_store_app/views/language_view/language_view.dart';
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
  static const String myTest = "/mytest";
}

List<GetPage<dynamic>> myRoutes = [
  // GetPage(name: '/', page: () => const MyTest()),
  GetPage(
      name: '/',
      page: () => const LanguageView(),
      middlewares: [MyMiddlewalre()]),
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
];
