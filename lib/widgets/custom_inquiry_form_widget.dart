import 'package:flutter/material.dart';
import 'package:xpropertyapp/views/utils/custom_color.dart';
import 'package:xpropertyapp/views/utils/dimensions.dart';
import 'package:xpropertyapp/views/utils/size.dart';

class CustomInquiryFormWidget extends StatelessWidget {
  const CustomInquiryFormWidget(
      {super.key, required this.hintText, this.maxline, this.suffix});

  final String hintText;
  final int? maxline;
  final IconData? suffix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.marginSizeVertical * 0.25,
      ),
      child: TextFormField(
        maxLines: maxline,
        decoration: InputDecoration(
            suffixIcon: Icon(suffix),
            contentPadding: EdgeInsets.symmetric(
                horizontal: Dimensions.marginSizeHorizontal),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: CustomColor.primaryLightColor,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(Dimensions.radius * 4),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: CustomColor.primaryLightColor,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(Dimensions.radius * 4),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: CustomColor.primaryLightColor,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(Dimensions.radius * 4),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: CustomColor.primaryLightColor,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(Dimensions.radius * 4),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color: CustomColor.secondaryLightColor)),
      ),
    );
  }
}
