import 'package:flutter/material.dart';
import 'package:full_store_app/core/constants.dart';
import 'package:full_store_app/core/utils/app_assets.dart';
import 'package:full_store_app/views/profile_view/widgets/profile_list_item.dart';

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
            iconPass: Assets.iconsUserIcon,
            ontap: () {},
          ),
          ProfileListItem(
            title: 'Notifications',
            iconPass: Assets.iconsBell,
            leading: Switch(
              activeColor: kPrimeryColor,
              value: true,
              onChanged: (value) {},
            ),
            ontap: () {},
          ),
          ProfileListItem(
            title: 'Settings',
            iconPass: Assets.iconsSettings,
            ontap: () {},
          ),
          ProfileListItem(
            title: 'Log Out',
            iconPass: Assets.iconsLogoutSvgrepoCom,
            ontap: () async {
              // await FirebaseAuth.instance.signOut();
              // GoogleSignIn googleSignIn = GoogleSignIn();
              // googleSignIn.disconnect();
              // await FacebookAuth.instance.logOut();
              // context.go(AppRouter.kSignIn);
            },
          ),
        ],
      ),
    );
  }
}
