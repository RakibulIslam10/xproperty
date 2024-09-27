import 'package:flutter/material.dart';
import '../../../views/utils/custom_color.dart';
import '../../../views/utils/dimensions.dart';

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
      height: Dimensions.heightSize * 2,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize * 0.5),
          side: const BorderSide(color: CustomColor.primaryLightColor),
          foregroundColor: CustomColor.primaryLightColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius * 2),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: Dimensions.headingTextSize5,fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
