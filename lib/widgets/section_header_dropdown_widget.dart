import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xproperty/views/utils/size.dart';
import 'package:xproperty/widgets/common/text_lebels/title_heading3_widget.dart';
import '../controller/add_property/section_header_dropdown.dart';
import '../custom_assets/assets.gen.dart';
import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';
import 'common/others/custom_image_widget.dart';

class PriceSectionHeaderDropDownWidget extends StatelessWidget {
  PriceSectionHeaderDropDownWidget({
    super.key,
    required this.title,
  });

  final priceController = Get.put(PriceController());
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainSpaceBet,
      children: [
        TitleHeading3Widget(
          text: title,
        ),
        Obx(
          () => DropdownButton<String>(
            icon: CustomImageWidget(
              path: Assets.icons.dropdown,
              height: Dimensions.heightSize * 0.35,
            ),
            dropdownColor: CustomColor.whiteColor,
            underline: Container(),
            value: priceController.selectedCurrency.value,
            items: <String>['USD', 'BDT'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: EdgeInsets.only(
                      right: Dimensions.marginSizeHorizontal * 0.3),
                  child: Text(
                    value,
                    style: TextStyle(
                        color: CustomColor.primaryLightColor,
                        fontSize: Dimensions.headingTextSize5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }).toList(),
            onChanged: priceController.changeCurrency,
          ),
        )
      ],
    );
  }
}
