import 'package:flutter/material.dart';
import 'package:full_store_app/core/utils/app_assets.dart';
import 'package:full_store_app/data/models/splash_model.dart';
import 'package:get/get.dart';

List<SplashModel> splashList = [
  SplashModel(
    image: Assets.imagesSplash_1,
    title: '2'.tr,
    describtion: '3'.tr,
  ),
  SplashModel(
    image: Assets.imagesSplash_2,
    title: '4'.tr,
    describtion: '5'.tr,
  ),
  SplashModel(
    image: Assets.imagesSplash_3,
    title: '6'.tr,
    describtion: '7'.tr,
  ),
];
const Color kPrimeryColor = Color(0xffF83758);
