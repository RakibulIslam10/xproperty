import 'package:flutter/material.dart';
import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';
import '../views/utils/size.dart';

class MessageBoxInquiryFormWidget extends StatelessWidget {
  const MessageBoxInquiryFormWidget(
      {super.key, required this.hintText, this.maxline, this.suffix});

  final String hintText;
  final int? maxline;
  final IconData? suffix;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextFormField(
          maxLines: 5,
          decoration: InputDecoration(
              suffixIcon: Icon(suffix),
              contentPadding: EdgeInsets.symmetric(
                  horizontal: Dimensions.marginSizeHorizontal,
                  vertical: Dimensions.marginSizeVertical * 0.5),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: CustomColor.primaryLightColor,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(Dimensions.radius * 1.2),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: CustomColor.primaryLightColor,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(Dimensions.radius * 1.2),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: CustomColor.primaryLightColor,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(Dimensions.radius * 1.2),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: CustomColor.primaryLightColor,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(Dimensions.radius * 1.2),
              ),
              hintText: hintText,
              hintStyle:
                  const TextStyle(color: CustomColor.secondaryLightColor)),
        ),
      ],
    );
  }
}
