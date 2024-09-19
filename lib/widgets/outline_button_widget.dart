import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpropertyapp/views/utils/custom_color.dart';
import 'package:xpropertyapp/views/utils/dimensions.dart';

import '../controller/filters_screen/button_color_controlller.dart';

class OutlineButtonWidget extends StatelessWidget {
  final int index;
  final Color? titleColor;
  final String title;
  final VoidCallback onPressed;

  OutlineButtonWidget({
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
          backgroundColor: _controller.selectedIndex.value == index
              ? CustomColor.primaryLightColor
              : CustomColor.whiteColor,
          foregroundColor: _controller.selectedIndex.value == index
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
