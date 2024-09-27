import 'package:flutter/material.dart';
import 'package:xproperty/views/utils/custom_color.dart';
import 'package:xproperty/views/utils/dimensions.dart';
import 'package:xproperty/widgets/common/text_lebels/title_heading3_widget.dart';

class RemoveFromNotificationDialog extends StatelessWidget {
  const RemoveFromNotificationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: CustomColor.whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius)),
        title: TitleHeading3Widget(
          text: "Remove from Notification",
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.headingTextSize4,
          color: CustomColor.primaryLightColor,
        ));
  }
}
