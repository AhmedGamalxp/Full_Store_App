import 'package:flutter/material.dart';
import 'package:full_store_app/core/constants.dart';
import 'package:full_store_app/core/utils/app_assets.dart';
import 'package:full_store_app/views/home_views/widgets/icon_bottn_with_counter.dart';
import 'package:badges/badges.dart' as badges;

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    int badgeContent = 1;
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
        top: 40,
      ),
      color: Colors.white.withOpacity(0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              color: const Color(0xffF2F5F1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              onChanged: (value) {},
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: const InputDecoration(
                hintText: 'Search product',
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 13,
                ),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          badgeContent == 0
              ? IconBWithCounter(
                  svgPicture: Assets.iconsCart,
                  onTap: () {},
                )
              : badges.Badge(
                  position: badges.BadgePosition.topEnd(top: -5, end: -3),
                  badgeStyle:
                      const badges.BadgeStyle(badgeColor: kPrimeryColor),
                  badgeAnimation: const badges.BadgeAnimation.scale(
                    animationDuration: Duration(seconds: 1),
                  ),
                  badgeContent: Text(
                    badgeContent.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  child: IconBWithCounter(
                    svgPicture: Assets.iconsCart,
                    onTap: () {},
                  ),
                ),
          IconBWithCounter(
            svgPicture: Assets.iconsBell,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
