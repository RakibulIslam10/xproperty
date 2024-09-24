import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../views/utils/custom_color.dart';
import '../../../views/utils/custom_style.dart';
import '../../../views/utils/dimensions.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.borderColor,
    this.borderWidth = 0,
    this.height,
    this.radius,
    this.buttonColor,
    this.buttonTextColor,
    this.shape,
    this.icon,
    this.fontSize,
    this.isExpanded = false,
    this.flex = 1,
    this.fontWeight,
    this.elevation,
    this.isLoading = false,
  });

  final String title;
  final VoidCallback onPressed;
  final Color? borderColor;
  final double borderWidth;
  final double? height;
  final double? radius;
  final double? elevation;
  final int flex;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final OutlinedBorder? shape;
  final Widget? icon;
  final bool isExpanded;
  final bool isLoading;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return isExpanded
        ? Expanded(
            flex: flex,
            child: _buildButton(context),
          )
        : _buildButton(context);
  }

   _buildButton(BuildContext context) {
    return SizedBox(
      height:  Dimensions.heightSize *4,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: elevation,
            shape: shape ??
                RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(radius ?? Dimensions.radius * 0.7)),
            backgroundColor: buttonColor ?? Theme.of(context).primaryColor,
            side: BorderSide(
              width: borderWidth,
              color: borderColor ?? Theme.of(context).primaryColor,
            ),
          ),
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomStyle.darkHeading3TextStyle.copyWith(
              fontSize: fontSize,
              fontWeight: fontWeight ?? FontWeight.w600,
              color: buttonTextColor ??
                  ( CustomColor.primaryDarkTextColor),
            ),
          )),
    );
  }
}
