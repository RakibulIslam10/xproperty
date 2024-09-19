import 'package:flutter/material.dart';
import 'package:xpropertyapp/views/utils/custom_color.dart';
import 'package:xpropertyapp/views/utils/dimensions.dart';

class CustomSearchField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const CustomSearchField({
    Key? key,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: Dimensions.heightSize * 0.6),
        hintStyle:
            TextStyle(color: CustomColor.secondaryLightColor.withOpacity(0.65)),
        hintText: hintText,
        suffixIcon: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Dimensions.marginSizeHorizontal),
          child: suffixIcon,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.marginSizeHorizontal * 0.5, vertical: 5),
          child: prefixIcon,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            width: 1.5,
            color: CustomColor
                .primaryLightColor, // Customize border color if needed
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            width: 1.5,
            color: CustomColor
                .primaryLightColor, // Customize focused border color if needed
          ),
        ),
      ),
    );
  }
}
