import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/filters_screen/button_color_controlller.dart';
import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';

class GardenFilterOutlineButtonWidget extends StatelessWidget {
  final int index;
  final Color? titleColor;
  final String title;
  final VoidCallback onPressed;

  GardenFilterOutlineButtonWidget({
    super.key,
    required this.index,
    required this.onPressed,
    required this.title,
    this.titleColor,
  });

  final _controller = Get.put(ButtonColorController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: _controller.selectedIndex2.value == index
              ? CustomColor.primaryLightColor
              : CustomColor.whiteColor,
          foregroundColor: _controller.selectedIndex2.value == index
              ? CustomColor.whiteColor
              : CustomColor.primaryLightColor,
          side: const BorderSide(
            color: CustomColor.primaryLightColor,
            width: 3,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: Dimensions.headingTextSize5),
        ),
      ),
    );
  }
}
