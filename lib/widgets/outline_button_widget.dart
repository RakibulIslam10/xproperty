import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/filters_screen/button_color_controlller.dart';
import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';

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
      () => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.marginSizeHorizontal * 0.2),
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.marginSizeHorizontal * 0.8),
            backgroundColor: _controller.selectedIndex.value == index
                ? CustomColor.primaryLightColor
                : CustomColor.whiteColor,
            foregroundColor: _controller.selectedIndex.value == index
                ? CustomColor.whiteColor
                : CustomColor.primaryLightColor,
            side: BorderSide(
                color: CustomColor.primaryLightColor,
                width: Dimensions.widthSize * 0.22),
          ),
          child: Text(

            title,
            style: TextStyle(fontSize: Dimensions.headingTextSize5),
          ),
        ),
      ),
    );
  }
}
