import 'package:flutter/material.dart';
import 'package:full_store_app/core/shared/rounded_btn.dart';

class ProductCount extends StatelessWidget {
  const ProductCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedBTN(
          width: 30,
          height: 30,
          color: Colors.white,
          icon: Icons.add,
          ontap: () {},
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '${1}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        RoundedBTN(
          width: 30,
          height: 30,
          color: Colors.white,
          icon: Icons.remove,
          ontap: () {},
        ),
      ],
    );
  }
}
