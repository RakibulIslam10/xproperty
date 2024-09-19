import 'package:flutter/material.dart';

import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius * 2),
      ),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 2),
              borderSide: const BorderSide(
                  color: CustomColor.primaryLightColor, width: 2)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 2),
              borderSide: const BorderSide(
                  color: CustomColor.primaryLightColor, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 2),
              borderSide: const BorderSide(
                  color: CustomColor.primaryLightColor, width: 2)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 2),
              borderSide: const BorderSide(
                  color: CustomColor.primaryLightColor, width: 2)),
          hintText: hintText,
          hintStyle: TextStyle(
            color: CustomColor.greyColor,
            fontSize: Dimensions.headingTextSize3,
          ),
        ),
      ),
    );
  }
}
