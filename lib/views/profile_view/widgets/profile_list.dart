import 'package:flutter/material.dart';
import 'package:full_store_app/core/constants.dart';
import 'package:full_store_app/core/utils/app_assets.dart';
import 'package:full_store_app/core/utils/app_router.dart';
import 'package:full_store_app/views/profile_view/widgets/profile_list_item.dart';
import 'package:get/get.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ProfileListItem(
            title: 'My Account',
            svgIcon: Assets.iconsUserIcon,
            ontap: () {},
          ),
          ProfileListItem(
            title: 'My Adresses',
            icon: Icons.location_on_outlined,
            ontap: () {
              Get.toNamed(AppRoute.addressView);
            },
          ),
          ProfileListItem(
            title: 'Notifications',
            svgIcon: Assets.iconsBell,
            leading: Switch(
              activeColor: kPrimeryColor,
              value: true,
              onChanged: (value) {},
            ),
            ontap: () {},
          ),
          ProfileListItem(
            title: 'Settings',
            svgIcon: Assets.iconsSettings,
            ontap: () {},
          ),
          ProfileListItem(
            title: 'Log Out',
            svgIcon: Assets.iconsLogoutSvgrepoCom,
            ontap: () async {},
          ),
        ],
      ),
    );
  }
}
