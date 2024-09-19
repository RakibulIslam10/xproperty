import 'package:flutter/material.dart';

import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';
import 'common/text_lebels/title_heading2_widget.dart';

class CustomChipButtonWidget extends StatelessWidget {
  final String label;
  final Color labelColor;
  final Color backgroundColor;

  const CustomChipButtonWidget({
    required this.label,
    required this.labelColor,
    required this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Chip(
          side: const BorderSide(
            color: CustomColor.primaryLightColor,
            width: 2,
          ),
          label: TitleHeading2Widget(
            text: label,
            fontSize: Dimensions.headingTextSize5,
            color: labelColor,
          ),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius * 2),
          ),
        ),
      ],
    );
  }
}