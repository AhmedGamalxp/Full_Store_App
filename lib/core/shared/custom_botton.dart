import 'package:flutter/material.dart';
import 'package:full_store_app/core/constants.dart';
import 'package:full_store_app/core/utils/app_styles.dart';

class CustomBottn extends StatelessWidget {
  const CustomBottn({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: MaterialButton(
          color: kPrimeryColor,
          onPressed: onTap,
          child: Text(
            text,
            style: AppStyles.styleSemiBold20,
          )),
    );
  }
}
