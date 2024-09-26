import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/filters_screen/number_selection_controller.dart';
import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';
import 'common/text_lebels/title_heading2_widget.dart';

class BedNumberedContainer extends StatelessWidget {
  BedNumberedContainer({
    super.key,
  });

  final controller = Get.put(BedNumberSelectionController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.paddingSize * 0.2),
      child: Container(
        width: double.infinity,
        height: Dimensions.heightSize * 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius * 2),
          color: CustomColor.secondaryLightColor,
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.marginSizeHorizontal),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: controller.numbers.map((number) {
                  final isSelected = controller.selectedIndex.value ==
                      controller.numbers.indexOf(number);
                  return GestureDetector(
                    onTap: () => controller
                        .selectNumber(controller.numbers.indexOf(number)),
                    child: Container(
                      width: Dimensions.widthSize * 5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isSelected
                            ? CustomColor.primaryLightColor
                            : CustomColor.secondaryLightColor,
                      ),
                      child: TitleHeading2Widget(
                        text: number,
                        color: isSelected
                            ? CustomColor.whiteColor
                            : CustomColor.primaryDarkColor,
                      ),
                    ),
                  );
                }).toList(),
              ),
            )),
      ),
    );
  }
}
