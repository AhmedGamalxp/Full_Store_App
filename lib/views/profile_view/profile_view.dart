import 'package:flutter/material.dart';
import 'package:full_store_app/views/profile_view/widgets/profile_list.dart';
import 'package:full_store_app/views/profile_view/widgets/user_info.dart';

import 'widgets/profile_picture.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: const Text('Profile'),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfilePicture(),
          UserInfo(),
          ProfileList(),
        ],
      ),
      // bottomNavigationBar:  CustomBottmNavBar(onTabChange: (index){},),
    );
  }
}
