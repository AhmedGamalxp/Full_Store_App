import 'package:flutter/material.dart';
import 'package:full_store_app/core/functions/eixt_app_alert.dart';
import 'package:full_store_app/views/profile_view/widgets/profile_list.dart';
import 'package:full_store_app/views/profile_view/widgets/user_info.dart';

import 'widgets/profile_picture.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        exitAppAlert();
      },
      child: const Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfilePicture(),
            UserInfo(),
            ProfileList(),
          ],
        ),
      ),
    );
  }
}
