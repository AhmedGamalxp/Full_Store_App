import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:full_store_app/core/constants.dart';
import 'package:full_store_app/core/utils/app_styles.dart';
import 'package:gap/gap.dart';

class ProfileListItem extends StatelessWidget {
  const ProfileListItem({
    super.key,
    required this.title,
    required this.iconPass,
    this.ontap,
    this.leading =
        const Icon(Icons.arrow_forward_ios_rounded, color: kTextColor),
  });
  final String title;
  final String iconPass;
  final Widget leading;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: ontap,
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kSecondaryColor.withOpacity(0.1),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SvgPicture.asset(
                    iconPass,
                    color: kPrimeryColor,
                    width: 25,
                    height: 25,
                  ),
                ),
                Text(
                  title,
                  style: AppStyles.styleSemiBold18.copyWith(color: kTextColor),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: leading,
                ),
              ],
            ),
          ),
        ),
        const Gap(16),
      ],
    );
  }
}
