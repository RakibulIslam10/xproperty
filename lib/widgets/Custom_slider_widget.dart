import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/filters_screen/slider_controller.dart';
import '../views/utils/custom_color.dart';

class CustomSliderWidget extends StatelessWidget {
  const CustomSliderWidget({super.key, required this.controller});

  final SliderController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Slider(
        activeColor: CustomColor.primaryLightColor,
        value: controller.sliderValue,
        onChanged: (value) {
          controller.sliderValue = value;
        },
        min: 100.0,
        max: 10000.0,
        divisions: 9,
      ),
    );
  }
}
