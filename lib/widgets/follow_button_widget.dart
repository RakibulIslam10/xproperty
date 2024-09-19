import 'package:flutter/material.dart';
import 'package:xpropertyapp/views/utils/custom_color.dart';
import 'package:xpropertyapp/views/utils/dimensions.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.heightSize * 2.5,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: const BorderSide(color: CustomColor.primaryLightColor),
          foregroundColor: CustomColor.primaryLightColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius * 2),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.marginSizeHorizontal,
              vertical: Dimensions.marginSizeVertical * 0.4),
        ),
        child: Text(
          '$text',
          style: TextStyle(fontSize: Dimensions.headingTextSize6),
        ),
      ),
    );
  }
}
